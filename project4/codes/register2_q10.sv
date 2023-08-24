`timescale 1ns/1ns
module register2 (input cl,r, input [7:0] parin, output [7:0] parout);
	wire y;
	wire [7:0] Y1;
	wire [7:0] Y2;
	genvar k;
	not N1 (y, r);
	generate
		for (k = 0; k < 8; k = k + 1) begin: dflipflop
			nand NG (Y1[k], y, parin[k]);
			not N (Y2[k], Y1[k]);
			master_slave G (Y2[k], cl, parout[k]);
		end
	endgenerate
endmodule