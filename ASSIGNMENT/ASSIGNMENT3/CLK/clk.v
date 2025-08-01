`timescale 1ns / 1ps
module clk(output reg clk);
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Toggle clk every 5ns
    end
    initial begin
        #50 $finish;
    end
endmodule
