`timescale 1ns / 1ps

module DFF (
    input D, clk,
    output Q, NQ
);

SRFF_NOR f1(.S (D), .R (~D), .clk (clk), .Q (Q) , .NQ (NQ));

endmodule