`timescale 1ns / 1ps
module Ripple_Carry_adder(input [3:0]a,b, output c,[3:0]s);
    wire [3:0]cin;
    assign cin[0]=1'b0;
    assign s[0]=a[0]^b[0]^cin[0];
    assign cin[1]=a[0]&b[0]|a[0]&cin[0]|b[0]&cin[0];
    assign s[1]=a[1]^b[1]^cin[1];
    assign cin[2]=a[1]&b[1]|a[1]&cin[1]|b[1]&cin[1];  
    assign s[2]=a[2]^b[2]^cin[2];
    assign cin[3]=a[2]&b[2]|a[2]&cin[2]|b[2]&cin[2];  
    assign s[3]=a[3]^b[3]^cin[3];
    assign c=a[3]&b[3]|a[3]&cin[3]|b[3]&cin[3];     
endmodule
