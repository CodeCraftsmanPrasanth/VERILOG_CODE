`timescale 1ns / 1ps
module mux4x1(input a,b,c,d,s1,s0, output out);
    wire ns1,sn0,e,f,g,h;
    not(ns1,s1);
    not(ns0,s0);
    and (e,ns1,ns0,a);
    and (f,ns1,s0,b);
    and (g,s1,ns0,c);
    and (h,s1,s0,d);
    or(out,e,f,g,h);
endmodule
