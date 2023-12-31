module half_add (input a, b, output s, c);
	xor g1(s, a, b);
	and g2(c, a, b);
endmodule

module full_add ( input a, b, cin, output s, c);
	wire wire1, wire2, wire3;
	
	half_add ha1 ( a, b, wire1, wire2);
	half_add	ha2 ( wire1, cin, s, wire3);
	or or1 (c, wire2, wire3);
endmodule

module four_bit_ripple_adder ( input [3:0] a, b, input cin, output [4:0] s);
	wire c1, c2, c3;
	
	full_add fa1 ( a[0], b[0], 1'b0, s[0], c1);
	full_add fa2 ( a[1], b[1], c1, s[1], c2);
	full_add fa3 ( a[2], b[2], c2, s[2], c3);
	full_add fa4 ( a[3], b[3], c3, s[3], s[4]);
endmodule
