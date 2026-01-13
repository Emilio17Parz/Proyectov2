-- ############################################################################
-- PROYECTO: Máquina Tragamonedas (Arquitectura de Computadoras)
-- MÓDULO:   AdderSub16
-- ESTÁNDAR: VHDL-2008
-- DESCRIPCIÓN: Unidad Aritmética de 16 bits configurable como Sumador o 
--              Restador. Utiliza una arquitectura Ripple Carry Adder (RCA)
--              e implementa la resta mediante el método de Complemento a 2.
-- ############################################################################

library IEEE;
use IEEE.std_logic_1164.all;

entity AdderSub16 is
    port(
        -- Control de Operación
        Modo : in  std_logic; -- '0' = Adición (A + B), '1' = Sustracción (A - B)
        
        -- Operandos de 16 bits
        OpA  : in  std_logic_vector(15 downto 0);
        OpB  : in  std_logic_vector(15 downto 0);
        
        -- Salidas de Datos y Banderas (Flags)
        Res  : out std_logic_vector(15 downto 0); -- Resultado de la operación
        Cout : out std_logic;                     -- Acarreo de salida final
        Ovf  : out std_logic                      -- Indicador de Desbordamiento (Overflow)
    );
end AdderSub16;

architecture Structural of AdderSub16 is

    -- =========================================================
    -- DECLARACIÓN DE COMPONENTES
    -- =========================================================
    -- Celda atómica de suma binaria
    component FullAdder is
        port(
            A, B, Cin : in std_logic; 
            Sum, Cout : out std_logic
        );
    end component;

    -- =========================================================
    -- SEÑALES INTERNAS (NETS)
    -- =========================================================
    -- Vector de acarreos: C(0) es el Cin inicial, C(16) es el Cout final
    signal C          : std_logic_vector(16 downto 0); 
    -- Operando B procesado (directo o invertido bit a bit)
    signal B_input    : std_logic_vector(15 downto 0);
    -- Buffer intermedio para el resultado
    signal Result_Int : std_logic_vector(15 downto 0);

begin

    -- =========================================================
    -- LÓGICA DE CONTROL ARITMÉTICO
    -- =========================================================
    -- Para la resta (Modo = '1'), se requiere A + (not B) + 1.
    -- El '+1' se inyecta a través del acarreo inicial del primer sumador.
    C(0) <= Modo; 

    -- =========================================================
    -- INSTANCIACIÓN ITERATIVA (CADENA DE SUMA)
    -- =========================================================
    -- Generación de 16 etapas de suma con propagación de acarreo.
    GEN_ADDERS: for i in 0 to 15 generate
        
        -- Inversión condicional de bits: 
        -- Si Modo = '0' -> B_input(i) = OpB(i) XOR 0 = OpB(i)
        -- Si Modo = '1' -> B_input(i) = OpB(i) XOR 1 = NOT OpB(i)
        B_input(i) <= OpB(i) xor Modo;
        
        -- Mapeo de puertos de la celda i-ésima
        FAx: FullAdder port map(
            A    => OpA(i),
            B    => B_input(i),
            Cin  => C(i),
            Sum  => Result_Int(i),
            Cout => C(i+1) -- Propagación al bit de mayor peso
        );
    end generate;

    -- =========================================================
    -- ASIGNACIÓN DE SALIDAS Y BANDERAS
    -- =========================================================
    Res  <= Result_Int;
    Cout <= C(16);

    -- Detección de Overflow para números con signo:
    -- Se produce desbordamiento si el acarreo que entra al MSB (C15)
    -- es distinto al acarreo que sale del MSB (C16).
    Ovf  <= C(16) xor C(15); 
    
end Structural;
