`timescale 1ns / 1ps

module checker_tb;

reg aa, bb, cc, dd, ee;
wire out1;

checker u_test(
.a (aa), .b (bb), .c (cc), .d (dd), .e (ee),
.out1 (out1)
);

initial begin
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
    dd = 1'b0;
    ee = 1'b0;
end

always@(aa or bb or cc or dd or ee) begin
    aa <= #400 ~aa;
    bb <= #200 ~bb;
    cc <= #100 ~cc;
    dd <= #50 ~dd;
    ee <= #25 ~ee;
end

initial begin
    #800
    $finish;
end

endmodule