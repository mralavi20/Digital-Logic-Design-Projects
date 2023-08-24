`timescale 1ns/1ns
module shift_register (input cl,sin, output sout, output [7:0] parout);
	wire [8:0] Y;
	genvar k;
	assign Y[8] = sin;
	generate
		for (k = 7; k >= 0; k = k - 1) begin: dlatch
			dlatch G (Y[k + 1], cl, Y[k]);
		end
	endgenerate

	assign parout = Y[7:0];
	assign sout = parout[0];
endmodule