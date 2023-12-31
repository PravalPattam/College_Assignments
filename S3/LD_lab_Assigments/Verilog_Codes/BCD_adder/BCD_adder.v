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

module four_bit_ripple_adder ( input [3:0] a, b, input cin, output [3:0] s, output cout);
	wire c1, c2, c3;
	
	full_add fa1 ( a[0], b[0], 1'b0, s[0], c1);
	full_add fa2 ( a[1], b[1], c1, s[1], c2);
	full_add fa3 ( a[2], b[2], c2, s[2], c3);
	full_add fa4 ( a[3], b[3], c3, s[3], cout);
endmodule

module BCD_adder_main(input [3:0] a, b, output [3:0] s1, s2);
	wire [3:0] si;
	wire w1, w2, w3, x;
	
	four_bit_ripple_adder g1 (a, b, 1'b0, si, w3);
	and a1 (w1, si[1], si[3]);
	and a2 (w2, si[2], si[3]);
	or o1 (x, w1, w2, w3);
	wire [3:0] wi = {1'b0, x, x, 1'b0};
	wire discard;
	four_bit_ripple_adder g2 (si, wi, 1'b0, s1, discard);
	assign s2 = {1'b0, 1'b0, 1'b0, x};
endmodule

module BCD_adder (input [3:0] a, b, output reg [3:0] s1, s2);
wire [3:0] wo1, wo2;
	BCD_adder_main g1 (a, b, wo1, wo2);
	always @* begin
		if (a > 4'b1001 || b > 4'b1001)
		begin
			s1 = 4'bxxxx;
			s2 = 4'bxxxx;
		end
		else
		begin
			s1 = wo1;
			s2 = wo2;
		end
	end	
endmodule	