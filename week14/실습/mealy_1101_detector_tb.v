`timescale 1ns / 1ps

module mealy_1101_detector_tb;

reg x, rst, clk;
wire out;
wire [3:0] seq;

mealy_1101_detector u_test(
    .x (x), .rst (rst), .clk (clk),
    .out (out), .seq (seq)
);

initial begin
    x = 1'b1; rst = 1'b0; clk = 1'b0; // 시작할 때 값을 reset
    forever #20 clk = ~clk;
end

always@ (x) begin
    #100 x <= 1'b0;
    #25 x <= 1'b1;
end 

initial begin
    #50 rst = 1'b1;
    #300
    #100 rst = 1'b0;
    #50 rst = 1'b1;
    #400
    $finish;
end

endmodule
