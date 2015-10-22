// Register File
 
module registerarray(   
	// inputs
	input wire clock,     
	input wire reset, 
	input wire write,	     
	input wire [4:0] read_address_1,
	input wire [4:0] read_address_2,
	input wire [31:0] write_data_in,
	input wire [4:0] write_address,
	input wire [4:0] read_address_debug,
	input wire clock_debug,
	// outputs
	output reg [31:0] data_out_1,
	output reg [31:0] data_out_2,
	output reg [31:0] data_out_debug
);  
	
	reg[31:0] regarray[31:0];   // creates the 32 registers 
	
	initial begin
	integer i = 0;
	for(i=0; i<32;i=1+i)begin
		regarray[i] = i;
	end
	end
	always @(posedge clock) begin         
		if (reset == 1'b1) begin             
			integer i = 0;
			for(i=0; i<32;i=1+i)begin
				regarray[i] = i;
			end
			
		end else if (write == 1'b1) begin
			regarray[write_address] <= write_data_in;  // write data in is going into the 5 bit write address
		end
	end
	always @(negedge clock) begin    
		if (write == 1'b0) begin 
			data_out_1 <= regarray[read_address_1];
			data_out_2 <= regarray[read_address_2];
			data_out_debug <= regarray[read_address_debug];
		end
	end
endmodule