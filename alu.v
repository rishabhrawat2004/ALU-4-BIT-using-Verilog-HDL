module alu(
input [3:0]a,b,
input [2:0]sel,
output reg [3:0]y
);

always @(*)begin
case(sel)
	3'b000 : y = (a+b);
	3'b001 : y = (a-b);
	3'b010 : y = (a&b);
	3'b011 : y = ~(a|b);
	3'b100 : y = ~(a^b);
	3'b101 : y = (a^b);
	3'b110 : y = (a|b);
	3'b111 : y = ~(a&b);
	default : y = 4'b0000;
	endcase
end

endmodule

module tb_alu;
reg [3:0]a,b;
reg [2:0]sel;
wire [3:0]y;

alu dut(a,b,sel,y);

initial begin
    a = 4'b0100;   //4
    b = 4'b0010;   //2

	$monitor("time=%0t | a=%b | b=%b | sel=%b | y=%b ",$time,a,b,sel,y);
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
