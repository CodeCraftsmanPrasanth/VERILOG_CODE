`timescale 1ns / 1ps
module Decoder_3x8(input [2:0]a, output [7:0]b,c);
    assign b[0]=~a[2]&~a[1]&~a[0];
    assign b[1]=~a[2]&~a[1]&a[0];
    assign b[2]=~a[2]&a[1]&~a[0];
    assign b[3]=~a[2]&a[1]&a[0];
    assign b[4]=a[2]&~a[1]&~a[0];
    assign b[5]=a[2]&~a[1]&a[0];
    assign b[6]=a[2]&a[1]&~a[0];
    assign b[7]=a[2]&a[1]&a[0];

    assign c[0]=(~a[1]&~a[2]&~a[0])?1'b1:1'b0;
    assign c[1]=(~a[2]&~a[1]&a[0])==1?1'b1:1'b0;
    assign c[2]=(~a[2]&a[1]&~a[0])==1?1'b1:1'b0;
    assign c[3]=(~a[2]&a[1]&a[0])==1?1'b1:1'b0;
    assign c[4]=(a[2]&~a[1]&~a[0])==1?1'b1:1'b0;
    assign c[5]=(a[2]&~a[1]&a[0])==1?1'b1:1'b0;
    assign c[6]=(a[2]&a[1]&~a[0])==1?1'b1:1'b0;
    assign c[7]=(a[2]&a[1]&a[0])==1?1'b1:1'b0;
    
endmodule
