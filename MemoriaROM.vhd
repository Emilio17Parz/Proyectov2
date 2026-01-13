-- ############################################################################
-- PROYECTO: Máquina Tragamonedas (Arquitectura de Computadoras)
-- MÓDULO:   MemoriaROM
-- ESTÁNDAR: VHDL-2008
-- DESCRIPCIÓN: Unidad de almacenamiento no volátil (Look-Up Table - LUT).
--              Contiene las secuencias de símbolos para tres rodillos 
--              independientes, mapeados en regiones de memoria específicas.
-- ############################################################################

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MemoriaROM is
    port(
        -- Puerto de Dirección: Rango definido para 256 posiciones (8 bits)
        Addr : in  integer range 0 to 255;
        -- Puerto de Datos: Palabra de 8 bits que representa el símbolo
        Data : out std_logic_vector(7 downto 0)
    );
end MemoriaROM;

architecture Data of MemoriaROM is
    -- Definición del tipo de datos para el arreglo de la ROM
    type ROM_type is array (0 to 255) of std_logic_vector(7 downto 0);
    
    -- ============================================================
    -- CONSTANTE DE MEMORIA (CONTENIDO PROGRAMADO)
    -- Los valores numéricos representan símbolos del juego.
    -- El valor X"0A" (10 decimal) se interpreta como el símbolo comodín 'X'.
    -- ============================================================
    constant ROM_PROG : ROM_type := (
        -- ------------------------------------------------------------
        -- BLOQUE 1: RODILLO 1 (Direcciones 0 a 8)
        -- Secuencia lineal con comodines al final.
        -- ------------------------------------------------------------
        0 => X"01", 1 => X"02", 2 => X"03", 3 => X"04", 4 => X"05", 
        5 => X"06", 6 => X"07", 7 => X"0A", 8 => X"0A", 

        -- ------------------------------------------------------------
        -- BLOQUE 2: RODILLO 2 (Direcciones 20 a 28)
        -- Secuencia invertida con comodines intercalados.
        -- ------------------------------------------------------------
        20 => X"07", 21 => X"0A", 22 => X"06", 23 => X"05", 24 => X"04", 
        25 => X"0A", 26 => X"03", 27 => X"02", 28 => X"01",

        -- ------------------------------------------------------------
        -- BLOQUE 3: RODILLO 3 (Direcciones 40 a 48)
        -- Secuencia basada en saltos de paridad (pares/impares).
        -- ------------------------------------------------------------
        40 => X"02", 41 => X"04", 42 => X"06", 43 => X"0A", 44 => X"01", 
        45 => X"03", 46 => X"05", 47 => X"07", 48 => X"0A",

        -- Inicialización del espacio de memoria restante para evitar latches
        others => X"00"
    );

begin

    -- =========================================================
    -- LÓGICA DE SALIDA
    -- Asignación combinacional directa: La latencia de lectura 
    -- depende del tiempo de propagación de la estructura LUT.
    -- =========================================================
    Data <= ROM_PROG(Addr);

end Data;
