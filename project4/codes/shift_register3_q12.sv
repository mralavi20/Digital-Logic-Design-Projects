`timescale 1ns/1ns
module shift_register3 (input cl,r,ld,sin, input [7:0] parin, output sout, output logic [7:0] parout);
	always @(posedge cl, posedge r) begin
		if (r)
			parout <= 8'b0;
		else
			parout <= ld ? parin : {sin, parout[7:1]};
	end
	assign sout = parout[0];
endmodule