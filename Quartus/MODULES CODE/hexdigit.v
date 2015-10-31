// file hexdigit.v 
module hexdigit (     
	input wire [3:0] in,     
	output reg [6:0] out);  
	
	always @* begin         
		if (in == 4'h0) begin               // check hex value input  
			out = 7'b1000000;                // outputs a 0
		end else if (in == 4'h1) begin      // check hex value input          
			out = 7'b1111001;                // outputs a 1
		end else if (in == 4'h2) begin      // check hex value input    
			out = 7'b0100100;                // outputs a 2	
		end else if (in == 4'h3) begin      // check hex value input          
			out = 7'b0110000;                // outputs a 3
		end else if (in == 4'h4) begin      // check hex value input    
			out = 7'b0011001;                // outputs a 4
		end else if (in == 4'h5) begin      // check hex value input          
			out = 7'b0010010;                // outputs a 5
		end else if (in == 4'h6) begin      // check hex value input    
			out = 7'b0000010;                // outputs a 6
		end else if (in == 4'h7) begin      // check hex value input          
			out = 7'b1111000;                // outputs a 7
		end else if (in == 4'h8) begin      // check hex value input    		       
			out = 7'b0000000;                // outputs a 8
		end else if (in == 4'h9) begin      // check hex value input    
			out = 7'b0011000;                // outputs a 9
		end else if (in == 4'hA) begin      // check hex value input          
			out = 7'b0001000;                // outputs a A
		end else if (in == 4'hB) begin      // check hex value input    
			out = 7'b0000011;                // outputs a B
		end else if (in == 4'hC) begin      // check hex value input    		       
			out = 7'b1000110;                // outputs a C
		end else if (in == 4'hD) begin      // check hex value input    
			out = 7'b0100001;                // outputs a D
		end else if (in == 4'hE) begin      // check hex value input          
			out = 7'b0000110;                // outputs a E
		end else if (in == 4'hF) begin      // check hex value input  
			out = 7'b0001110;                // outputs a F
		end else begin
			out = 7'b1111111;                // default output zeros
		end
	end

endmodule	