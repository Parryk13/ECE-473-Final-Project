// fetch id

module IF_ID (
	input [31:0] instruction,
	input clk,
	output reg write,
	output reg [31:0] instr);

	always @ (posedge clk)
	begin
		instr <= instruction;
		if(instruction[15:11]!=0)		
			write <= 1'b1;
	end

endmodule