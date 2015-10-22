module program_counter (
	input clock, 
	input reset, 
	output [3:0] HEX4, 
	output [3:0] HEX5);

	reg [7:0] out;
	
	assign HEX4 = out[3:0];
	assign HEX5 = out[7:4];
	
	initial
	begin
		out = -4; 
	end
		
	always @ (posedge clock)
	begin
		out <= out + 4;
		if (reset)
		begin
			out <= 0;
		end
	end 
endmodule 

