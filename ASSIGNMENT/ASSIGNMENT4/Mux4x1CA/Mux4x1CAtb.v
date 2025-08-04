`timescale 1ns / 1ps
module GatesusingMuxtb;
    reg i0,i1,i2,S0,S1,i3;
    wire Y;
    GatesusingMux uut(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.S0(S0),.S1(S1),.Y(Y));
    initial begin 
        i0=0;i1=1;i2=0;i3=1;
        S1=0;S0=0;#10
        S1=0;S0=1;#10
        S1=1;S0=0;#10
        S1=1;S0=1;#10  
        $finish;
        end  
endmodule
