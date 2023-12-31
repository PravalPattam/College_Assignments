module four_bit_add_and_sub_test;
reg [3:0] a, b;
reg cin;
wire [4:0] s;
wire overflow;

four_bit_add_and_sub gate1 (a, b, cin, s, overflow);
integer i;
initial begin
	for (i = 0; i < 512; i = i + 1) 
		begin
			{a, b, cin} = i;
			#20;
		end
	end
endmodule
