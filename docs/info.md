<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements a 1-bit Full Adder using combinational logic in Verilog.

The circuit accepts three 1-bit inputs:
- A
- B
- Carry-in (Cin)

It produces two outputs:
- Sum = A ⊕ B ⊕ Cin
- Carry-out (Cout) = (A & B) | (B & Cin) | (A & Cin)

The design computes the binary addition of the three input bits without using a clock.

## How to test

## How to test

Test all eight possible input combinations of A, B, and Cin.

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

Simulation can be performed using Icarus Verilog and GTKWave to verify the outputs.

## External hardware

No external hardware is required.

The project is a purely digital combinational logic design intended for Tiny Tapeout and can be verified through simulation.
