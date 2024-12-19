`timescale 1ns / 1ps

module onebit(
    input a, b,
    output c, d, e, f
    );

assign c = ~(a^b);
assign d = a^b;
assign e = a&(~b); // a가 1이고 b가 0이면 1, 아니면 0
assign f = (~a)&b; // a가 0이고 b가 1이면 0, 아니면 1

endmodule
