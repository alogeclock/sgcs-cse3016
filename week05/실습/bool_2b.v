`timescale 1ns / 1ps

module bool_2b(
    input a, b, c,
    output d
    );
   
assign d = ~((a|b)&c);

endmodule
