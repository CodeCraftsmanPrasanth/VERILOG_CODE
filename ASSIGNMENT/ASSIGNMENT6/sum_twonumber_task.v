`timescale 1ns / 1ps
module sum2numberttask;
    reg [4:0] a,b;
    reg [4:0] c;
    task sum(input [4:0] x,y,output [4:0] z);
        z=x+y;
    endtask
    initial begin 
        a=10;b=20;
        sum(a,b,c);
        $display("%d,%d,%d",a,b,c);
        end
endmodule
