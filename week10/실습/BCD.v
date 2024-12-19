`timescale 1ns / 1ps

module BCD (
    input [3:0] a, b,
    input cin,
    output [3:0] sum,
    output cout
    );
    wire [3:0] m_sum, c;
    wire m_cout, garbage; 
    
    fullAdd4 fa4_0(a, b, cin, m_sum, m_cout);
    assign cout = m_cout | (m_sum[3] & m_sum[2]) | (m_sum[3] & m_sum[1]);

    assign c[3] = 0;
    assign c[2] = cout;
    assign c[1] = cout;
    assign c[0] = 0;
     
    fullAdd4 fa4_1(c, m_sum, 0, sum, garbage);
endmodule
