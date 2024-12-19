`timescale 1ns / 1ps

module shift_register_tb;

reg x, rst, clk;
wire [3:0] out;

shift_register u_test(
    .x (x), .rst (rst), .clk (clk),
    .out (out)
);

initial begin
    x = 1'b1; rst = 1'b0; clk = 1'b0; // 시작할 때 값을 reset
    forever #20 clk = ~clk;
end

always@ (x) begin
    #100 x <= ~x;
end 

initial begin
    #50 rst = 1'b1;
    #300
    #100 rst = 1'b0; x = 1'b1; // x를 0으로 두었을 때 값이 변하는지 확인
    #50 rst = 1'b1;
    #300
    #100
    $finish;
end

endmodule
