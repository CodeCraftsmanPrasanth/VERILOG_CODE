`timescale 1ns / 1ps
module or_gatelevel(input a,b, output s);
    supply1 vdd;
    supply0 gnd;
    wire w1,w2;
    pmos(w1,vdd,a);
    pmos(w2,w1,b);
    nmos(w2,gnd,a);
    nmos(w2,gnd,b);
    pmos(s,vdd,w2); 
    nmos(s,gnd,w2);     
endmodule
