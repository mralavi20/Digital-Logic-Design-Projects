`timescale 1ns/1ns
module lfsr (input cl,r,ld, input [7:0] parin, output [7:0] parout);
	wire y1,y2,y3,y4;
	wire sout;
	shift_register3 S (cl, r, ld, y4, parin, sout, parout);
	assign y1 = parout[0] ^ parout[2];
	assign y2 = parout[3] ^ y1;
	assign y3 = parout[4] ^ y2;
	assign y4 = parout[6] ^ y3;
endmodule