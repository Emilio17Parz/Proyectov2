library IEEE;
use IEEE.std_logic_1164.all;

entity FullAdder is
    port(
        A, B, Cin : in  std_logic;
        Sum, Cout : out std_logic
    );
end FullAdder;

architecture Estructural of FullAdder is
begin
    -- Ecuaciones de Arquitectura de Computadoras
    Sum  <= A xor B xor Cin;
    Cout <= (A and B) or (Cin and (A xor B));
end Estructural;