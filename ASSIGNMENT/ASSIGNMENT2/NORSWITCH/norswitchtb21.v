`timescale 1ns / 1ps

module switch_nor_tb;
    reg a,b;
    wire out;
    
    
 swich_nor uut(.a(a),.b(b),.out(out));
 
 initial begin
    //test case
    a=0; b=0; #20;
    a=0; b=1; #20;
    a=1; b=0; #20;
    a=1; b=1; #20;
    $finish;
    end
endmodule
