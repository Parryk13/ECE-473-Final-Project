module ID_EX(
	input wire clock,
	input wire [31:0] data_in_1,
	input wire [31:0] data_in_2,
	input wire [4:0] RD,
	input wire [31:0] sign_Ex,
	output reg [31:0]data_out_1,
	output reg [31:0]data_out_2,
	output reg write_en,
	
	output reg [4:0] RD_out);
	
always @ (posedge clock) begin
	if(RD>5'b0) begin
	write_en <= 1'b1;
	end else begin
	write_en <= 1'b0;
	end 
	RD_out<=RD;
	data_out_1 <= data_in_1;
	data_out_2 <= data_in_2;
	end
always @ (negedge clock) begin
	RD_out<=RD_out;
	data_out_1 <= data_out_1;
	data_out_2 <= data_out_2;
	end
endmodule
	