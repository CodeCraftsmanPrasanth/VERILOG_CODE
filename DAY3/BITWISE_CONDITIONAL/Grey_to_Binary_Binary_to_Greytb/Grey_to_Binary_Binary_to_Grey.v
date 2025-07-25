`timescale 1ns / 1ps
module Grey_to_Binary_Binary_to_Grey(input [3:0]b,g, output [3:0]b1,g1);
    
    assign g1[3]=b[3];
    assign g1[2]=b[3]^b[2];
    assign g1[1]=b[2]^b[1];
    assign g1[0]=b[1]^b[0];
    
    assign b1[3]=g[3];
    assign b1[2]=g[2]^b1[3];
    assign b1[1]=g[1]^b1[2];
    assign b1[0]=g[0]^b1[1];
endmodule
