`timescale 1ns / 1ps
module Demux_1x8(input a,[2:0]s, output[7:0]b,c);
    assign b[0]=a&~s[2]&~s[1]&~s[0];
    assign b[1]=a&~s[2]&~s[1]&s[0];
    assign b[2]=a&~s[2]&s[1]&~s[0];
    assign b[3]=a&~s[2]&s[1]&s[0];
    assign b[4]=a&s[2]&~s[1]&~s[0];
    assign b[5]=a&s[2]&~s[1]&s[0];
    assign b[6]=a&s[2]&s[1]&~s[0];
    assign b[7]=a&s[2]&s[1]&s[0];
    
    assign c[0]=(a&~s[2]&~s[1]&~s[0])==1?1'b1:1'b0;
    assign c[1]=(a&~s[2]&~s[1]&s[0])==1?1'b1:1'b0;
    assign c[2]=(a&~s[2]&s[1]&~s[0])==1?1'b1:1'b0;
    assign c[3]=(a&~s[2]&s[1]&s[0])==1?1'b1:1'b0;
    assign c[4]=(a&s[2]&~s[1]&~s[0])==1?1'b1:1'b0;
    assign c[5]=(a&s[2]&~s[1]&s[0])==1?1'b1:1'b0;
    assign c[6]=(a&s[2]&s[1]&~s[0])==1?1'b1:1'b0;
    assign c[7]=(a&s[2]&s[1]&s[0])==1?1'b1:1'b0;
endmodule
