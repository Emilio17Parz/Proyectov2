library IEEE;
use IEEE.std_logic_1164.all;

entity AdderSub16 is
    port(
        Modo : in  std_logic; -- 0=Suma, 1=Resta
        OpA  : in  std_logic_vector(15 downto 0);
        OpB  : in  std_logic_vector(15 downto 0);
        Res  : out std_logic_vector(15 downto 0);
        Cout : out std_logic;
        Ovf  : out std_logic
    );
end AdderSub16;

architecture Structural of AdderSub16 is
    -- Llamamos al componente de 1 bit
    component FullAdder is
        port(A, B, Cin : in std_logic; Sum, Cout : out std_logic);
    end component;

    signal C : std_logic_vector(16 downto 0); -- Cables de acarreo internos
    signal B_input : std_logic_vector(15 downto 0);
    signal Result_Int : std_logic_vector(15 downto 0);
begin
    -- Control de Resta: El Carry inicial es 1 si restamos
    C(0) <= Modo; 

    -- Generamos 16 sumadores conectados en cadena
    GEN_ADDERS: for i in 0 to 15 generate
        -- Si Modo=1 (Resta), invertimos B (XOR 1)
        B_input(i) <= OpB(i) xor Modo;
        
        FAx: FullAdder port map(
            A => OpA(i),
            B => B_input(i),
            Cin => C(i),
            Sum => Result_Int(i),
            Cout => C(i+1) -- El acarreo de salida va a la entrada del siguiente
        );
    end generate;

    Res  <= Result_Int;
    Cout <= C(16);
    -- Overflow = XOR de los dos últimos acarreos
    Ovf  <= C(16) xor C(15); 
end Structural;