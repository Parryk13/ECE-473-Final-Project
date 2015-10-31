
module program_counter (
	input [7:0] addr,
	input clock, 
	input reset, 
	output [7:0] pc,
	output [3:0] HEX4, 
	output [3:0] HEX5);

	reg [7:0] out;
	
	assign HEX4 = out[3:0];
	assign HEX5 = out[7:4];
	assign pc = out[7:0];
	
	initial
	begin
		out = -4; 
	end
		
	always @ (posedge clock)
	begin
		if (reset)
		begin
			out <= 0;
		end
		else begin
			out <= addr;
		end
	end 
endmodule 

