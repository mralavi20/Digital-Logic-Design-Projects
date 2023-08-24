`timescale 1ns/1ns
module dlatch (input d,cl, output q);
	wire y, qbar;
	not #6 N (y, d);
	srlatch G (y, d, cl, q, qbar);
endmodule