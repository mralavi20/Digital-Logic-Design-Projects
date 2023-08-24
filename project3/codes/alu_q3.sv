`timescale 1ns/1ns
module alu (input [7:0] A, B, input [2:0] F, output [7:0] W, output c, z);
	wire [7:0] S1;
	wire [7:0] S2;
	wire [7:0] S3;
	wire [7:0] M;
	wire [7:0] B2;
	wire [7:0] B3;
	wire [2:0] F2;
	wire cin;
	wire en;
	wire f1,f2;
	assign B2 = B << 1;
	assign B3 = B >> 1;
	assign S1 = (F[1:0] == 2'b00) ? B:
		(F[1:0] == 2'b01) ? B2:
		(F[1:0] == 2'b10) ? (~B):
		(F[1:0] == 2'b11) ? B3:
		8'b0;
	assign #7 cin = F[1] & (~F[0]);
	CLAdder Adder (A, S1, cin, S2, c);
	assign #14 M = S2[7] ? A: B;
	assign #14 S3 = (~(F[1] & (~F[0]))) ? S2: M;
	assign #7.1 en = F[2] & (~F[1]) & (~F[0]);
	assign #7 f1 = F[2] & F[0];
	assign #7 f2 = F[2] & F[1];
	assign F2 = {f2, f1};
	assign #14.4 W = en ? 8'b0:
		(F2 == 2'b00) ? S3:
		(F2 == 2'b01) ? A | B:
		(F2 == 2'b10) ? A & B:
		(F2 == 2'b11) ? B2:
		8'b0;
	assign z = ~|W;
endmodule