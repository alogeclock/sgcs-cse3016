`timescale 1ns / 1ps

module fullAdd(
    input a, b, c, // c: carry in
    output out1, out2 
);

assign out1 = (a^b)^c; // sum
assign out2 = (a&b) | ((a^b) & c); // carry out

endmodule
