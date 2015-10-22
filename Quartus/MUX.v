module fivemux(
	input a, 
	input b, 
	input sel, 
	output reg c);
	
always@(*) begin
	if(sel) begin
		c = a;
	end
	else begin
		c = b;
	end
end

endmodule