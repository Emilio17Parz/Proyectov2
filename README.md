# 🎰 Máquina Tragamonedas - FPGA System

[![VHDL](https://img.shields.io/badge/Language-VHDL--2008-orange.svg)](https://en.wikipedia.org/wiki/VHDL)
[![Platform](https://img.shields.io/badge/Platform-Lattice%20FPGA-blue.svg)](https://www.latticesemi.com/)
[![Standard](https://img.shields.io/badge/Standard-IEEE%201164%20/%20Numeric__Std-green.svg)](https://ieeexplore.ieee.org/document/560341)

## 📝 Descripción del Proyecto
Este proyecto implementa una **Máquina Tragamonedas (Slot Machine)** digital de alto rendimiento diseñada en VHDL para FPGAs (arquitectura Lattice MachXO2). El sistema integra lógica de control de estados (FSM), procesamiento aritmético de 16 bits para el cálculo de premios y gestión de periféricos en tiempo real como teclados matriciales y pantallas LCD.



## 🏗️ Arquitectura del Sistema

El sistema sigue una jerarquía de diseño estructural dividida en los siguientes módulos:

### 1. Núcleo de Control (FSM)
Ubicado en `Tragamonedas_Top.vhd`, gestiona una máquina de estados finitos de 12 etapas que controla el flujo de juego:
* **Gestión de Apuestas:** Captura de datos mediante teclado.
* **Generación de Pseudo-aleatoriedad:** Utiliza tiempos de respuesta del usuario y osciladores internos para determinar el frenado de los rodillos.
* **Lógica de Ganancia:** Evaluación de coincidencia de símbolos incluyendo lógica de comodines (Wildcards).

### 2. Unidad Aritmética (ALU)
Unidad dedicada para procesar el balance del Jackpot y el cálculo de multiplicadores:
* **AdderSub16:** Sumador/Restador de 16 bits con detección de desbordamiento (*Overflow*).
* **Multiplier16:** Multiplicador basado en el algoritmo *Shift-and-Add* para el cálculo de premios dinámicos.
* **FullAdder:** Celda de suma atómica de 1 bit.

### 3. Almacenamiento (LUT ROM)
* **MemoriaROM:** Almacena tres secuencias independientes de símbolos (Rodillos) mapeadas en una Look-Up Table de 256 posiciones.

### 4. Controladores de Periféricos
* **LCD_Controller:** Driver para pantallas HD44780 que gestiona la inicialización y el refresco cíclico de 32 caracteres ASCII.
* **KeypadController:** Controlador para teclado matricial 4x4 con lógica de escaneo secuencial y filtrado de rebotes (*Debounce*).



## ⚙️ Especificaciones Técnicas
* **Frecuencia de Operación:** 2.08 MHz (Oscilador interno OSCH).
* **Ancho de Palabra:** 16 bits (Aritmética de jackpot hasta $2^{16}-1$).
* **Protocolo LCD:** Comunicación de 8 bits con temporización basada en ciclos de reloj.
* **Algoritmo de Resta:** Complemento a 2 mediante inversión condicional de bits.

## 🚀 Cómo Utilizar
1.  **Clonación:** `git clone https://github.com/Emilio17Parz/Proyectov2.git`
2.  **Síntesis:** Importar archivos `.vhd` en Lattice Diamond o software equivalente.
3.  **Asignación de Pines:** Consultar el manual de la tarjeta de desarrollo para asignar los puertos de `ROWS_IN`, `COLS_OUT` y el bus de la `LCD`.
4.  **Ejecución:** Resetear el sistema mediante `RESET_N` para iniciar la fase de `POWER_UP` del LCD.

## 📁 Estructura de Archivos
```text
├── Tragamonedas_Top.vhd   # Entidad de jerarquía superior
├── AdderSub16.vhd         # Sumador/Restador de 16 bits
├── FullAdder.vhd          # Celda básica de suma
├── Multiplier16.vhd       # Unidad multiplicadora
├── MemoriaROM.vhd         # Tabla de búsqueda de símbolos
├── LCD_Controller.vhd     # Driver de pantalla
└── KeypadController.vhd    # Driver de teclado matricial
