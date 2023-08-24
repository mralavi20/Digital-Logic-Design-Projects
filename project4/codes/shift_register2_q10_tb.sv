`timescale 1ns/1ns
module shift_register2_tb ();
	logic cc = 0;
	logic ssin;
	logic rr = 1'b0;
	logic ll = 1'b0;
	logic [7:0] PI = 8'b0;
	wire ssout1;
	wire ssout2;
	wire [7:0] P1;
	wire [7:0] P2;
	shift_register2 S1 (cc, rr, ssin, ssout1, P1);
	shift_register3 S2 (cc, rr, ll, ssin, PI, ssout2, P2);
	initial begin
	#100 ssin = 1'b1;
	#100 cc = 1'b1;
	#200 cc = 1'b0;
	#100 ssin = 1'b1;
	#100 cc = 1'b1;
	#200 cc = 1'b0;
	#100 ssin = 1'b0;
	#100 cc = 1'b1;
	#200 cc = 1'b0;
	#100 ssin = 1'b0;
	#100 cc = 1'b1;
	#200 cc = 1'b0;
	#100 ssin = 1'b0;
	#100 cc = 1'b1;
	#200 cc = 1'b0;
	#100 ssin = 1'b1;
	#100 cc = 1'b1;
	#200 cc = 1'b0;
	#100 ssin = 1'b0;
	#100 cc = 1'b1;
	#200 cc = 1'b0;
	#100 ssin = 1'b1;
	#100 cc = 1'b1;
	#200 cc = 1'b0;
	#100 rr = 1'b1;
	#100 cc = 1'b1;
	#200 cc = 1'b0;
	#100 rr = 1'b0;
	#100 $stop;
	end
endmodule