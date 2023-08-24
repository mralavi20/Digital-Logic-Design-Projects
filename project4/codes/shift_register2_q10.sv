`timescale 1ns/1ns
module shift_register2 (input cl,r,sin, output sout, output [7:0] parout);
	wire y;
	wire [8:0] Y1;
	wire [7:0] Y2;
	wire [7:0] Y3;
	genvar k;
	assign Y1[8] = sin;
	not N1 (y, r);
	generate
		for (k = 7; k >= 0; k = k - 1) begin: dflipflop
			nand NG (Y2[k], Y1[k + 1], y);
			not N (Y3[k], Y2[k]);
			master_slave G (Y3[k], cl, Y1[k]);
		end
	endgenerate
	assign sout = Y1[0];
	assign parout = Y1[7:0];
endmodule