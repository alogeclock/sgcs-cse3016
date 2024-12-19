`timescale 1ns / 1ps

module onebit_tb;

reg aa, bb;
wire cc, dd, ee, ff;

onebit u_test(
.a (aa), .b (bb), .c (cc), .d (dd), .e (ee), .f (ff)
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
