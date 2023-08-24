`timescale 1ns/1ns
module srlatch (input s,r,cl, output q,qbar);
	wire y1,y2,y3,y4,y5;
	nand #8 N1 (y1, s, s), N2 (y2, r, r), N3 (y3, cl, cl), N4 (y4, y1, y3), N5 (y5, y2, y3), N6 (q, qbar, y4), N7 (qbar, y5, q);
endmodule