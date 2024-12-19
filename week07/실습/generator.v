`timescale 1ns / 1ps

module generator(
    input a, b, c, d,
    output out1 // even parity
    );

assign out1 = a^b^c^d;

endmodule
