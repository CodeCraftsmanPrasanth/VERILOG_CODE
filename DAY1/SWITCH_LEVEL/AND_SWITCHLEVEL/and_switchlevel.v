`timescale 1ns / 1ps
module and_switchlevel(input a,b, output s);
    wire w1,w2;
    supply1 vdd;
    supply0 gnd;
    pmos(w1,vdd,a);
    pmos(w1,vdd,b);
    nmos(w1,w2,a);
    nmos(w2,gnd,b);
    pmos(s,vdd,w1);
    nmos(s,gnd,w1);
endmodule
