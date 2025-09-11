// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps
module consecutive_numbertb;
    reg x,clk,rst;
    wire y;
    consecutive_number uut( .x(x),.clk(clk),.rst(rst),.y(y));
    always #5 clk=~clk;
    initial begin
        clk=0;
        rst=1;
        #3 rst=0;
        x=0;
        #10 x=0;
        #10 x=0;
        #10 x=0;
        #10 x=0;
        #10 x=1;
        #10 x=1;
        #10 x=1;
        #10 x=1;
        #10 x=1;
    end
        
endmodule
