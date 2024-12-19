`timescale 1ns / 1ps

module comparator(
    input a1, a2, b1, b2,
    output G, Z, S // greater, smaller, equals
    );

assign G = (a1&~b1) | (a2&~b1&~b2) | (a1&a2&~b2);
assign Z = (~a1 & ~a2 & ~b1 & ~b2) | (~a1 & a2 & ~b1 & b2) | (a1 & ~a2 & b1 & ~b2) | (a1 & a2 & b1 & b2); 
assign S = (~a1 & b1) | (~a2 & b1 & b2) | (~a1 & ~a2 & b2);

endmodule
