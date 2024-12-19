`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/18 14:15:37
// Design Name: 
// Module Name: AND_four
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module AND_four(
    input a, b, c, d,
    output x, y, z
    );
    
assign x = a&b;
assign y = x&c;
assign z = y&d;

endmodule
