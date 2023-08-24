`timescale 1ns/1ns
module lfsr_tb ();
	logic cc = 1'b0;
	logic rr = 1'b0;
	logic ll = 1'b0;
	logic [7:0] PI = 8'b00000001;
	wire [7:0] PO;
	lfsr L (cc, rr, ll, PI, PO);
	initial begin
	#50 ll = 1'b1;
	#50 cc = 1'b1;
	#100 cc = 1'b0;
	#100 ll = 1'b0;
	repeat (260) #100 cc = ~cc;
	end
endmodule