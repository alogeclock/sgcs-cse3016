`timescale 1ns / 1ps

module SRFF_NAND (
    input S, R, clk,
    output reg Q, NQ
);

always@ (posedge clk) begin
    Q <= ~(~S & NQ);
    NQ <= ~(~R & Q);
end

endmodule
