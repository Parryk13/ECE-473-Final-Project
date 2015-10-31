// Id_Ex

module ID_EX (
	input [31:0] D1_in,
	input [31:0] D2_in,
	input [4:0] RD_in,
	input clk,
	output reg write,
	output reg [31:0] D1_out,
	output reg [31:0] D2_out,
	output reg [4:0] RD_out);

	always @ (posedge clk)
	begin
		D1_out <= D1_in;
		D2_out <= D2_in;
		RD_out <= RD_in;
		if(RD_in[4:0]==0)		
			write <= 1'b0;
		else 
			write <= 1'b1;

	end

endmodule