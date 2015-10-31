// Adder

module adder(
	input [31:0] D1_in,
	input [31:0] D2_in,
	output reg [31:0] D1_out,
	output reg [31:0] D2_out);

	always @(*) 
	begin
		D2_out <= D1_in + D2_in;
		D1_out <= D1_in;
	end

endmodule













/*
//ALU
//000 AND
//001 OR
//010 add
//110 sub
//111 set on less than
//2 32 bit bus in and one out

module ALU (
	input [1:0] operation,
	input [31:0] x, 
	input [31:0] y, 
	output reg [31:0] RESULT, 
	output reg zero);
	
//	parameter AND = 4'b0000;
//	parameter OR  = 4'b0001;
//	parameter ADD = 4'b0010;
//	parameter SUB = 4'b0011;
	
always @(x,y,operation)
begin
case(operation)
	AND : RESULT = x & y;
	OR : RESULT = x | y;
	ADD : RESULT = x + y;
	SUB : RESULT = x - y;

	default;
endcase
	zero = RESULT[0];
end
endmodule
*/