`timescale 1ns / 1ps
module dutycycle60tb;
    reg clk,reset;
    wire clkout;
    dutycycle60 uut(.clk(clk), .reset(reset), .clkout(clkout) );
    always #5 clk=~clk;
    initial begin
        clk=0;
        reset=1;
        #6 reset=0;
    end
endmodule
