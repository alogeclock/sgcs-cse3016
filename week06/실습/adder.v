`timescale 1ns / 1ps

// full adder
module fullAdd (
    input a, b, cin,
    output sum, cout
);
    assign sum = a^b^cin;
    assign cout = (a&b) | ((a^b) & cin);
endmodule

// 4-bit ripple carry adder
module fullAdd4 (
    input [3:0] a, b,
    input cin,
    output [3:0] sum, 
    output cout
);
    wire [2:0] carry; // 내부 캐리 신호

    fullAdd fa0(a[0], b[0], cin, sum[0], carry[0]);
    fullAdd fa1(a[1], b[1], carry[0], sum[1], carry[1]);
    fullAdd fa2(a[2], b[2], carry[1], sum[2], carry[2]);
    fullAdd fa3(a[3], b[3], carry[2], sum[3], cout;

endmodule
