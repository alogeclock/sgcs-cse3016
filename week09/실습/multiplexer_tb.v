`timescale 1ns / 1ps

module multiplexer_tb;

reg A, B, C, D, a, b;
wire out1;

multiplexer u_test (
    .A (A), .B (B), .C (C), .D (D), .a (a), .b (b),
    .out1 (out1)    
);

initial begin
    A = 1'b0;
    B = 1'b0;
    C = 1'b0;
    D = 1'b0;
    a = 1'b0;
    b = 1'b0;
end

always@ (A or B or C or D or a or b) begin
    A <= #160 ~A;
    B <= #80 ~B;
    C <= #40 ~C;
    D <= #20 ~D;
    a <= #10 ~a;
    b <= #5 ~b;
end

initial begin
    #320
    $finish;
end

endmodule
