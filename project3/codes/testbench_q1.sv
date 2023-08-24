`timescale 1ns/1ns
module clatb1 ();
	logic [3:0] aa = 4'b0000;
	logic [3:0] bb = 4'b0000;
	logic ccin = 0;
	wire [3:0] ww;
	wire ccout;
	cla1 CLA (aa, bb, ccin, ww, ccout);
	initial begin
	#100 aa = 4'b0000;
	bb = 4'b1111;
	#100 aa = 4'b1001;
	bb = 4'b1001;
	#100 aa = 4'b1100;
	bb = 4'b1010;
	#100 aa = 4'b1011;
	bb = 4'b0010;
	#100 aa = 4'b0111;
	bb = 4'b0011;
	#100 aa = 4'b1111;
	bb = 4'b1111;
	#100 aa = 4'b1010;
	bb = 4'b0101;
	#100 aa = 4'b1010;
	bb = 4'b0000;
	#100 $stop;
	end
endmodule