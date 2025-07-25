`timescale 1ns / 1ps
module Encoder_8x3(input [7:0]b,output[2:0]a,[2:0]c);
    assign a[0]=b[1]|b[3]|b[5]|b[7];
    assign a[1]=b[2]|b[3]|b[6]|b[7];
    assign a[2]=b[4]|b[5]|b[6]|b[7];
    
    assign c[0]=b[1]|b[3]|b[5]|b[7]?1'b1:1'b0;
    assign c[1]=b[2]|b[3]|b[6]|b[7]?1'b1:1'b0;
    assign c[2]=b[4]|b[5]|b[6]|b[7]?1'b1:1'b0;
endmodule
