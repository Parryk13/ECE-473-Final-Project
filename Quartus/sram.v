//  SRAM CONTOLLER 

module sram(
	//inputs
	input wire clock, 
	input wire clock_en,
	input wire [11:0] address,
	input wire blank_addr_1,
	input wire blank_addr_0,
	input wire chip_select,
	input wire column_addr,
	input wire row_addr,
	input wirewrite_enable,
	input wire [15:0] data,
	input wire high_data_mask,
	input wire low_data_mask
);
/*
//states
localparam [1:0]  state_idle  = 3'b00,
						state_read  = 3'b01,
						state_write = 3'b10;
						
reg [2:0]   state_reg, state_next;
reg [15:0]  data_write_reg,   data_write_next;
reg [15:0]  data_read_reg, data_read_next;
reg [17:0]  addr_reg, addr_next;
reg we_next, oe_next, tri_next;
reg we_reg, oe_reg, tri_reg;

always@(posedge clk, negedge reset_n)
if(!reset_n)
	begin
		state_reg <= state_idle;
		addr_reg <= 0;
		data_write_reg <= 0;
		data_read_reg <= 0;
		we_reg <= 1'b1;
		oe_reg <= 1'b1;
		tri_reg <= 1'b1;
	end
else
	begin
		state_reg <= state_next;
		addr_reg  <= addr_next;
		data_write_reg <= data_write_next;
		data_read_reg <= data_read_next;
		we_reg <= we_next;
		oe_reg <= oe_next;
		tri_reg <= tri_next;
	end
		
//next state values and outputs
always@*
begin
	//default values
	addr_next = addr_reg;
	data_write_next = data_write_reg;
	data_read_next = data_read_reg;
	ready = 1'b0;
	oe_next = 1'b1;
	we_next = 1'b1;
	tri_next = 1'b1;
	//state machine
case(state_reg)		
	state_idle:
	begin
		ready = 1'b1;
		oe_next = 1'b1;
		if(start_n)  						
			state_next = state_reg;
		else
			begin
			  addr_next = addr_in;
			  if(rw == 1)
				begin
					state_next = state_read;  //BEGIN READ PROCESS
					oe_next = 1'b0;   
				end	
			  else
			   begin  								
					state_next = state_write;	// BEGIN WRITE PROCESS
					data_write_next = data_write;
					we_next = 1'b0;
					tri_next = 1'b0;
				end
			end
	end
	state_read:
		begin
			state_next = state_idle;
			data_read_next = data_io;
			oe_next = 1'b1;
		end
	state_write:
		begin
			state_next = state_idle;
			tri_next = 1'b0;
		end
	default: 
		state_next = state_idle;
endcase
end

//outputs
assign ce_a_n = 1'b0; 
assign ub_a_n = 1'b0;
assign lb_a_n = 1'b0;
assign oe_n = oe_reg;
assign we_n = we_reg;
assign sram_addr = addr_reg;
assign data_read = data_read_reg;

assign data_io =  (!tri_reg) ? data_write_reg : 16'bz;
endmodule
*/
endmodule
