module top_overall(
input			clk, rst,
input[15:0] 	idata,
input[15:0]		wdata,
input[6:0]		addr_in,
input[6:0]		addr_out,
input			we, oe,
output wire[32:0]	c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16,
output wire[15:0] 	l0,l1,l2,l3,l4,l5,l6,l7,
output wire[15:0]	checkwire
);

wire[15:0]	q0,q1,q2,q3,q4,q5,q6,q7;
reg[15:0]	q0_d, q1_d, q1_dd, q2_d, q2_dd, q2_ddd, q3_d, q3_dd, q3_ddd, q3_dddd, q4_d, q5_d, q5_dd, q6_d, q6_dd, q6_ddd, q7_d, q7_dd, q7_ddd, q7_dddd;

assign l0 = q0_d;
assign l1 = q1_dd;
assign l2 = q2_ddd;
assign l3 = q3_dddd;
assign l4 = q4_d;
assign l5 = q5_dd;
assign l6 = q6_ddd;
assign l7 = q7_dddd;


ramInput uut11(
.clk(clk),
.data(idata),
.addr_in(addr_in),
.addr_out(addr_out),
.we(we),
.oe(oe),
.q0(q0),
.q1(q1),
.q2(q2),
.q3(q3),
.checkwire(checkwire)
);

ramWeight uut12(
.clk(clk),
.data(wdata),
.addr_in(addr_in),
.addr_out(addr_out),
.we(we),
.oe(oe),
.q0(q4),
.q1(q5),
.q2(q6),
.q3(q7)
);

top uut2(
.clk(clk),
.rst(rst),
.a1(q0_d),
.a2(q1_dd),
.a3(q2_ddd),
.a4(q3_dddd),
.b1(q4_d),
.b2(q5_dd),
.b3(q6_ddd),
.b4(q7_dddd),
.c1(c1),
.c2(c2),
.c3(c3),
.c4(c4),
.c5(c5),
.c6(c6),
.c7(c7),
.c8(c8),
.c9(c9),
.c10(c10),
.c11(c11),
.c12(c12),
.c13(c13),
.c14(c14),
.c15(c15),
.c16(c16)
);

//最后我想了一个很傻逼的办法
//q0_d
always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		q0_d <= 0;
	end
	else 
		q0_d <= q0;
end

//q1_dd
always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		q1_d <= 0;
	end
	else 
		q1_d <= q1;
end

always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		q1_dd <= 0;
	end
	else 
		q1_dd <= q1_d;
end

//q2_ddd
always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		q2_d <= 0;
	end
	else 
		q2_d <= q2;
end

always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		q2_dd <= 0;
	end
	else 
		q2_dd <= q2_d;
end

always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		q2_ddd <= 0;
	end
	else 
		q2_ddd <= q2_dd;
end

//q3_dddd
always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		q3_d <= 0;
	end
	else 
		q3_d <= q3;
end

always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		q3_dd <= 0;
	end
	else 
		q3_dd <= q3_d;
end

always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		q3_ddd <= 0;
	end
	else 
		q3_ddd <= q3_dd;
end

always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		q3_dddd <= 0;
	end
	else 
		q3_dddd <= q3_ddd;
end

//q4_d
always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		q4_d <= 0;
	end
	else 
		q4_d <= q4;
end

//q5_dd
always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		q5_d <= 0;
	end
	else 
		q5_d <= q5;
end

always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		q5_dd <= 0;
	end
	else 
		q5_dd <= q5_d;
end

//q6_ddd
always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		q6_d <= 0;
	end
	else 
		q6_d <= q6;
end

always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		q6_dd <= 0;
	end
	else 
		q6_dd <= q6_d;
end

always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		q6_ddd <= 0;
	end
	else 
		q6_ddd <= q6_dd;
end

//q7_dddd
always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		q7_d <= 0;
	end
	else 
		q7_d <= q7;
end

always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		q7_dd <= 0;
	end
	else 
		q7_dd <= q7_d;
end

always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		q7_ddd <= 0;
	end
	else 
		q7_ddd <= q7_dd;
end

always@(posedge clk or negedge rst)
begin
	if(!rst) begin
		q7_dddd <= 0;
	end
	else 
		q7_dddd <= q7_ddd;
end

endmodule