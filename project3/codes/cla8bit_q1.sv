`timescale 1ns/1ns
module CLAdder (input [7:0] dataA, dataB, input carryIn, output [7:0] dataOut, output carryOut);
	wire [3:0] A1;
	wire [3:0] A2;
	wire [3:0] B1;
	wire [3:0] B2;
	wire [3:0] W1;
	wire [3:0] W2;
	wire c;
	assign {A2, A1} = dataA;
	assign {B2, B1} = dataB;
	cla1 C1 (A1, B1, carryIn, W1, c);
	cla1 C2 (A2, B2, c, W2, carryOut);
	assign dataOut = {W2, W1};
endmodule