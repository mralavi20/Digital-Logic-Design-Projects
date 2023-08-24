`timescale 1ns/1ns
module alu_tb ();
	logic [7:0] AA = 8'b00000000;
	logic [7:0] BB = 8'b00000000;
	logic [2:0] FF = 3'b000;
	wire [7:0] WW;
	wire zz;
	wire cc;
	alu A (AA, BB, FF, WW, cc, zz);
	initial begin
	repeat (8) begin
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
	FF = FF + 1;
	end
	#200 $stop;
	end
endmodule