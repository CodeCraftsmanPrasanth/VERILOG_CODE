`timescale 1ns / 1ps
module mux2x1(input a,b,s, output o);
    wire ns,i0,i1;
    not (ns,s);
    and(i0,a,ns);
    and(i1,b,s);
    or(o,i0,i1);    
endmodule
