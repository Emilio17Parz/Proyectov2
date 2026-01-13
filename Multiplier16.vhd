library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Multiplier16 is
    port(
        OpA : in  std_logic_vector(15 downto 0);
        OpB : in  std_logic_vector(15 downto 0);
        Res : out std_logic_vector(15 downto 0)
    );
end Multiplier16;

architecture HardwareAlgo of Multiplier16 is
begin
    process(OpA, OpB)
        variable accum : unsigned(31 downto 0);
        variable a_val : unsigned(15 downto 0);
    begin
        accum := (others => '0');
        a_val := unsigned(OpA);
        
        -- Algoritmo Shift-Add (Hardware behavior)
        for i in 0 to 15 loop
            if OpB(i) = '1' then
                accum := accum + shift_left(resize(a_val, 32), i);
            end if;
        end loop;
        
        Res <= std_logic_vector(accum(15 downto 0));
    end process;
end HardwareAlgo;