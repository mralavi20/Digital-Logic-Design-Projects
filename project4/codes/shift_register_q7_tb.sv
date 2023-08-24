`timescale 1ns/1ns
module shift_register_tb ();
	logic cc = 1;
	logic ssin;
	wire ssout;
	wire [7:0] P;
	shift_register S (cc, ssin, ssout, P); 
	initial begin
	#200 cc = 1'b0;
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
	#100 $stop;
	end
endmodule