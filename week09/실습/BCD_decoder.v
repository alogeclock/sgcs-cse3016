`timescale 1ns / 1ps

module BCD_decoder(
    input A8, A4, A2, A1,
    output out1, out2, out3, out4, out5, out6, out7, out8, out9
);

assign out1 = ~A8 & ~A4 & ~A2 & A1;
assign out2 = ~A8 & ~A4 & A2 & ~A1;
assign out3 = ~A8 & ~A4 & A2 & A1;
assign out4 = ~A8 & A4 & ~A2 & ~A1;
assign out5 = ~A8 & A4 & ~A2 & A1;
assign out6 = ~A8 & A4 & A2 & ~A1;
assign out7 = ~A8 & A4 & A2 & A1;
assign out8 = A8 & ~A4 & ~A2 & ~A1;
assign out9 = A8 & ~A4 & ~A2 & A1;
    
endmodule
