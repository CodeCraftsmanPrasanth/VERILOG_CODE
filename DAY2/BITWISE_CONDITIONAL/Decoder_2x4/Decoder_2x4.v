`timescale 1ns / 1ps
module Decoder_2x4(input a,b,e, output c,d,f,g,h,i,j,k);    
    assign c=(~a&~b&e)? 1'b1:1'b0;
    assign d=(~a&b&e)? 1'b1:1'b0;
    assign f=(a&~b&e)? 1'b1:1'b0;
    assign g=(a&b&e)? 1'b1:1'b0;
    
    assign h=(~a&~b&e);
    assign i=(~a&b&e);
    assign j=(a&~b&e);
    assign k=(a&b&e);
endmodule
