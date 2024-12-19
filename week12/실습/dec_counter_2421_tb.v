`timescale 1ns / 1ps

module dec_counter_2421_tb;

reg x, clk, rst;
wire [3:0] out;
wire z;

dec_counter_2421 u_test(
    .x (x), .rst (rst), .clk (clk),
    .out (out), .z (z)
);

initial begin
    x = 1'b1; rst = 1'b0; clk = 1'b0; // ������ �� ���� reset
    forever #20 clk = ~clk;
end

initial begin
    #50 rst = 1'b1;
    #400 x = 1'b0;
    #100 rst = 1'b0; x = 1'b1; // x�� 0���� �ξ��� �� ���� ���ϴ��� Ȯ��
    #50 rst = 1'b1;
    #400 x = 1'b0;
    #100
    $finish;
end

endmodule
