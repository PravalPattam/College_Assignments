module andgate(output c, input a, b);
	wire a_, b_;
	nor n1 (a_, a, a);
	nor n2 (b_, b, b);
	nor n3 (c, a_, b_);
endmodule

module gated_sr_nor_latch(input s, r, en, output q, q_);
	wire es, er;
	
	andgate a1 (es, s ,en);
	andgate a2 (er, r, en);
	
	nor n4 (q_, es, q);
	nor n5 (q, er, q_);

endmodule
