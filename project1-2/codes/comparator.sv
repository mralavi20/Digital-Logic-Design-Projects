`timescale 1ns/1ns
module comparator1 (input a0,a1,a2,a3,b0,b1,b2,b3,  output w);
	wire y1,y2,y3,y4,y5,z1,z2,z3,z4,z5,t1,t2,t3,t4,t5,m1,m2,m3,m4,m5,n1,n2,n3;
	nand_gate1 N1(a0,a0,y1), N2(b0,b0,y2), N3(a0,b0,y3), N4(y1,y2,y4), N5(y3,y4,y5);
	nand_gate1 N6(a1,a1,z1), N7(b1,b1,z2), N8(a1,b1,z3), N9(z1,z2,z4), N10(z3,z4,z5);
	nand_gate1 N11(a2,a2,t1), N12(b2,b2,t2), N13(a2,b2,t3), N14(t1,t2,t4), N15(t3,t4,t5);
	nand_gate1 N16(a3,a3,m1), N17(b3,b3,m2), N18(a3,b3,m3), N19(m1,m2,m4), N20(m3,m4,m5);
	nand_gate2 N21(y5,z5,t5,n1);
	nand_gate1 N22(n1,n1,n2), N23(n2,m5,n3), N24(n3,n3,w);
endmodule