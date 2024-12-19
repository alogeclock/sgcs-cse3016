`timescale 1ns / 1ps

module fullAdd_tb;

reg aa, bb, cc;
wire out1, out2;

fullAdd u_test(
    .a (aa), .b (bb), .c (cc),
    .out1 (out1), .out2 (out2)
);

initial begin
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
end

always@(aa or bb or cc) begin
    aa <= #200 ~aa;
    bb <= #100 ~bb;
    cc <= #50 ~cc;
end

initial begin
    #400
    $finish;
end

endmodule