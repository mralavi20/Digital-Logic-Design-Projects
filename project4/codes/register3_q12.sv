`timescale 1ns/1ns
module register3 (input cl,r, input [7:0] parin, output logic [7:0] parout);
	always @(posedge cl, posedge r) begin
		if (r)
			parout <= 8'b0;
		else
			parout <= parin;
	end
endmodule