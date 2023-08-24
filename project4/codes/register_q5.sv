`timescale 1ns/1ns
module regidter (input cl, input [7:0] parin, output [7:0] parout);
	genvar k;
	generate
		for (k = 0; k < 8; k = k + 1) begin: dlatch
			dlatch G (parin[k], cl, parout[k]);
		end
	endgenerate
endmodule