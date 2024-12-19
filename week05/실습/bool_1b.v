`timescale 1ns / 1ps

module bool_1b(
    input a, b, c,
    output d
);

assign d = ~((a&b)|c);

endmodule
