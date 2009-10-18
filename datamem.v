

module datamemory (
	input [31:0] ADDR,
	input [31:0] WD,
	input MemWrite,
	input MemRead,
	input clock,
	output [31:0] RD);

	
	reg [31:0] memory [1:12]; 
	reg [31:0] rd;
	integer i, data;
	
	
	assign RD = rd;
	
initial
	begin 
	$readmemh("date1.txt", memory);
end	

	always @(posedge clock)
		begin
			if (MemRead)
				begin
					rd <= memory[ADDR+1];
				end
		end
	

endmodule

