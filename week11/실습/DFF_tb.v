`timescale 1ns / 1ps

module DFF_tb;

reg D, clk;
wire Q, NQ;

DFF u_test(
    .D (D), .clk (clk),
    .Q (Q), .NQ (NQ)
);

initial begin
    D = 1'b0; clk = 1'b1;
    forever #25 clk = ~clk;
end

initial begin
    D = 1'b0; #100
    D = 1'b0; #100
    D = 1'b1; #100
    D = 1'b0; #100
    D = 1'b1; #100
    D = 1'b1; #100
    $finish;
end

endmodule
