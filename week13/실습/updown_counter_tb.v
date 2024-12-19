`timescale 1ns / 1ps

module updown_counter_tb;

reg up, down, rst, clk;
wire [3:0] out;
wire [6:0] seg;
wire dp, digit;

updown_counter u_test(
    .up (up), .down (down), .rst (rst), .clk (clk),
    .out (out), .seg (seg), .dp (dp), .digit (digit)
);

initial begin
    up = 1'b0; down = 1'b0; rst = 1'b0; clk = 1'b0;
    forever #20 clk = ~clk;
end

initial begin
    #50
    rst = 1'b1; up = 1'b1; #400  // up
    up = 1'b0; down = 1'b1; #400 // down 
    down = 1'b0; rst = 1'b0; #50 // rst
    $finish;
end

endmodule
