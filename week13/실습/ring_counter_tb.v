`timescale 1ns / 1ps

module ring_counter_tb;

reg rst, clk;
wire [3:0] out;

ring_counter u_test(
    .rst (rst), .clk (clk),
    .out (out)
);

initial begin
    rst = 1'b0; clk = 1'b0; // 시작할 때 값을 reset
    forever #20 clk = ~clk;
end

initial begin
    #50              // rst
    rst = 1'b1; #300 
    rst = 1'b0; #50  // rst
    rst = 1'b1; #300
    $finish;
end

endmodule
