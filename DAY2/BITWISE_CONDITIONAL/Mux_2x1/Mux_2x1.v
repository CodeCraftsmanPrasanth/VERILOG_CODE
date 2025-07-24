`timescale 1ns / 1ps
module Mux_2x1(input a,b,s, output c,d);
    assign c=s?a:b;
    assign d=(a&~s|b&s);
endmodule
