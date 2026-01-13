-- ############################################################################
-- PROYECTO: Máquina Tragamonedas (Arquitectura de Computadoras)
-- MÓDULO:   FullAdder
-- ESTÁNDAR: VHDL-2008
-- DESCRIPCIÓN: Celda básica de sumador completo (Full Adder).
--              Realiza la suma aritmética de dos bits de entrada (A, B) 
--              considerando un acarreo de entrada (Cin), generando un bit 
--              de suma (Sum) y un acarreo de salida (Cout).
-- ############################################################################

library IEEE;
use IEEE.std_logic_1164.all;

entity FullAdder is
    port(
        -- Puertos de Entrada
        A    : in  std_logic; -- Operando A
        B    : in  std_logic; -- Operando B
        Cin  : in  std_logic; -- Acarreo de entrada (Carry-in)
        
        -- Puertos de Salida
        Sum  : out std_logic; -- Resultado de la suma (Lógica XOR)
        Cout : out std_logic  -- Acarreo de salida (Carry-out)
    );
end FullAdder;

architecture Estructural of FullAdder is
begin
    -- =========================================================
    -- ECUACIONES CARACTERÍSTICAS
    -- Basadas en los teoremas de la lógica digital para sumadores.
    -- =========================================================

    -- Cálculo de la Suma (S):
    -- Se obtiene mediante la paridad de las tres entradas.
    -- S = A ⊕ B ⊕ Cin
    Sum  <= A xor B xor Cin;

    -- Cálculo del Acarreo de Salida (Cout):
    -- Se genera si al menos dos entradas están en estado alto ('1').
    -- Cout = (A · B) + (Cin · (A ⊕ B))
    -- Esta forma es más eficiente en hardware que la versión simplificada.
    Cout <= (A and B) or (Cin and (A xor B));

end Estructural;
