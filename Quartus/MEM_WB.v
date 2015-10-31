module MEM_WB (
	input wire clock,
	input wire [31:0] data_in_2,
	input wire [4:0] RD,
	input wire write_en,
	output reg [31:0] data_out_2,
	output reg [4:0] RD_out,
	output reg write_eb);
	
always @(posedge clock) begin
	write_eb <= write_en;
	data_out_2 <= data_in_2;
	RD_out <= RD;
	
	end
	endmodule
	