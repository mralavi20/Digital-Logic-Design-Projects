`timescale 1ns/1ns
module master_slave (input d,cl, output q);
	wire y1,y2;
	not N (y2, cl);
	dlatch G1 (d, y2, y1);
	dlatch G2 (y1, cl, q);
endmodule