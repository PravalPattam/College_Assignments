module d_flip_flop_With_async_preset_clear (input d, pre, clr, clk, output reg q, q_);
	always @ (*)
		begin
			if(pre == 0 && clr == 0 && clk != 0)
				q <= d;
			else if(pre == 1 && clr == 1)
				q <= 1'bx;
			else if(pre == 1)
				q <= 1'b1;
			else if(clr == 1)
				q <= 1'b0;
		end
	always @ (*) 
		q_ <= ~q;
endmodule
