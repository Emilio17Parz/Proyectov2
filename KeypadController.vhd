-- ############################################################################
-- PROYECTO: Máquina Tragamonedas (Arquitectura de Computadoras)
-- MÓDULO:   KeypadController
-- ESTÁNDAR: VHDL-2008
-- DESCRIPCIÓN: Controlador para teclado matricial 4x4.
--              Implementa una FSM para el escaneo de columnas, detección de 
--              presión en filas, decodificación de código de tecla (Key Code) 
--              y validación mediante lógica de antirrebote.
-- ############################################################################

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity KeypadController is
    Port (
        -- Entradas de Sistema
        CLK       : in  STD_LOGIC;                                     -- Reloj de sistema
        ROWS      : in  STD_LOGIC_VECTOR (3 downto 0);                 -- Entradas de filas (Pull-up activas en '0')
        -- Salidas de Control y Datos
        COLS      : out STD_LOGIC_VECTOR (3 downto 0);                 -- Salidas de columnas (Barrido)
        KEY_CODE  : out STD_LOGIC_VECTOR (3 downto 0);                 -- Valor hexadecimal de la tecla
        KEY_VALID : out STD_LOGIC                                      -- Pulso de validación de tecla presionada
    );
end KeypadController;

architecture Behavioral of KeypadController is
    -- Definición de estados para el control de escaneo
    type state_type is (
        PREPARE_COL,   -- Selección y activación de la columna actual
        WAIT_VOLTAGE,  -- Tiempo de establecimiento para capacitancia de línea
        READ_ROWS,     -- Captura de datos de filas y decodificación
        WAIT_RELEASE   -- Bloqueo hasta detectar la liberación de la tecla
    );
    signal state : state_type := PREPARE_COL;
    -- Registros internos para temporización y control de índices
    signal timer : integer range 0 to 500000 := 0; 
    signal col_idx : integer range 0 to 3 := 0;            -- Índice de columna actual (0 a 3)
    
begin
    - =========================================================
    -- PROCESO: Máquina de Estados de Escaneo (FSM)
    -- =========================================================
    process(CLK)
        -- Variable para el almacenamiento intermedio del código detectado
        variable raw_v : std_logic_vector(3 downto 0);
    begin
        if rising_edge(CLK) then
            case state is
                -- ----------------------------------------------------
                -- ESTADO 1: PREPARAR COLUMNA
                -- Activa una sola columna a la vez aplicando un '0' lógico.
                -- ----------------------------------------------------
                when PREPARE_COL =>
                    KEY_VALID <= '0';
                    case col_idx is
                        when 0 => COLS <= "1110"; -- Columna 1 activa
                        when 1 => COLS <= "1101"; -- Columna 2 activa
                        when 2 => COLS <= "1011"; -- Columna 3 activa
                        when 3 => COLS <= "0111"; -- Columna 4 activa 
                    end case;
                    state <= WAIT_VOLTAGE;
                    timer <= 0;

                -- ----------------------------------------------------
                -- ESTADO 2: ESPERAR ESTABILIDAD
                -- Retardo para asegurar que el voltaje se ha estabilizado 
                -- en la matriz tras el cambio de columna.
                -- ----------------------------------------------------
                when WAIT_VOLTAGE =>
                    if timer < 2000 then 
                        timer <= timer + 1;
                    else
                        state <= READ_ROWS;
                    end if;

                -- ----------------------------------------------------
                -- ESTADO 3: LEER Y TRADUCIR
                -- Evalúa si alguna fila ha sido llevada a '0' por el contacto.
                -- ----------------------------------------------------
                when READ_ROWS =>
                    -- Si ROWS es distinto de "1111", hay una tecla presionada
                    if ROWS /= "1111" then
                        -- A. LÓGICA DE DETECCIÓN CRUDA
                        -- Identifica la intersección Columna/Fila.
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
                        
                        -- B. TRADUCCIÓN MAESTRA
                        -- Mapea los valores crudos a la disposición final del usuario.
                        case raw_v is
                            -- Fila 1 (Mapeo: 1, 2, 3, A)
                            when X"A" => KEY_CODE <= X"1"; -- Tu 1 daba 'a', ahora dará 1
                            when X"D" => KEY_CODE <= X"2"; -- Tu 2 daba 'd', ahora dará 2
                            when X"C" => KEY_CODE <= X"3"; -- Tu 3 daba 'c', ahora dará 3
                            when X"B" => KEY_CODE <= X"A"; -- Tu A daba 'b', ahora dará A
                            
                            -- Fila 2 (Mapeo: 4, 5, 6, B)
                            when X"3" => KEY_CODE <= X"4"; -- Tu 4 daba 3, ahora dará 4
                            when X"F" => KEY_CODE <= X"5"; -- Tu 5 daba 'f', ahora dará 5
                            when X"9" => KEY_CODE <= X"6"; -- Tu 6 daba 9, ahora dará 6
                            when X"6" => KEY_CODE <= X"B"; -- Tu B daba 6, ahora dará B
                            
                            -- Fila 3 (Mapeo: 7, 8, 9, C)
                            when X"2" => KEY_CODE <= X"7"; -- Tu 7 daba 2, ahora dará 7
                            when X"0" => KEY_CODE <= X"8"; -- Tu 8 daba 0, ahora dará 8
                            when X"8" => KEY_CODE <= X"9"; -- Tu 9 daba 8, ahora dará 9
                            when X"5" => KEY_CODE <= X"C"; -- Tu C daba 5, ahora dará C
                            
                            -- Fila 4 (Mapeo: *, 0, #, D)
                            when X"1" => KEY_CODE <= X"E"; -- Tu * daba 1, ahora dará E (Asterisco)
                            when X"E" => KEY_CODE <= X"0"; -- Tu 0 daba 'e', ahora dará 0
                            when X"7" => KEY_CODE <= X"F"; -- Tu # daba 7, ahora dará F (Gato)
                            when X"4" => KEY_CODE <= X"D"; -- Tu D daba 4, ahora dará D
                            
                            when others => KEY_CODE <= raw_v; 
                        end case;

                        KEY_VALID <= '1';                     -- Indica al sistema que la tecla es válida
                        state <= WAIT_RELEASE; 
                    else
                        -- Si no hay tecla, avanza a la siguiente columna
                        if col_idx = 3 then col_idx <= 0; else col_idx <= col_idx + 1; end if;
                        state <= PREPARE_COL;
                    end if;

                -- ----------------------------------------------------
                -- ESTADO 4: ESPERAR A SOLTAR
                -- Evita lecturas múltiples de una misma pulsación (Debounce).
                -- ----------------------------------------------------
                when WAIT_RELEASE =>
                    KEY_VALID <= '0';
                    COLS <= "0000";                                 -- Desactiva todas las columnas
                    if ROWS = "1111" then 
                        -- Espera un tiempo adicional tras soltar para evitar ruido
                        if timer < 50000 then 
                            timer <= timer + 1;
                        else
                            state <= PREPARE_COL; 
                        end if;
                    else
                        timer <= 0;                                 -- Reinicia si detecta ruido o sigue presionada
                    end if;
            end case;
        end if;
    end process;
end Behavioral;
