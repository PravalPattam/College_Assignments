module notgate(output b, input a);
	nand n1 (b, a, a);
endmodule

module sixteen_bit_negator(input [15:0] a, output [15:0] b);
	notgate g1(b[0],a[0]);
	notgate g2(b[1],a[1]);
	notgate g3(b[2],a[2]);
	notgate g4(b[3],a[3]);
	
	notgate g5(b[4],a[4]);
	notgate g6(b[5],a[5]);
	notgate g7(b[6],a[6]);
	notgate g8(b[7],a[7]);
	
	notgate g9(b[8],a[8]);
	notgate g10(b[9],a[9]);
	notgate g11(b[10],a[10]);
	notgate g12(b[11],a[11]);
	
	notgate g13(b[12],a[12]);
	notgate g14(b[13],a[13]);
	notgate g15(b[14],a[14]);
	notgate g16(b[15],a[15]);
	
endmodule
