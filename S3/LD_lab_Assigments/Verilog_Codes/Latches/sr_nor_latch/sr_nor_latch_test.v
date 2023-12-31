module sr_nor_latch_test;
	reg s, r;
	wire q, q_;
	
	sr_nor_latch sr1 (s, r, q, q_);
	initial begin
		s = 1'b0; r = 1'b0; #10;
		s = 1'b0; r = 1'b1; #10;
		s = 1'b1; r = 1'b0; #10;
		s = 1'b0; r = 1'b0; #10;
		s = 1'b1; r = 1'b1; #10;
	end
endmodule
