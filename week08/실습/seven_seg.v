`timescale 1ns / 1ps

module seven_seg(
    input a, b, c, d,
    output A, B, C, D, E, F, G, DP, digit
    );
    
assign A = (~b & ~d) | (~a & c) | (a & ~d) | (b & c) | (a & ~b & ~c) | (~a & b & d);
assign B = (~b & ~c) | (~b & ~d) | (~a & ~c & ~d) | (~a & c & d) | (a & ~c & d);
assign C = (~b & ~c) | (~b & d) | (~c & d) | (~a & b) | (a & ~b);
assign D = (~b & ~c & ~d) | (~a & c & ~d) | (~b & c & d) | (b & ~c & d) | (a & b & ~d);
assign E = (~b & ~d) | (c & ~d) | (a & c) | (a & b);
assign F = (~c & ~d) | (b & ~d) | (a & ~b) | (a & c) | (~a & b & ~c);
assign G = (~b & c) | (c & ~d) | (a & ~b) | (a & d) | (~a & b & ~c);
assign DP = 1;

assign digit = A | B | C | D | E | F | G;

endmodule
