`timescale 1ns/1ns
module dlatch_tb ();
	logic dd = 0;
	logic cc = 1;
	wire qq;
	dlatch G (dd, cc, qq);
	initial begin
	#300 cc = 1'b0;
	#100 dd = 1'b1;
	#100 dd = 1'b0;
	#100 cc = 1'b1;
	#100 $stop;
	end
endmodule