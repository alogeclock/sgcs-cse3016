`timescale 1ns / 1ps;

module BCD_decoder_tb;

reg A8, A4, A2, A1;
wire out1, out2, out3, out4, out5, out6, out7, out8, out9;

BCD_decoder u_test (
    .A8 (A8), .A4 (A4), .A2 (A2), .A1 (A1),
    .out1 (out1), .out2 (out2), .out3 (out3), .out4 (out4), .out5 (out5), .out6 (out6), .out7 (out7), .out8 (out8), .out9 (out9)
);

initial begin
    A8 = 1'b0;
    A4 = 1'b0;
    A2 = 1'b0;
    A1 = 1'b0;
end

always@ (A8 or A4 or A2 or A1) begin
    A8 <= #400 ~A8;
    A4 <= #200 ~A4;
    A2 <= #100 ~A2;
    A1 <= #50 ~A1;
end

initial begin
    #800
    $finish;
end

endmodule