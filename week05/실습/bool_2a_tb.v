`timescale 1ns / 1ps

module bool_2a_tb;

reg aa, bb, cc;
wire dd;

bool_2a u_test(
.a (aa), .b (bb), .c (cc), .d (dd)
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
