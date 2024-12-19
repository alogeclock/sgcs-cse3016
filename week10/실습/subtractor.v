`timescale 1ns / 1ps

// full adder
module fullSub (
    input a, b, bin,
    output diff, bout
);
    assign diff = a^b^bin;
    assign bout = (~a&b) | (~(a^b) & bin);
endmodule

// 4-bit ripple carry adder
module fullSub4 (
    input [3:0] a, b,
    input bin,
    output [3:0] diff, 
    output bout
);
    wire [2:0] borrow; // 내부 캐리 신호
    fullSub fs0(a[0], b[0], bin, diff[0], borrow[0]);
    fullSub fs1(a[1], b[1], borrow[0], diff[1], borrow[1]);
    fullSub fs2(a[2], b[2], borrow[1], diff[2], borrow[2]);
    fullSub fs3(a[3], b[3], borrow[2], diff[3], bout);
endmodule
