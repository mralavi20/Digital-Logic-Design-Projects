`timescale 1ns/1ns
module moore_machine_tb ();
	logic cc = 1'b0;
	logic rr = 1'b0;
	logic jj;
	wire ww;
	moore_machine M1 (cc, rr, jj, ww);
	initial begin
	#20 rr = 1'b1;
	#20 rr = 1'b0;
	#20 jj = 1'b1;
	#40 cc = 1'b1;
	#100 cc = 1'b0;
	#50 jj = 1'b1;
	#50 cc = 1'b1;
	#100 cc = 1'b0;
	#50 jj = 1'b0;
	#50 cc = 1'b1;
	#100 cc = 1'b0;
	#50 jj = 1'b0;
	#50 cc = 1'b1;
	#100 cc = 1'b0;
	#50 jj = 1'b1;
	#50 cc = 1'b1;
	#100 cc = 1'b0;
	#50 jj = 1'b0;
	#50 cc = 1'b1;
	#100 cc = 1'b0;
	#50 jj = 1'b1;
	#50 cc = 1'b1;
	#100 cc = 1'b0;
	#50 jj = 1'b0;
	#50 cc = 1'b1;
	#100 cc = 1'b0;
	#50 jj = 1'b1;
	#50 cc = 1'b1;
	#100 cc = 1'b0;
	#50 jj = 1'b1;
	#50 cc = 1'b1;
	#100 cc = 1'b0;
	#50 jj = 1'b0;
	#50 cc = 1'b1;
	#100 cc = 1'b0;
	#100 cc = 1'b1;
	#100 cc = 1'b0;
	#100 $stop;
	end
endmodule