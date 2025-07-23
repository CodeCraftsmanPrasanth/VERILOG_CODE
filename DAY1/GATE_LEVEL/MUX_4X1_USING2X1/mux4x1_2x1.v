`timescale 1ns / 1ps
module mux4x1_2x1(input a,b,c,d,s1,s0, output out);
    wire a1,a2,a3,a4,a5,a6,o1,o2,ns1,ns2;
    not (ns1,s1);
    and(a1,a,ns1);
    and(a2,b,s1);
    or (o1,a1,a2);
    and(a3,c,ns1);
    and(a4,d,s1);
    or (o2,a3,a4);
    not (ns0,s0);
    and(a5,o1,ns0);
    and(a6,o2,s0);
    or (out,a5,a6);
endmodule
