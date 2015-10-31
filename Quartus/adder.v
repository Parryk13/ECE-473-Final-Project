module adder (
input wire [31:0] data_in_1,
input wire [31:0] data_in_2,
input wire clock,
output reg [31:0] sum,
output reg [31:0] data_out_1,
output reg [31:0] data_out_2);


always @(*)	begin
			sum <=data_in_1+data_in_2;
			data_out_1 <= data_in_1;
			data_out_2 <= data_in_2; 
end
endmodule