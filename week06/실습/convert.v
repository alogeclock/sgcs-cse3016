`timescale 1ns / 1ps

module convert(
    input a, b, c, d,
    output out1, out2, out3, out4
    );
    
assign out1 = a | (b&d) | (b&c);
assign out2 = a | (b&~d) | (b&c);
assign out3 = a | (~b&c) | (b&~c&d);
assign out4 = d;
    
endmodule
