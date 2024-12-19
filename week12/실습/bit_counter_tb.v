`timescale 1ns / 1ps

module bit_counter_tb;

reg x, rst, clk;
wire [1:0] out;
wire z;

bit_counter u_test(
    .x (x), .rst (rst), .clk (clk),
    .out (out), .z (z)
);

initial begin
    x = 1'b1; rst = 1'b0; clk = 1'b0; // 시작할 때 값을 reset
    forever #20 clk = ~clk;
end

initial begin
    #50 rst = 1'b1;
    #300 x = 1'b0;
    #100 rst = 1'b0; x = 1'b1; // x를 0으로 두었을 때 값이 변하는지 확인
    #50 rst = 1'b1;
    #300 x = 1'b0;
    #100
    $finish;
end

endmodule
