module EX_MEM ( 
	input wire clock,
	input wire [31:0] data_in_1,
	input wire [31:0] data_in_2,
	input wire [4:0] RD,
	input wire write_in,
	output reg [31:0] data_out_1,
	output reg [31:0] data_out_2,
	output reg write_out,
	output reg [4:0] RD_out);
	
always @(posedge clock) begin
	data_out_1 <= data_in_1;
	data_out_2 <= data_in_2;
	RD_out <= RD;
	write_out <= write_in;

end
endmodule