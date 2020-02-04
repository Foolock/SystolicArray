module ramWeight(
input 				clk,
input[15:0]			data,
input[6:0]			addr_in,
input[6:0]			addr_out,
input				we,oe,
output wire[15:0] 	q0,q1,q2,q3
);

reg[15:0]	ram[19:0]; //20 block for 4X4 array. The last block every row is 0;


always@(posedge clk)
begin
	if(we) begin
		ram[addr_in] <= data;
	end
end

assign	q0 = oe? ram[addr_out]:{16{1'b0}};
assign	q1 = oe? ram[addr_out+5]:{16{1'b0}};
assign	q2 = oe? ram[addr_out+10]:{16{1'b0}};
assign	q3 = oe? ram[addr_out+15]:{16{1'b0}};
endmodule