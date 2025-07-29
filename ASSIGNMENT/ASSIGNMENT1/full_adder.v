`timescale 1ns / 1ps
module full_adder(input a,b,c, output sum,carry);
    wire w2,w3,w4;
    xor (sum,a,b,c);
    and(w2,a,b);
    and(w3,a,c);
    and(w4,c,b);
    or(carry,w2,w3,w4);
endmodule
