`timescale 1ns / 1ps

module subtractor_tb;

reg [3:0] aa, bb;
reg bin;
wire [3:0] dd;
wire bout;

// 4-bit ripple carry adder
fullSub4 u_test (
    .a (aa), .b (bb), .bin (bin), .diff (dd), .bout (bout)
);

initial begin
    aa = 4'b0000;
    bb = 4'b0000;
    bin = 1'b0;
end

always@ (aa[3] or aa[2] or aa[1] or aa[0] or bb[3] or bb[2] or bb[1] or bb[0]) begin
    aa[3] <= #128 ~aa[3];
    aa[2] <= #64 ~aa[2];
    aa[1] <= #32 ~aa[1];
    aa[0] <= #16 ~aa[0];

    bb[3] <= #8 ~bb[3];
    bb[2] <= #4 ~bb[2];
    bb[1] <= #2 ~bb[1];
    bb[0] <= #1 ~bb[0];
end

initial begin
    #256
    $finish;
end

endmodule
