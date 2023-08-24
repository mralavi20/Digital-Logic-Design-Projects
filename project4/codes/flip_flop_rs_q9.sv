`timescale 1ns/1ns
module flip_flop (input d,r,cl, output q);
	wire y1,y2,y3;
	not N1 (y1, r), N2 (y3, y2);
	nand G1 (y2, d, y1);
	dlatch G2 (y3, cl, q);
endmodule