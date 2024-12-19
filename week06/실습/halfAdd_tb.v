`timescale 1ns / 1ps

module halfAdd_tb;

reg aa, bb;
wire out1, out2;

halfAdd u_test(
    .a (aa), .b (bb),
    .out1 (out1), .out2 (out2)
);

initial begin
    aa = 1'b0;
    bb = 1'b0;
end

always@(aa or bb) begin
    aa <= #200 ~aa;
    bb <= #100 ~bb;
end

initial begin
    #400
    $finish;
end

endmodule