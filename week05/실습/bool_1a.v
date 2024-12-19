`timescale 1ns / 1ps

module bool_1a(
    input a, b, c,
    output d
);

assign d = (~a|~b) & ~c;

endmodule
