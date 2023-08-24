`timescale 1ns/1ns
module comparator2 (input [3:0] A, [3:0] B, output w);
	assign #(68,67) w = (A == B) ? 1 : 0;
endmodule