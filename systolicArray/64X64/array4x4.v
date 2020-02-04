module array4x4(
input		clk,rst,
input[15:0] a1, a2, a3, a4,
input[15:0] b1, b2, b3, b4,
output[15:0] outa1, outa2, outa3, outa4,
output[15:0] outb1, outb2, outb3, outb4,
output wire[32:0] c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16
);


wire[15:0]	a12, a13, a14, a22, a23, a24, a32, a33, a34, a42, a43, a44, b21, b31, b41, b22, b32, b42, b23, b33, b43, b24, b34, b44;

pe pe1 (.clk(clk), .rst(rst), .in_a(a1), .in_b(b1), .out_a(a12), .out_b(b21), .out_c(c1));
pe pe2 (.clk(clk), .rst(rst), .in_a(a12), .in_b(b2), .out_a(a13), .out_b(b22), .out_c(c2));
pe pe3 (.clk(clk), .rst(rst), .in_a(a13), .in_b(b3), .out_a(a14), .out_b(b23), .out_c(c3));
pe pe4 (.clk(clk), .rst(rst), .in_a(a14), .in_b(b4), .out_a(outa1), .out_b(b24), .out_c(c4));
pe pe5 (.clk(clk), .rst(rst), .in_a(a2), .in_b(b21), .out_a(a22), .out_b(b31), .out_c(c5));
pe pe6 (.clk(clk), .rst(rst), .in_a(a22), .in_b(b22), .out_a(a23), .out_b(b32), .out_c(c6));
pe pe7 (.clk(clk), .rst(rst), .in_a(a23), .in_b(b23), .out_a(a24), .out_b(b33), .out_c(c7));
pe pe8 (.clk(clk), .rst(rst), .in_a(a24), .in_b(b24), .out_a(outa2), .out_b(b34), .out_c(c8));
pe pe9 (.clk(clk), .rst(rst), .in_a(a3), .in_b(b31), .out_a(a32), .out_b(b41), .out_c(c9));
pe pe10 (.clk(clk), .rst(rst), .in_a(a32), .in_b(b32), .out_a(a33), .out_b(b42), .out_c(c10));
pe pe11 (.clk(clk), .rst(rst), .in_a(a33), .in_b(b33), .out_a(a34), .out_b(b43), .out_c(c11));
pe pe12 (.clk(clk), .rst(rst), .in_a(a34), .in_b(b34), .out_a(outa3), .out_b(b44), .out_c(c12));
pe pe13 (.clk(clk), .rst(rst), .in_a(a4), .in_b(b41), .out_a(a42), .out_b(outb1), .out_c(c13));
pe pe14 (.clk(clk), .rst(rst), .in_a(a42), .in_b(b42), .out_a(a43), .out_b(outb2), .out_c(c14));
pe pe15 (.clk(clk), .rst(rst), .in_a(a43), .in_b(b43), .out_a(a44), .out_b(outb3), .out_c(c15));
pe pe16 (.clk(clk), .rst(rst), .in_a(a44), .in_b(b44), .out_a(outa4), .out_b(outb4), .out_c(c16));


endmodule
