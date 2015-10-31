// MEM_WB

module MEM_WB (
	input write,
	input [31:0] D2_in,
	input [4:0] RD_in,
	input clk,
	output reg wren,
	output reg [31:0] D2_out,
	output reg [4:0] RD_out);

	always @ (posedge clk)
	begin
		D2_out <= D2_in;
		RD_out <= RD_in;
		wren <= write;
		
	end

endmodule