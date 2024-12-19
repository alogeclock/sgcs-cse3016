`timescale 1ns / 1ps

module demultiplexer_tb;

reg F, a, b;
wire A, B, C, D;

demultiplexer u_test (
    .F (F), .a (a), .b (b),
    .A (A), .B (B), .C (C), .D (D)
);

initial begin
    F = 1'b0;
    a = 1'b0;
    b = 1'b0;
end

always@ (F or a or b) begin
    F <= #400 ~F;
    a <= #200 ~a;
    b <= #100 ~b;
end

initial begin
    #800
    $finish;
end

endmodule