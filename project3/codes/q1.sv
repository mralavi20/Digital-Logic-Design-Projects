`timescale 1ns/1ns
module cla1 (input [3:0] A, input [3:0] B, input cin, output [3:0] W, output cout);
	wire [3:0] P;
	wire [3:0] G;
	wire [4:0] C;
	genvar i;
	genvar k;
	generate
		for (i = 0; i < 4; i = i + 1) begin: pg
			assign #7 P[i] = A[i] | B[i];
			assign #7 G[i] = A[i] & B[i];
		end
	endgenerate
	
	assign C[0] = cin;
	
	assign #14 C[1] = (P[0] & C[0]) | G[0];
	assign #14.2 C[2] = (P[1] & P[0] & C[0]) | (P[1] & G[0]) | G[1];
	assign #14.4 C[3] = (P[2] & P[1] & P[0] & C[0]) |(P[2] & P[1] & G[0]) | (P[2] & G[1]) | G[2];
	assign #14.6 C[4] = (P[3] & P[2] & P[1] & P[0] & C[0]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & G[1]) | (P[3] & G[2]) | G[3];

	generate
		for (k = 0; k < 4; k = k + 1) begin: sum
			assign #7.1 W[k] = A[k] ^ B[k] ^ C[k];
		end
	endgenerate
	
	assign cout = C[4];
endmodule