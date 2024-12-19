`timescale 1ns / 1ps

module halfAdd(
    input a, b,
    output out1, out2 
);

assign out1 = a^b; // sum
assign out2 = a&b; // carry out

endmodule
