`timescale 1ns / 1ps

module onebit(
    input a, b,
    output c, d, e, f
    );

assign c = ~(a^b);
assign d = a^b;
assign e = a&(~b); // a�� 1�̰� b�� 0�̸� 1, �ƴϸ� 0
assign f = (~a)&b; // a�� 0�̰� b�� 1�̸� 0, �ƴϸ� 1

endmodule
