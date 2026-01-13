library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Tragamonedas_Top is
    Port ( 
        RESET_N     : in  STD_LOGIC;
        SW_MODE     : in  STD_LOGIC; 
        BTN_SPIN    : in  STD_LOGIC; 
        
        ROWS_IN     : in  STD_LOGIC_VECTOR(3 downto 0);
        COLS_OUT    : out STD_LOGIC_VECTOR(3 downto 0);
   
        LCD_RS      : out STD_LOGIC;
        LCD_RW      : out STD_LOGIC;
        LCD_E       : out STD_LOGIC;
        LCD_DATA    : out STD_LOGIC_VECTOR(7 downto 0);
        
        LEDS        : out STD_LOGIC_VECTOR(4 downto 0)
    );
end Tragamonedas_Top;

architecture Behavioral of Tragamonedas_Top is

    -- COMPONENTES
    component OSCH Generic (NOM_FREQ: string);
        Port (STDBY: in std_logic; OSC: out std_logic; SEDSTDBY: out std_logic); 
    end component;

    component KeypadController 
        Port (CLK: in std_logic; ROWS: in std_logic_vector; COLS: out std_logic_vector; KEY_CODE: out std_logic_vector; KEY_VALID: out std_logic);
    end component;
    
    component LCD_Controller
        Port (
            CLK        : in  STD_LOGIC;
            RESET_N    : in  STD_LOGIC;
            Line1_Data : in STD_LOGIC_VECTOR(127 downto 0); 
            Line2_Data : in STD_LOGIC_VECTOR(127 downto 0);
            LCD_RS, LCD_RW, LCD_E : out STD_LOGIC;
            LCD_DATA : out STD_LOGIC_VECTOR(7 downto 0);
            LCD_ON : out STD_LOGIC
        );
    end component;

    component AdderSub16 
        port(Modo: in std_logic; OpA, OpB: in std_logic_vector(15 downto 0); Res: out std_logic_vector(15 downto 0); Cout, Ovf: out std_logic);
    end component;
    
    component Multiplier16 
        port(OpA, OpB: in std_logic_vector(15 downto 0); Res: out std_logic_vector(15 downto 0));
    end component;

    -- =========================================================
    -- CORRECCIÓN: Declaración actualizada para coincidir con MemoriaROM.vhd
    -- =========================================================
    component MemoriaROM
        port(
            Addr : in  integer range 0 to 255;
            Data : out std_logic_vector(7 downto 0)
        );
    end component;

    -- SEÑALES CLOCK
    signal sys_clk : std_logic;
    signal osc_div : unsigned(25 downto 0) := (others => '0'); 
    signal tick_anim : std_logic;
    signal tick_1s   : std_logic;
    signal blink_toggle : std_logic := '0';

    -- RODILLOS
    signal idx_r1, idx_r2, idx_r3 : integer range 0 to 8 := 0;
    -- Señales de salida de la ROM (Vectores de 8 bits)
    signal rom_out_r1, rom_out_r2, rom_out_r3 : std_logic_vector(7 downto 0);
    -- Valores enteros para la lógica
    signal val_r1, val_r2, val_r3 : integer range 0 to 15 := 0;

    -- FSM ESTADOS
    type FSM_State is (
        S_IDLE, 
        S_INPUT, 
        S_CALC_INIT, 
        S_SPINNING, 
        S_SPIN_ALL, 
        S_STOP_SEQ_1, S_STOP_SEQ_3, S_STOP_SEQ_2, 
        S_CHECK_WIN, 
        S_UPDATE_POZO, 
        S_BCD_INIT, S_BCD_1000, S_BCD_100, S_BCD_10,
        S_SHOW_RESULT
    );
    signal state : FSM_State := S_IDLE;

    -- VARIABLES JUEGO
    signal jackpot    : integer range 0 to 65535 := 1000; 
    signal apuesta    : integer range 0 to 9999 := 0;
    signal input_temp : integer range 0 to 9999 := 0; 
    
    -- DIGITOS VISUALES
    signal j_mil, j_cen, j_dec, j_uni : integer range 0 to 9 := 0;
    signal i_mil, i_cen, i_dec, i_uni : integer range 0 to 9 := 0;
    
    -- BUFFER DE CONVERSION
    signal bcd_val   : integer range 0 to 65535 := 0;
    
    -- TIMERS
    signal delay_r2_target : integer range 0 to 31 := 0;
    signal delay_timer     : integer range 0 to 31 := 0;
    signal r2_active       : boolean := false;
    signal stop_timer      : integer range 0 to 10 := 0;

    -- ALU
    signal alu_opA, alu_opB : std_logic_vector(15 downto 0) := (others => '0');
    signal alu_sum_res, alu_mult_res : std_logic_vector(15 downto 0);
    signal alu_mode : std_logic := '0';

    -- INPUTS
    signal key_code : std_logic_vector(3 downto 0);
    signal key_valid : std_logic;
    signal key_cooldown : integer range 0 to 2000000 := 0;

    -- LCD
    signal L1_Buffer : std_logic_vector(127 downto 0);
    signal L2_Buffer : std_logic_vector(127 downto 0);

    -- HELPER
    function I2A(val: integer) return std_logic_vector is
    begin
        if val >= 10 then return x"58"; -- 'X'
        else return std_logic_vector(to_unsigned(val + 48, 8)); end if;
    end function;
    
begin
    
    OSCInst0: OSCH generic map("2.08") port map('0', sys_clk, open);
    Inst_Key: KeypadController port map(sys_clk, ROWS_IN, COLS_OUT, key_code, key_valid);
    
    Inst_LCD: LCD_Controller port map(
        CLK => sys_clk, RESET_N => RESET_N,
        Line1_Data => L1_Buffer, Line2_Data => L2_Buffer,
        LCD_RS => LCD_RS, LCD_RW => LCD_RW, LCD_E => LCD_E, LCD_DATA => LCD_DATA, LCD_ON => LEDS(4)
    );

    CPU_ADDER: AdderSub16 port map (alu_mode, alu_opA, alu_opB, alu_sum_res, open, open);
    CPU_MULT: Multiplier16 port map (alu_opA, alu_opB, alu_mult_res);

    -- =========================================================
    -- INSTANCIAS DE ROM (Ahora coinciden con la declaración)
    -- =========================================================
    ROM_Instance_1: MemoriaROM port map(Addr => idx_r1, Data => rom_out_r1);
    ROM_Instance_2: MemoriaROM port map(Addr => 20 + idx_r2, Data => rom_out_r2);
    ROM_Instance_3: MemoriaROM port map(Addr => 40 + idx_r3, Data => rom_out_r3);

    -- Conversión a entero para usar en comparaciones
    val_r1 <= to_integer(unsigned(rom_out_r1));
    val_r2 <= to_integer(unsigned(rom_out_r2));
    val_r3 <= to_integer(unsigned(rom_out_r3));

    -- PROCESO DE TICKS
    process(sys_clk, RESET_N)
    begin
        if RESET_N = '0' then
            osc_div <= (others => '0');
            tick_1s <= '0'; tick_anim <= '0'; blink_toggle <= '0';
        elsif rising_edge(sys_clk) then
            osc_div <= osc_div + 1;
            if osc_div(18 downto 0) = 0 then tick_anim <= '1'; else tick_anim <= '0'; end if;
            if osc_div = 2080000 then 
                tick_1s <= '1'; osc_div <= (others => '0'); blink_toggle <= not blink_toggle;
            else tick_1s <= '0'; end if;
        end if;
    end process;

    -- FSM PRINCIPAL
    process(sys_clk, RESET_N)
        variable calc_temp : integer;
        variable d_dec, d_uni : integer;
        variable rnd_mult : integer;
    begin
        if RESET_N = '0' then
            state <= S_IDLE;
            jackpot <= 1000;
            j_mil<=1; j_cen<=0; j_dec<=0; j_uni<=0;
            idx_r1 <= 0; idx_r2 <= 0; idx_r3 <= 0;
            input_temp <= 0;
            i_mil<=0; i_cen<=0; i_dec<=0; i_uni<=0;
            
        elsif rising_edge(sys_clk) then
            
            if key_cooldown > 0 then key_cooldown <= key_cooldown - 1; end if;

            case state is
                -- 1. ESPERA
                when S_IDLE =>
                    if blink_toggle = '1' then
                        L1_Buffer <= x"202054524147414D4F4E454441532020"; 
                        L2_Buffer <= x"20202053554552544520212121202020"; 
                    else
                        L1_Buffer <= x"5055454445532047414E41523A202020"; 
                        L2_Buffer <= x"2420" & I2A(j_mil) & I2A(j_cen) & I2A(j_dec) & I2A(j_uni) & x"20202020202020202020";
                    end if;
                    
                    if SW_MODE = '1' then 
                        state <= S_INPUT; 
                        input_temp <= 0;
                        i_mil<=0; i_cen<=0; i_dec<=0; i_uni<=0; 
                    end if;

                -- 2. APUESTA (LOGICA CORREGIDA)
                when S_INPUT =>
                    L1_Buffer <= x"494E475245534120415055455354413A"; 
                    L2_Buffer <= x"3E20" & I2A(i_mil) & I2A(i_cen) & I2A(i_dec) & I2A(i_uni) & x"20202020202020202020";

                    if key_valid = '1' and key_cooldown = 0 then
                        key_cooldown <= 400000;
                        
                        if unsigned(key_code) <= 9 then
                            if input_temp < 1000 then 
                                input_temp <= (input_temp * 10) + to_integer(unsigned(key_code));
                                i_mil <= i_cen; i_cen <= i_dec; i_dec <= i_uni; i_uni <= to_integer(unsigned(key_code));
                            end if;
                        elsif key_code = x"C" then 
                            input_temp <= 0;
                            i_mil<=0; i_cen<=0; i_dec<=0; i_uni<=0;
                        elsif key_code = x"A" then 
                            if input_temp > 0 then 
                                apuesta <= input_temp; 
                                state <= S_CALC_INIT; 
                            end if;
                        end if;
                    end if;
                    
                    if SW_MODE = '0' then state <= S_IDLE; end if;

                -- 3. CALCULO RETARDO
                when S_CALC_INIT =>
                    calc_temp := (apuesta + 10) / 2;
                    d_dec := calc_temp / 10;
                    d_uni := calc_temp rem 10;
                    delay_r2_target <= d_dec + d_uni;
                    idx_r3 <= apuesta mod 9; 
                    delay_timer <= 0; r2_active <= false; state <= S_SPINNING;

                -- 4. GIRANDO (R1, R3)
                when S_SPINNING =>
                    L1_Buffer <= x"202020474952414E444F2E2E2E202020";
                    L2_Buffer <= x"205B20" & I2A(val_r1) & x"20" & I2A(val_r2) & x"20" & I2A(val_r3) & x"205D202020202020";
                    if tick_anim = '1' then
                        idx_r1 <= (idx_r1 + 1) mod 9; idx_r3 <= (idx_r3 + 1) mod 9;
                        if r2_active then idx_r2 <= (idx_r2 + 1) mod 9; end if;
                    end if;
                    if tick_1s = '1' then
                        if delay_timer < delay_r2_target then delay_timer <= delay_timer + 1;
                        else r2_active <= true; state <= S_SPIN_ALL; end if;
                    end if;

                -- 5. TODOS GIRAN
                when S_SPIN_ALL =>
                    L1_Buffer <= x"5052455353204120544F2053544F5021"; 
                    L2_Buffer <= x"205B20" & I2A(val_r1) & x"20" & I2A(val_r2) & x"20" & I2A(val_r3) & x"205D202020202020";
                    if tick_anim = '1' then
                        idx_r1 <= (idx_r1 + 1) mod 9; idx_r2 <= (idx_r2 + 1) mod 9; idx_r3 <= (idx_r3 + 1) mod 9;
                    end if;
                    if key_valid = '1' and key_code = x"A" and key_cooldown = 0 then state <= S_STOP_SEQ_1; stop_timer <= 0; end if;

                -- 6,7,8. SECUENCIA PARADA
                when S_STOP_SEQ_1 =>
                    L1_Buffer <= x"20444554454E49454E444F2E2E2E2020";
                    L2_Buffer <= x"205B20" & I2A(val_r1) & x"20" & I2A(val_r2) & x"20" & I2A(val_r3) & x"205D202020202020";
                    if tick_anim = '1' then idx_r1 <= (idx_r1+1) mod 9; idx_r2 <= (idx_r2+1) mod 9; idx_r3 <= (idx_r3+1) mod 9; end if;
                    if tick_1s = '1' then if stop_timer < 2 then stop_timer <= stop_timer+1; else state <= S_STOP_SEQ_3; stop_timer <= 0; end if; end if;

                when S_STOP_SEQ_3 =>
                    L1_Buffer <= x"20444554454E49454E444F2E2E2E2020"; 
                    L2_Buffer <= x"205B20" & I2A(val_r1) & x"20" & I2A(val_r2) & x"20" & I2A(val_r3) & x"205D202020202020";
                    if tick_anim = '1' then idx_r2 <= (idx_r2+1) mod 9; idx_r3 <= (idx_r3+1) mod 9; end if;
                    if tick_1s = '1' then if stop_timer < 2 then stop_timer <= stop_timer+1; else state <= S_STOP_SEQ_2; stop_timer <= 0; end if; end if;

                when S_STOP_SEQ_2 =>
                    L1_Buffer <= x"20444554454E49454E444F2E2E2E2020"; 
                    L2_Buffer <= x"205B20" & I2A(val_r1) & x"20" & I2A(val_r2) & x"20" & I2A(val_r3) & x"205D202020202020";
                    if tick_anim = '1' then idx_r2 <= (idx_r2+1) mod 9; end if;
                    if tick_1s = '1' then if stop_timer < 2 then stop_timer <= stop_timer+1; else state <= S_CHECK_WIN; end if; end if;

                -- 9. CHECK WIN
                when S_CHECK_WIN =>
                    if (val_r1 = val_r2 or val_r1 = 10 or val_r2 = 10) and 
                       (val_r2 = val_r3 or val_r2 = 10 or val_r3 = 10) and
                       (val_r1 = val_r3 or val_r1 = 10 or val_r3 = 10) then
                        rnd_mult := (to_integer(osc_div(3 downto 0)) mod 14) + 2; 
                        alu_opA <= std_logic_vector(to_unsigned(apuesta, 16));
                        alu_opB <= std_logic_vector(to_unsigned(rnd_mult, 16));
                        r2_active <= true; -- WIN
                    else
                        alu_opA <= std_logic_vector(to_unsigned(jackpot, 16));
                        alu_opB <= std_logic_vector(to_unsigned(apuesta, 16));
                        alu_mode <= '0'; 
                        r2_active <= false; -- LOSE
                    end if;
                    state <= S_UPDATE_POZO;

                -- 10. UPDATE POZO
                when S_UPDATE_POZO =>
                    if r2_active then -- Gano
                        calc_temp := 1000 + to_integer(unsigned(alu_mult_res));
                        input_temp <= calc_temp; 
                        jackpot <= 1000; 
                    else -- Perdio
                        jackpot <= to_integer(unsigned(alu_sum_res));
                        input_temp <= 0;
                    end if;
                    
                    if r2_active then bcd_val <= calc_temp; 
                    else bcd_val <= to_integer(unsigned(alu_sum_res)); 
                    end if;
                    state <= S_BCD_INIT;

                -- 11. BCD
                when S_BCD_INIT =>
                    if r2_active then i_mil<=0; i_cen<=0; i_dec<=0; i_uni<=0; 
                    else j_mil<=0; j_cen<=0; j_dec<=0; j_uni<=0; end if;
                    state <= S_BCD_1000;

                when S_BCD_1000 =>
                    if bcd_val >= 1000 then
                        bcd_val <= bcd_val - 1000;
                        if r2_active then i_mil <= i_mil + 1; else j_mil <= j_mil + 1; end if;
                    else state <= S_BCD_100; end if;

                when S_BCD_100 =>
                    if bcd_val >= 100 then
                        bcd_val <= bcd_val - 100;
                        if r2_active then i_cen <= i_cen + 1; else j_cen <= j_cen + 1; end if;
                    else state <= S_BCD_10; end if;

                when S_BCD_10 =>
                    if bcd_val >= 10 then
                        bcd_val <= bcd_val - 10;
                        if r2_active then i_dec <= i_dec + 1; else j_dec <= j_dec + 1; end if;
                    else
                        if r2_active then i_uni <= bcd_val; else j_uni <= bcd_val; end if;
                        state <= S_SHOW_RESULT;
                    end if;

                -- 12. RESULTADO
                when S_SHOW_RESULT =>
                    if r2_active then
                         L1_Buffer <= x"21212047414E41535445202121202020"; 
                         L2_Buffer <= x"5052454D494F3A20" & I2A(i_mil) & I2A(i_cen) & I2A(i_dec) & I2A(i_uni) & x"20202020";
                    else
                         L1_Buffer <= x"50455244495354452E2E202020202020"; 
                         L2_Buffer <= x"4E5545564F20504F5A4F3A" & I2A(j_mil) & I2A(j_cen) & I2A(j_dec) & I2A(j_uni) & x"20";
                    end if;
                    if key_valid = '1' and key_code = x"A" then state <= S_IDLE; apuesta <= 0; input_temp <= 0; end if;

                when others => state <= S_IDLE;
            end case;
        end if;
    end process;
end Behavioral;