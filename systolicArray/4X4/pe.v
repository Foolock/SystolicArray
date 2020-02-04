module pe(
input clk,
input rst,
input[15:0] in_a,
input[15:0] in_b,
output reg[15:0] out_a,
output reg[15:0] out_b,
output reg[32:0] out_c
);


always@(posedge clk or negedge rst)
begin
if(!rst) begin
	out_a <= 0;
	out_b <= 0;
	out_c <= 0;
end
else begin
	out_a <= in_a;
	out_b <= in_b;
	out_c <= out_c + in_a*in_b;
end
end

endmodule
