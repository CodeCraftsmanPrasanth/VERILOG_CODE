`timescale 1ns / 1ps
module dutycycle60( input clk, reset, output reg clkout );
    reg [3:0] counter;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            counter<=0;
            clkout<=0;
        end
        else begin
            if (counter < 9) counter<=counter+1;
            else counter<=0;
            if (counter <6) clkout<=1;
            else clkout<=0;
        end
    end
endmodule
