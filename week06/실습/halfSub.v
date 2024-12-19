`timescale 1ns / 1ps

module halfSub(
    input a, b,
    output out1, out2
);

assign out1 = a^b; // difference
assign out2 = (~a)&b; // borrow out

endmodule
