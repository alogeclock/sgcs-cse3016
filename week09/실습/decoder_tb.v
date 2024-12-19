`timescale 1ns / 1ps

module decoder_tb;

reg A, B;
wire D0, D1, D2, D3;

decoder u_test (
    .A (A), .B (B),
    .D0 (D0), .D1 (D1), .D2 (D2), .D3 (D3)
);

initial begin
    A = 1'b0;
    B = 1'b0;
end

always@ (A or B) begin
    A <= #400 ~A;
    B <= #200 ~B;
end

initial begin
    #800
    $finish;
end

endmodule
