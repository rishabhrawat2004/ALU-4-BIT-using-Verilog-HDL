# ALU-4-BIT-using-Verilog-HDL

🧮 4-Bit ALU (Arithmetic Logic Unit) – Verilog


📌 Project Description

This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL.
The ALU performs arithmetic and logical operations on two 4-bit inputs based on a 3-bit select signal.

A testbench is included to verify all operations through simulation.




⚙️ Features

Supports 8 different operations

Combinational design using always @(*)

Clean case-based operation selection

Simple and readable Verilog code

Fully verified using a testbench and $monitor




🧠 ALU Operations
sel	Operation	Description
000	a + b	Addition
001	a - b	Subtraction
010	a & b	Bitwise AND
011	`~(a	b)`
100	~(a ^ b)	Bitwise XNOR
101	a ^ b	Bitwise XOR
110	`a	b`
111	~(a & b)	Bitwise NAND
🏗️ Module Overview
alu



Inputs

a[3:0] – Operand A

b[3:0] – Operand B

sel[2:0] – Operation select



Output

y[3:0] – ALU result



🧪 Testbench (tb_alu)

The testbench:

Applies fixed input values (a = 4, b = 2)

Iterates through all sel values

Displays results using $monitor

Validates correct ALU functionality



🖥️ Simulation Tools

You can simulate this design using:

ModelSim

Vivado Simulator



🚀 Future Enhancements

Add carry/borrow output

Add zero and overflow flags

Make ALU parameterized for N-bit operation

Add signed arithmetic support

Implement ALU using structural design



📚 Learning Outcomes

Understanding ALU architecture

Case-based combinational logic

Verilog testbench writing

Bitwise operations in hardware design

👤 Author

Rishabh RawaT
B.Tech – Electronics & Communication Engineering
