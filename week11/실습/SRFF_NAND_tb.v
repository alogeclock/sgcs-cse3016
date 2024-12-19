`timescale 1ns / 1ps

module SRFF_NAND_tb;

reg S, R, clk;
wire Q, NQ;

SRFF_NAND u_test(
    .S (S), .R (R), .clk (clk),
    .Q (Q), .NQ (NQ)
);

initial begin
    S = 1'b0; R = 1'b0; clk = 1'b1;
    forever #25 clk = ~clk;
end

initial begin
    R = 1'b0; S = 1'b1; #100
    R = 1'b0; S = 1'b0; #100
    R = 1'b1; S = 1'b0; #100
    R = 1'b0; S = 1'b0; #100
    R = 1'b1; S = 1'b0; #100
    R = 1'b1; S = 1'b1; #100
    $finish;
end

endmodule