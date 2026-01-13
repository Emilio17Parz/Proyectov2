-- ############################################################################
-- PROYECTO: Máquina Tragamonedas (Arquitectura de Computadoras)
-- MÓDULO:   Multiplier16
-- ESTÁNDAR: VHDL-2008
-- DESCRIPCIÓN: Unidad aritmética de multiplicación de 16 bits.
--              Implementa el algoritmo de hardware "Shift-and-Add" para 
--              operaciones entre operandos sin signo (unsigned).
-- ############################################################################


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Multiplier16 is
    port(
        -- Puertos de Entrada
        OpA : in  std_logic_vector(15 downto 0); -- Operando A (Multiplicando)
        OpB : in  std_logic_vector(15 downto 0); -- Operando B (Multiplicador)
        
        -- Puerto de Salida
        Res : out std_logic_vector(15 downto 0)  -- Resultado truncado a 16 bits
        );
end Multiplier16;

architecture HardwareAlgo of Multiplier16 is
begin
    -- =========================================================
    -- PROCESO: Multiplicación Combinacional
    -- DESCRIPCIÓN: Realiza el producto mediante la evaluación de cada bit 
    --              del multiplicador (OpB) y la acumulación del valor
    --              desplazado del multiplicando (OpA).
    -- =========================================================
    process(OpA, OpB)    
        -- Variable para almacenar el producto completo de 32 bits (16+16)
        variable accum : unsigned(31 downto 0);
        -- Cast del operando A a tipo numérico unsigned
        variable a_val : unsigned(15 downto 0);
    begin
        -- Inicialización de variables para cada ciclo de ejecución del proceso
        accum := (others => '0');
        a_val := unsigned(OpA);
        
        -- Algoritmo Shift-Add (Comportamiento de Hardware paralelo)
        -- El bucle genera la lógica combinacional necesaria para la multiplicación
        for i in 0 to 15 loop
            -- Si el bit 'i' del multiplicador es alto, se suma el multiplicando 
            -- desplazado 'i' posiciones a la izquierda al acumulador.
            if OpB(i) = '1' then
                -- Se realiza el resize de a_val a 32 bits para evitar desbordamiento
                -- durante el desplazamiento (shift_left) y la suma.
                accum := accum + shift_left(resize(a_val, 32), i);
            end if;
        end loop;

        -- Asignación final al puerto de salida.
        -- NOTA TÉCNICA: Se realiza un truncamiento de los 16 bits más significativos,
        -- retornando únicamente la parte baja (LSB) del producto.
        Res <= std_logic_vector(accum(15 downto 0));
    end process;
end HardwareAlgo;
