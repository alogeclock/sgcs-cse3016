`timescale 1ns / 1ps

module fullSub(
    input a, b, c, // c: borrow in
    output out1, out2
);

assign out1 = (a^b)^c; // difference
assign out2 = (~a&b) | (~(a^b) & c); // borrow out

endmodule
