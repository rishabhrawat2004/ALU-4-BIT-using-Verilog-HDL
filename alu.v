module alu(
input [3:0]a,b,
input [2:0]sel,
output [3:0]y
);
     assign y = (sel == 3'b000) ? (a + b):
		(sel == 3'b001) ? (a - b):
		(sel == 3'b010) ? (a & b):
		(sel == 3'b011) ? (a / b):
		(sel == 3'b100) ? (a % b):
		(sel == 3'b101) ? (a ^ b):
		(sel == 3'b110) ? (a | b):
				 ~(a & b);

endmodule

module tb_alu;
reg [3:0]a,b;
reg [2:0]sel;
wire [3:0]y;

alu dut(.a(a),.b(b),.sel(sel),.y(y));

initial begin

    a = 4'b0101;   // 5
    b = 4'b0011;   // 3

	$monitor("time = %0t | a = %b | b = %b | sel = %b | y= %b ",$time,a,b,sel,y);

	sel = 3'b000; #5;
	sel = 3'b001; #5;
	sel = 3'b010; #5;
	sel = 3'b011; #5;
	sel = 3'b100; #5;
	sel = 3'b101; #5;
	sel = 3'b110; #5;
	sel = 3'b111; #5;

	$finish;
end  

endmodule