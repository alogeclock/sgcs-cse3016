`timescale 1ns / 1ps

module demultiplexer(
    input F, a, b,
    output A, B, C, D
);

assign A = F & ~a & ~b; 
assign B = F & a & ~b; 
assign C = F & ~a & b;
assign D = F & a & b;

endmodule
