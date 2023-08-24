`timescale 1ns/1ns
module tb3 ();
	logic [3:0] A = 4'b0100;
	logic [3:0] B = 4'b0000;
	wire ww1;
	wire ww2;
	comparator1 C1(A[0],A[1],A[2],A[3],B[0],B[1],B[2],B[3],ww1);
	comparator2 C2(A,B,ww2);
	initial begin
	#100 A[2]=0;
	#100 A[1]=1;
	#100 $stop;
	end
endmodule