`timescale 1ns/1ns
module register2_tb ();
	logic cc = 1'b0;
	logic rr = 1'b0;
	logic [7:0] AA = 8'b0;
	wire [7:0] WW1;
	wire [7:0] WW2;
	register2 R1 (cc, rr, AA, WW1);
	register3 R2 (cc, rr, AA, WW2);
	initial begin
	#100 AA = 8'b11001111;
	#100 cc = 1'b1;
	#200 cc = 1'b0;
	#100 AA = 8'b11111111;
	#100 cc = 1'b1;
	#200 cc = 1'b0;
	#100 AA = 8'b10001001;
	#100 cc = 1'b1;
	#200 cc = 1'b0;	
	#100 AA = 8'b00000001;
	#100 cc = 1'b1;
	#200 cc = 1'b0;
	#100 rr = 1'b1;
	#100 cc = 1'b1;
	#200 cc = 1'b0;
	#100 $stop;
	end
endmodule