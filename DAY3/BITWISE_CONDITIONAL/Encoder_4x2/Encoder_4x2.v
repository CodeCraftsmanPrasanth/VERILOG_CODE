`timescale 1ns / 1ps
module Encoder_4x2(input [3:0]b,output[1:0]a,[1:0]c);
    assign a[0]=b[1]|b[3];
    assign a[1]=b[2]|b[3];
    assign c[0]=b[1]|b[3]? 1'b1:1'b0;
    assign c[1]=b[2]|b[3]? 1'b1:1'b0;
endmodule
