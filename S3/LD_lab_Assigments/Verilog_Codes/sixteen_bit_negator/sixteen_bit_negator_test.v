module sixteen_bit_negator_test;
reg [15:0] a;
wire [15:0] b;

sixteen_bit_negator gate1 (a, b);

integer i;
initial begin
	for (i = 0; i < 65536; i = i + 1) 
		begin
			{a} = i;
			#20;
		end
	end
endmodule
