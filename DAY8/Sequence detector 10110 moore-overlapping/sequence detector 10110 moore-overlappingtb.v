`timescale 1ns / 1ps
module seq_detector_10110tb;
    reg x,clk,rst;
    wire y;
    seq_detector_10110 uut( .x(x),.clk(clk),.rst(rst),.y(y));
    always #5 clk=~clk;
    initial begin
        clk=0;
        rst=1;
        #3 rst=0;
        x=0;
        #10 x=1;
        #10 x=0;
        #10 x=1;
        #10 x=1;
        #10 x=0;
        #10 x=1;
        #10 x=1;
        #10 x=0;
        #10 x=1;
        #10 x=1;
        #10 x=1;
        #10 x=1;
        #10 x=1;        
    end
endmodule
