`timescale 1ns/1ns
module moore_machine (input cl,r,j, output w);
	logic [2:0] ps;
	logic [2:0] ns;
	
	always @(ps, j) begin
		ns = 3'b000;
		case (ps)
			3'b000: ns = j ? 3'b001 : 3'b000;
			3'b001: ns = j ? 3'b001 : 3'b010;
			3'b010: ns = j ? 3'b011 : 3'b000;
			3'b011: ns = j ? 3'b100 : 3'b010;
			3'b100: ns = j ? 3'b001 : 3'b101;
			3'b101: ns = j ? 3'b000 : 3'b011;
			default: ns = 3'b000;
		endcase
	end

	always @(posedge cl, posedge r) begin
		if (r)
			ps <= 3'b000;
		else
			ps <= ns;
	end

	assign w = (ps == 3'b101) ? 1'b1 : 1'b0;

endmodule