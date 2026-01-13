library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity KeypadController is
    Port (
        CLK       : in  STD_LOGIC;
        ROWS      : in  STD_LOGIC_VECTOR (3 downto 0); 
        COLS      : out STD_LOGIC_VECTOR (3 downto 0); 
        KEY_CODE  : out STD_LOGIC_VECTOR (3 downto 0); 
        KEY_VALID : out STD_LOGIC
    );
end KeypadController;

architecture Behavioral of KeypadController is
    type state_type is (PREPARE_COL, WAIT_VOLTAGE, READ_ROWS, WAIT_RELEASE);
    signal state : state_type := PREPARE_COL;
    
    signal timer : integer range 0 to 500000 := 0; 
    signal col_idx : integer range 0 to 3 := 0;
    
begin
    process(CLK)
        variable raw_v : std_logic_vector(3 downto 0);
    begin
        if rising_edge(CLK) then
            case state is
                -- 1. PREPARAR COLUMNA
                when PREPARE_COL =>
                    KEY_VALID <= '0';
                    case col_idx is
                        when 0 => COLS <= "1110"; 
                        when 1 => COLS <= "1101"; 
                        when 2 => COLS <= "1011"; 
                        when 3 => COLS <= "0111"; 
                    end case;
                    state <= WAIT_VOLTAGE;
                    timer <= 0;

                -- 2. ESPERAR ESTABILIDAD
                when WAIT_VOLTAGE =>
                    if timer < 2000 then 
                        timer <= timer + 1;
                    else
                        state <= READ_ROWS;
                    end if;

                -- 3. LEER Y TRADUCIR
                when READ_ROWS =>
                    if ROWS /= "1111" then
                        -- A. Lectura Cruda
                        raw_v := "0000"; 
                        if col_idx = 0 then
                            if ROWS(3)='0' then raw_v := X"1"; end if;
                            if ROWS(2)='0' then raw_v := X"2"; end if;
                            if ROWS(1)='0' then raw_v := X"3"; end if;
                            if ROWS(0)='0' then raw_v := X"A"; end if;
                        elsif col_idx = 1 then
                            if ROWS(3)='0' then raw_v := X"E"; end if;
                            if ROWS(2)='0' then raw_v := X"0"; end if;
                            if ROWS(1)='0' then raw_v := X"F"; end if;
                            if ROWS(0)='0' then raw_v := X"D"; end if;
                        elsif col_idx = 2 then
                            if ROWS(3)='0' then raw_v := X"7"; end if;
                            if ROWS(2)='0' then raw_v := X"8"; end if;
                            if ROWS(1)='0' then raw_v := X"9"; end if;
                            if ROWS(0)='0' then raw_v := X"C"; end if;
                        elsif col_idx = 3 then
                            if ROWS(3)='0' then raw_v := X"4"; end if;
                            if ROWS(2)='0' then raw_v := X"5"; end if;
                            if ROWS(1)='0' then raw_v := X"6"; end if;
                            if ROWS(0)='0' then raw_v := X"B"; end if;
                        end if;
                        
                        -- B. TRADUCCIÓN MAESTRA (Basada en TU última lista)
                        case raw_v is
                            -- Fila 1
                            when X"A" => KEY_CODE <= X"1"; -- Tu 1 daba 'a', ahora dará 1
                            when X"D" => KEY_CODE <= X"2"; -- Tu 2 daba 'd', ahora dará 2
                            when X"C" => KEY_CODE <= X"3"; -- Tu 3 daba 'c', ahora dará 3
                            when X"B" => KEY_CODE <= X"A"; -- Tu A daba 'b', ahora dará A
                            
                            -- Fila 2
                            when X"3" => KEY_CODE <= X"4"; -- Tu 4 daba 3, ahora dará 4
                            when X"F" => KEY_CODE <= X"5"; -- Tu 5 daba 'f', ahora dará 5
                            when X"9" => KEY_CODE <= X"6"; -- Tu 6 daba 9, ahora dará 6
                            when X"6" => KEY_CODE <= X"B"; -- Tu B daba 6, ahora dará B
                            
                            -- Fila 3
                            when X"2" => KEY_CODE <= X"7"; -- Tu 7 daba 2, ahora dará 7
                            when X"0" => KEY_CODE <= X"8"; -- Tu 8 daba 0, ahora dará 8
                            when X"8" => KEY_CODE <= X"9"; -- Tu 9 daba 8, ahora dará 9
                            when X"5" => KEY_CODE <= X"C"; -- Tu C daba 5, ahora dará C
                            
                            -- Fila 4 (*, 0, #, D)
                            when X"1" => KEY_CODE <= X"E"; -- Tu * daba 1, ahora dará E (Asterisco)
                            when X"E" => KEY_CODE <= X"0"; -- Tu 0 daba 'e', ahora dará 0
                            when X"7" => KEY_CODE <= X"F"; -- Tu # daba 7, ahora dará F (Gato)
                            when X"4" => KEY_CODE <= X"D"; -- Tu D daba 4, ahora dará D
                            
                            when others => KEY_CODE <= raw_v; 
                        end case;

                        KEY_VALID <= '1'; 
                        state <= WAIT_RELEASE; 
                    else
                        if col_idx = 3 then col_idx <= 0; else col_idx <= col_idx + 1; end if;
                        state <= PREPARE_COL;
                    end if;

                -- 4. ESPERAR A SOLTAR
                when WAIT_RELEASE =>
                    KEY_VALID <= '0';
                    COLS <= "0000"; 
                    if ROWS = "1111" then 
                        if timer < 50000 then 
                            timer <= timer + 1;
                        else
                            state <= PREPARE_COL; 
                        end if;
                    else
                        timer <= 0; 
                    end if;
            end case;
        end if;
    end process;
end Behavioral;