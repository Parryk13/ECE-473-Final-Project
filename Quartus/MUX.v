
module MUX(
	input wire clock,
	input wire[4:0] one_one,
	input wire[4:0] zero_zero,
	input wire[4:0] one_zero,
	input wire[4:0] zero_one,
	input wire power_1,
	input wire power_2,
	output reg [4:0] out);
	
	always @ (posedge clock) begin
		if(power_1 ==1'b1) begin
			if(power_2==1'b1) begin
				out <= one_one;
			end else if (power_2 == 1'b0) begin
				out <= one_zero;
			end
		end else if (power_1 == 1'b0) begin
				if(power_2 == 1'b1) begin
					out <= zero_one;
				end else if (power_2 == 1'b0) begin
					out <= zero_zero;
				end
			end
		end 
endmodule
	
	