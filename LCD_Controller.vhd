library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity LCD_Controller is
    Port (
        CLK        : in  STD_LOGIC; -- ¡NUEVO! Recibe el reloj del Top
        RESET_N    : in  STD_LOGIC; -- Agregamos Reset por seguridad
        
        Line1_Data : in STD_LOGIC_VECTOR(127 downto 0); 
        Line2_Data : in STD_LOGIC_VECTOR(127 downto 0);
        
        LCD_RS    : out STD_LOGIC;
        LCD_RW    : out STD_LOGIC;
        LCD_E     : out STD_LOGIC;
        LCD_DATA  : out STD_LOGIC_VECTOR (7 downto 0);
        LCD_ON    : out STD_LOGIC
    );
end LCD_Controller;

architecture Behavioral of LCD_Controller is
    
    -- Tiempos para 2.08 MHz
    constant T_50MS   : integer := 105000;
    constant T_CMD    : integer := 3500; 
    constant T_US     : integer := 100;  
    constant T_PULSE  : integer := 50;   

    type state_type is (
        POWER_UP, INIT_FS, INIT_DC, INIT_CL, INIT_EM, 
        SET_LINE1, WRITE_L1, 
        SET_LINE2, WRITE_L2
    );
    signal state : state_type := POWER_UP;
    signal timer : integer range 0 to 200000 := 0;
    
    signal char_index : integer range 0 to 15 := 0;
    signal current_char : std_logic_vector(7 downto 0);

    signal lcd_rs_int : std_logic := '0';
    signal lcd_e_int  : std_logic := '0';
    signal lcd_db_int : std_logic_vector(7 downto 0) := x"00";

begin

    LCD_RW   <= '0'; 
    LCD_RS   <= lcd_rs_int;
    LCD_E    <= lcd_e_int;
    LCD_DATA <= lcd_db_int;

    process(CLK, RESET_N)
    begin
        if RESET_N = '0' then
            state <= POWER_UP;
            timer <= 0;
            lcd_e_int <= '0';
            LCD_ON <= '0';
        elsif rising_edge(CLK) then
            case state is
                when POWER_UP =>
                    LCD_ON <= '0';
                    if timer < T_50MS then timer <= timer + 1;
                    else timer <= 0; state <= INIT_FS; end if;

                when INIT_FS => 
                    lcd_rs_int <= '0'; lcd_db_int <= x"38";
                    if timer < T_PULSE then lcd_e_int <= '1'; timer <= timer + 1;
                    elsif timer < T_US then lcd_e_int <= '0'; timer <= timer + 1;
                    else timer <= 0; state <= INIT_DC; end if;

                when INIT_DC => 
                    lcd_rs_int <= '0'; lcd_db_int <= x"0C";
                    if timer < T_PULSE then lcd_e_int <= '1'; timer <= timer + 1;
                    elsif timer < T_US then lcd_e_int <= '0'; timer <= timer + 1;
                    else timer <= 0; state <= INIT_CL; end if;

                when INIT_CL => 
                    lcd_rs_int <= '0'; lcd_db_int <= x"01";
                    if timer < T_PULSE then lcd_e_int <= '1'; timer <= timer + 1;
                    elsif timer < T_CMD then lcd_e_int <= '0'; timer <= timer + 1; 
                    else timer <= 0; state <= INIT_EM; end if;

                when INIT_EM => 
                    lcd_rs_int <= '0'; lcd_db_int <= x"06";
                    if timer < T_PULSE then lcd_e_int <= '1'; timer <= timer + 1;
                    elsif timer < T_US then lcd_e_int <= '0'; timer <= timer + 1;
                    else timer <= 0; state <= SET_LINE1; LCD_ON <= '1'; end if;

                when SET_LINE1 =>
                    lcd_rs_int <= '0'; lcd_db_int <= x"80";
                    char_index <= 0;
                    if timer < T_PULSE then lcd_e_int <= '1'; timer <= timer + 1;
                    elsif timer < T_US then lcd_e_int <= '0'; timer <= timer + 1;
                    else timer <= 0; state <= WRITE_L1; end if;

                when WRITE_L1 =>
                    lcd_rs_int <= '1'; 
                    current_char <= Line1_Data( (127 - (char_index*8)) downto (120 - (char_index*8)) );
                    lcd_db_int <= current_char;
                    
                    if timer < T_PULSE then lcd_e_int <= '1'; timer <= timer + 1;
                    elsif timer < T_US then lcd_e_int <= '0'; timer <= timer + 1;
                    else 
                        timer <= 0; 
                        if char_index < 15 then
                            char_index <= char_index + 1;
                        else
                            state <= SET_LINE2;
                        end if;
                    end if;

                when SET_LINE2 =>
                    lcd_rs_int <= '0'; lcd_db_int <= x"C0";
                    char_index <= 0;
                    if timer < T_PULSE then lcd_e_int <= '1'; timer <= timer + 1;
                    elsif timer < T_US then lcd_e_int <= '0'; timer <= timer + 1;
                    else timer <= 0; state <= WRITE_L2; end if;

                when WRITE_L2 =>
                    lcd_rs_int <= '1';
                    current_char <= Line2_Data( (127 - (char_index*8)) downto (120 - (char_index*8)) );
                    lcd_db_int <= current_char;
                    
                    if timer < T_PULSE then lcd_e_int <= '1'; timer <= timer + 1;
                    elsif timer < T_US then lcd_e_int <= '0'; timer <= timer + 1;
                    else 
                        timer <= 0; 
                        if char_index < 15 then
                            char_index <= char_index + 1;
                        else
                            state <= SET_LINE1; 
                        end if;
                    end if;
                    
                when others => state <= POWER_UP;
            end case;
        end if;
    end process;

end Behavioral;