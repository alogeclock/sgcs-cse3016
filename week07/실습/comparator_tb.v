`timescale 1ns / 1ps

module comparator_tb;

reg a1, a2, b1, b2;
wire G, Z, S;

comparator u_test(
.a1 (a1), .a2 (a2), .b1 (b1), .b2 (b2),
.G (G), .Z (Z), .S (S)
);

initial begin
    a1 = 1'b0;
    a2 = 1'b0;
    b1 = 1'b0;
    b2 = 1'b0;
end

always@(a1 or a2 or b1 or b2) begin
    a1 <= #400 ~a1;
    a2 <= #200 ~a2;
    b1 <= #100 ~b1;
    b2 <= #50 ~b2;
end

initial begin
    #800
    $finish;
end

endmodule