`timescale 1ns / 1ps

module SRFF_NOR (
    input S, R, clk,
    output reg Q, NQ
);

always@ (posedge clk) begin
    Q = ~(R | NQ);
    NQ = ~(S | Q);
end
    
endmodule
