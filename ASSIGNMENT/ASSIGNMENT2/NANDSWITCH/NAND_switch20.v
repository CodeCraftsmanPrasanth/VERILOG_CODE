`timescale 1ns / 1ps
module NAND_switch20(input a,b,output out,out1);
    wire x;
    supply1 vdd;
    supply0 gnd;
    pmos(out,vdd,a);
    pmos(out,vdd,b);
    nmos(out,x,a);
    nmos(x,gnd,b);  
    nand(out1,a,b);  
endmodule
