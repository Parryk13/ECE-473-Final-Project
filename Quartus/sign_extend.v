module Sign_Extend
(
 input wire [15:0] in,
 output reg [31:0] out



);

always @ (*) begin

	out<=in;
	
end
endmodule