`timescale 1ns/1ns
module clatb2 ();
	logic [7:0] AA = 8'b00000000;
	logic [7:0] BB = 8'b00000000;
	logic ccin = 0;
	wire [7:0] WW;
	wire ccout;
	CLAdder C (AA, BB, ccin, WW, ccout);
	initial begin
	#100 AA = 8'b00110101;
	BB = 8'b11000001;
	#100 AA = 8'b11111111;
	BB = 8'b11111111;
	#100 AA = 8'b10101010;
	BB = 8'b00000000;
	#100 AA = 8'b00011001;
	BB = 8'b01010100;
	#100 AA = 8'b00000000;
	BB = 8'b00000000;
	#100 AA = 8'b00010001;
	BB = 8'b00000001;
	#100 AA = 8'b00000011;
	BB = 8'b00000011;
	#100 AA = 8'b11110000;
	BB = 8'b00001111;
	#100 $stop;
	end
endmodule