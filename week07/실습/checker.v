`timescale 1ns / 1ps

module checker(
    input a, b, c, d, e, // e: even parity
    output out1 // parity check 
    );

assign out1 = a^b^c^d^e;

endmodule

