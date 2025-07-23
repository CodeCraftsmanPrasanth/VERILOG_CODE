`timescale 1ns / 1ps
module exor_gatelevel(input a,b, output s);
    wire na,nb,p1,n1,n2;
    supply1 vdd;
    supply0 gnd;
    
    pmos(na,vdd,a);
    nmos(na,gnd,a);
    pmos(nb,vdd,b);
    nmos(nb,gnd,b);
    
    pmos(p1,vdd,a);
    pmos(p1,vdd,b);
    pmos(s,p1,na);
    pmos(s,p1,nb);
    
    nmos(s,n1,a);
    nmos(n1,gnd,b);
    nmos(s,n2,na);
    nmos(n2,gnd,nb);
    
endmodule
