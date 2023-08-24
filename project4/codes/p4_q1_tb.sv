`timescale 1ns/1ns
module srlatch_tb ();
	logic ss = 1;
	logic rr = 1;
	logic cc = 1;
	wire qq, qqbar;
	srlatch G (ss, rr, cc, qq, qqbar);
	initial begin
	#500 cc = 1'b0;
	#100 rr = 1'b0;
	#100 rr = 1'b1;
	#100 ss = 1'b0;
	#100 rr = 1'b0;
	#100 cc = 1'b1;
	#100 $stop;
	end
endmodule