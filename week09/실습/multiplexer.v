`timescale 1ns / 1ps

module multiplexer(
    input A, B, C, D, a, b, // selector1, selector2
    output out1
);

assign AND_A = A & ~a & ~b;
assign AND_B = B & ~a & b;
assign AND_C = C & a & ~b;
assign AND_D = D & a & b;

assign out1 = AND_A | AND_B | AND_C | AND_D; 

endmodule