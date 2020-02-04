`timescale 1ns/100ps
module tb2;

//input
reg			clk;
reg			rst;
reg[15:0] 	idata;
reg[15:0]	wdata;
reg[6:0]	addr_in;
reg[6:0]	addr_out;
reg			we, oe;
wire[31:0]	c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16;
wire[15:0] 	l0,l1,l2,l3,l4,l5,l6,l7;
wire[15:0]	checkwire;

integer i = 0;

//unit under test
top_overall uut(
.clk(clk),
.rst(rst),
.idata(idata),
.wdata(wdata),
.addr_in(addr_in),
.addr_out(addr_out),
.we(we),
.oe(oe),
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
.c16(c16),
.l0(l0),
.l1(l1),
.l2(l2),
.l3(l3),
.l4(l4),
.l5(l5),
.l6(l6),
.l7(l7),
.checkwire(checkwire)
);

initial begin
	we = 0;
	oe = 0;
	#10	  we = 1;
	#990 we = 0; oe = 1; 
end

initial begin
	rst = 0;
	#25 rst = 1;
end

initial begin
//clock cycle = 50ns
	clk = 0;
	forever #25 clk = ~clk;
end

//addr_in
initial begin
	addr_in = 7'b0000000;
	#50	addr_in = 7'b0000001;
	#50	addr_in = 7'b0000010;
	#50	addr_in = 7'b0000011;
	#50	addr_in = 7'b0000100;
	#50	addr_in = 7'b0000101;
	#50	addr_in = 7'b0000110;
	#50	addr_in = 7'b0000111;
	#50	addr_in = 7'b0001000;
	#50	addr_in = 7'b0001001;
	#50	addr_in = 7'b0001010;
	#50	addr_in = 7'b0001011;
	#50	addr_in = 7'b0001100;
	#50	addr_in = 7'b0001101;
	#50	addr_in = 7'b0001110;
	#50	addr_in = 7'b0001111;
	#50 addr_in = 7'b0010000;
	#50 addr_in = 7'b0010001;
	#50 addr_in = 7'b0010010;
	#50 addr_in = 7'b0010011;
	#50	addr_in = 7'bzzzzzzz;
end

//addr_out
initial begin
	addr_out = 7'b0000000;
	#1050 addr_out = 7'b0000001;
	#50 addr_out = 7'b0000010;
	#50 addr_out = 7'b0000011;
	#50 addr_out = 7'b0000100;
//	#50 addr_out = 7'bzzzzzzz;
end

initial begin
//input ram
	idata = 16'h011c;
	#50	idata = 16'h0239;
	#50	idata = 16'h0355;
	#50	idata = 16'h0472;
	#50 idata = 16'h0000;
	#50	idata = 16'h058e;
	#50	idata = 16'h06aa;
	#50	idata = 16'h07c7;
	#50	idata = 16'h08e3;
	#50 idata = 16'h0000;
	#50	idata = 16'h011c;
	#50	idata = 16'h0239;
	#50	idata = 16'h0355;
	#50	idata = 16'h0472;
	#50 idata = 16'h0000;
	#50	idata = 16'h058e;
	#50	idata = 16'h06aa;
	#50	idata = 16'h07c7;
	#50	idata = 16'h08e3;
	#50 idata = 16'h0000;
end

initial begin
//weight ram
	wdata = 16'h011c;
	#50 wdata = 16'h011c;
	#50 wdata = 16'h011c;
	#50 wdata = 16'h011c;
	#50 wdata = 16'h0000;
	#50 wdata = 16'h011c;
	#50 wdata = 16'h011c;
	#50 wdata = 16'h011c;
	#50 wdata = 16'h011c;
	#50 wdata = 16'h0000;
	#50 wdata = 16'h011c;
	#50 wdata = 16'h011c;
	#50 wdata = 16'h011c;
	#50 wdata = 16'h011c;
	#50 wdata = 16'h0000;
	#50 wdata = 16'h011c;
	#50 wdata = 16'h011c;
	#50 wdata = 16'h011c;
	#50 wdata = 16'h011c;
	#50 wdata = 16'h0000;
end


endmodule
	

