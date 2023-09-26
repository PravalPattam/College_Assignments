module bcd_to_excess_three_test;
	reg [3:0] bcd;
	wire [3:0] ex3;

	bcd_to_excess_three g1 (bcd, ex3);
	integer i = 0;
	initial begin
		for (i = 0; i < 16; i = i + 1)
		begin
				{bcd} = i;
				#20;
		end
	end
endmodule
	