module IF_ID(
input wire clock,
input wire [31:0] data_in,
output reg [31:0] data_out,
output reg [15:0] sign_in


);
	always @(posedge clock) begin
	data_out <= data_in;
	end
endmodule
	