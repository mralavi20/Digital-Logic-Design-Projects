`timescale 1ns/1ns
module nand_gate2 (input a,b,c, output w);
	wire y1,y2;
	supply1 Vdd;
	supply0 Gnd;
	pmos #(5,6,7) T1(w,Vdd,a);
	pmos #(5,6,7) T2(w,Vdd,b);
	pmos #(5,6,7) T3(w,Vdd,c);
	nmos #(3,4,5) T4(w,y2,a);
	nmos #(3,4,5) T5(y2,y1,b);
	nmos #(3,4,5) T6(y1,Gnd,c);
endmodule