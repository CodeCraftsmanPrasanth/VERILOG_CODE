`timescale 1ns / 1ps
module digital_stopwatchtb;
    reg start, stop,reset,clk;
    wire [9:0] milisec;
    wire [5:0] sec, min;
    digital_stopwatch uut(.start(start), .stop(stop), .reset(reset), .clk(clk),. milisec(milisec),.sec(sec), .min(min));
    always #500000 clk=~clk;
    initial begin
        clk=0;
        reset=1;
        start=0;
        stop=0; 
        #250000 reset=0;
        start=1;
        #1000000000 stop=1; start=0;
        #1000000000
        #1000000000
        #1000000000
        #1000000000
        #1000000000
        #1000000000
        #1000000000
        stop=0;
        #1000000000
        start=1;
        #1000000000
        #1000000000
        #1000000000
        #1000000000
        #1000000000
        #1000000000
        #1000000000
        stop=1;
        end       
endmodule
