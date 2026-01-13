library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MemoriaROM is
    port(
        Addr : in  integer range 0 to 255;
        Data : out std_logic_vector(7 downto 0)
    );
end MemoriaROM;

architecture Data of MemoriaROM is
    type ROM_type is array (0 to 255) of std_logic_vector(7 downto 0);
    
    constant ROM_PROG : ROM_type := (
        -- ============================================================
        -- BLOQUE 1: RODILLO 1 (Dir 0 - 8)
        -- Secuencia: 1, 2, 3, 4, 5, 6, 7, X, X
        -- ============================================================
        0 => X"01", 1 => X"02", 2 => X"03", 3 => X"04", 4 => X"05", 
        5 => X"06", 6 => X"07", 7 => X"0A", 8 => X"0A", -- 0A es 10 (X)

        -- ============================================================
        -- BLOQUE 2: RODILLO 2 (Dir 20 - 28)
        -- Secuencia: 7, X, 6, 5, 4, X, 3, 2, 1
        -- ============================================================
        20 => X"07", 21 => X"0A", 22 => X"06", 23 => X"05", 24 => X"04", 
        25 => X"0A", 26 => X"03", 27 => X"02", 28 => X"01",

        -- ============================================================
        -- BLOQUE 3: RODILLO 3 (Dir 40 - 48)
        -- Secuencia: 2, 4, 6, X, 1, 3, 5, 7, X
        -- ============================================================
        40 => X"02", 41 => X"04", 42 => X"06", 43 => X"0A", 44 => X"01", 
        45 => X"03", 46 => X"05", 47 => X"07", 48 => X"0A",

        -- Relleno con ceros
        others => X"00"
    );
begin
    Data <= ROM_PROG(Addr);
end Data;