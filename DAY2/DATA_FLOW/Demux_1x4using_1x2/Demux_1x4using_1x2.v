`timescale 1ns / 1ps
module Demux_1x4using_1x2(input a,s0,s1, output i0,i1,i2,i3);
    assign i0=(~s0&~s1)? a:1'b0;
    assign i1=(s0&~s1)? a:1'b0;
    assign i2=(s1&~s0)? a:1'b0;
    assign i3=(s1&s0)? a:1'b0; 
endmodule
