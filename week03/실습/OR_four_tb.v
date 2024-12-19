`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/18 15:01:37
// Design Name: 
// Module Name: OR_four_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module OR_four_tb;

reg aa, bb, cc, dd;
wire xx, yy, zz;

OR_four u_test(
.a (aa), .b (bb), .c (cc), .d (dd),
.x (xx), .y (yy), .z (zz)
);

initial begin
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
    dd = 1'b0;
end

always@(aa or bb or cc or dd) begin
    aa <= #50 ~aa;
    bb <= #100 ~bb;
    cc <= #150 ~cc;
    dd <= #200 ~dd;
end

initial begin
    #1000
    $finish;
end

endmodule