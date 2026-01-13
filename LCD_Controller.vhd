-- ############################################################################
-- PROYECTO: Máquina Tragamonedas (Arquitectura de Computadoras)
-- MÓDULO:   LCD_Controller
-- ESTÁNDAR: VHDL-2008
-- DESCRIPCIÓN: Controlador de pantalla LCD alfanumérica (compatible con HD44780).
--              Gestiona la inicialización automática y la actualización 
--              constante de dos líneas de texto de 16 caracteres cada una.
--              Frecuencia de diseño: 2.08 MHz.
-- ############################################################################

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity LCD_Controller is
    Port (
        -- Entradas de Control de Sistema
        CLK        : in  STD_LOGIC; -- ¡NUEVO! Recibe el reloj maestro del sistema (2.08 MHz)
        RESET_N    : in  STD_LOGIC; -- Agregamos Reset asíncrono activo en bajo por seguridad
        -- Interfaz de Datos (16 caracteres x 8 bits = 128 bits por línea)
        Line1_Data : in STD_LOGIC_VECTOR(127 downto 0); 
        Line2_Data : in STD_LOGIC_VECTOR(127 downto 0);
        -- Puertos de Salida Físicos hacia el Módulo LCD
        LCD_RS    : out STD_LOGIC;
        LCD_RW    : out STD_LOGIC;
        LCD_E     : out STD_LOGIC;
        LCD_DATA  : out STD_LOGIC_VECTOR (7 downto 0);         -- Bus de datos bidireccional
        LCD_ON    : out STD_LOGIC                              -- Indicador de inicialización finalizada
    );
end LCD_Controller;

architecture Behavioral of LCD_Controller is
    -- =========================================================
    -- CONSTANTES TEMPORALES (Basadas en CLK = 2.08 MHz)
    -- Tiempos para 2.08 MHz
    -- =========================================================
    
    constant T_50MS   : integer := 105000;                    -- Retardo de estabilización inicial
    constant T_CMD    : integer := 3500;                      -- Tiempo de espera para comandos lentos
    constant T_US     : integer := 100;                       -- Tiempo de espera para operaciones estándar
    constant T_PULSE  : integer := 50;                        -- Ancho del pulso de la señal Enable
   
    -- Definición de la FSM de Control del LCD
    type state_type is (
        POWER_UP,   -- Espera inicial post-encendido
        INIT_FS,    -- Function Set: Configuración de bus y líneas
        INIT_DC,    -- Display Control: Encendido de pantalla y cursor
        INIT_CL,    -- Clear Display: Limpieza de memoria DDRAM
        INIT_EM,    -- Entry Mode: Configuración de dirección del cursor
        SET_LINE1,  -- Posicionamiento en el inicio de la Línea 1
        WRITE_L1,   -- Escritura secuencial de caracteres de la Línea 1
        SET_LINE2,  -- Posicionamiento en el inicio de la Línea 2
        WRITE_L2    -- Escritura secuencial de caracteres de la Línea 2
    );
    signal state : state_type := POWER_UP;
    signal timer : integer range 0 to 200000 := 0;                -- Contador de ciclos de reloj
    
    signal char_index : integer range 0 to 15 := 0;               -- Índice del carácter actual
    signal current_char : std_logic_vector(7 downto 0);           -- Carácter ASCII a enviar

    -- Señales internas de registro para evitar glitcheo
    signal lcd_rs_int : std_logic := '0';
    signal lcd_e_int  : std_logic := '0';
    signal lcd_db_int : std_logic_vector(7 downto 0) := x"00";

begin
    -- Asignaciones de la Interfaz de Salida
    LCD_RW   <= '0';                                         -- Operación de solo escritura habilitada permanentemente
    LCD_RS   <= lcd_rs_int;
    LCD_E    <= lcd_e_int;
    LCD_DATA <= lcd_db_int;

    -- =========================================================
    -- PROCESO PRINCIPAL: Control de Tiempos y Estados
    -- =========================================================
    process(CLK, RESET_N)
    begin
        if RESET_N = '0' then
            state <= POWER_UP;
            timer <= 0;
            lcd_e_int <= '0';
            LCD_ON <= '0';
        elsif rising_edge(CLK) then
            case state is
                -- Fase de estabilización eléctrica del módulo LCD
                when POWER_UP =>
                    LCD_ON <= '0';
                    if timer < T_50MS then timer <= timer + 1;
                    else timer <= 0; state <= INIT_FS; end if;
                -- Comando: Function Set (8 bits, 2 líneas, 5x8 puntos)
                when INIT_FS => 
                    lcd_rs_int <= '0'; lcd_db_int <= x"38";
                    if timer < T_PULSE then lcd_e_int <= '1'; timer <= timer + 1;
                    elsif timer < T_US then lcd_e_int <= '0'; timer <= timer + 1;
                    else timer <= 0; state <= INIT_DC; end if;
                -- Comando: Display ON/OFF Control (Display ON, Cursor OFF)
                when INIT_DC => 
                    lcd_rs_int <= '0'; lcd_db_int <= x"0C";
                    if timer < T_PULSE then lcd_e_int <= '1'; timer <= timer + 1;
                    elsif timer < T_US then lcd_e_int <= '0'; timer <= timer + 1;
                    else timer <= 0; state <= INIT_CL; end if;
                -- Comando: Clear Display (Borra DDRAM y retorna cursor a Home
                when INIT_CL => 
                    lcd_rs_int <= '0'; lcd_db_int <= x"01";
                    if timer < T_PULSE then lcd_e_int <= '1'; timer <= timer + 1;
                    elsif timer < T_CMD then lcd_e_int <= '0'; timer <= timer + 1; 
                    else timer <= 0; state <= INIT_EM; end if;
                -- Comando: Entry Mode Set (Incrementar cursor, sin desplazamiento)
                when INIT_EM => 
                    lcd_rs_int <= '0'; lcd_db_int <= x"06";
                    if timer < T_PULSE then lcd_e_int <= '1'; timer <= timer + 1;
                    elsif timer < T_US then lcd_e_int <= '0'; timer <= timer + 1;
                    else timer <= 0; state <= SET_LINE1; LCD_ON <= '1'; end if;
                -- Comando: Set DDRAM Address (Inicio de Línea 1: 0x80)
                when SET_LINE1 =>
                    lcd_rs_int <= '0'; lcd_db_int <= x"80";
                    char_index <= 0;
                    if timer < T_PULSE then lcd_e_int <= '1'; timer <= timer + 1;
                    elsif timer < T_US then lcd_e_int <= '0'; timer <= timer + 1;
                    else timer <= 0; state <= WRITE_L1; end if;
                -- Escritura de Datos: Línea 1
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
                -- Comando: Set DDRAM Address (Inicio de Línea 2: 0xC0)
                when SET_LINE2 =>
                    lcd_rs_int <= '0'; lcd_db_int <= x"C0";
                    char_index <= 0;
                    if timer < T_PULSE then lcd_e_int <= '1'; timer <= timer + 1;
                    elsif timer < T_US then lcd_e_int <= '0'; timer <= timer + 1;
                    else timer <= 0; state <= WRITE_L2; end if;
                -- Escritura de Datos: Línea 2
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
                -- Recuperación ante estados inválidos
                when others => state <= POWER_UP;
            end case;
        end if;
    end process;

end Behavioral;
