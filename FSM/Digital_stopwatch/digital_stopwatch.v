`timescale 1ns / 1ps
module digital_stopwatch(input start, stop, reset, clk,
    output reg [9:0] milisec, 
    output reg [5:0] sec, min);
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            milisec<=0;
            sec<=0;
            min<=0;
            end
        else begin
            if (~stop) begin
                if (start) begin
                    if (milisec == 999) begin
                            sec<=sec+1;
                            milisec<=0;
                        end
                    else milisec<=milisec+1;
                    if (sec==59) begin
                        min<=min+1;
                        sec<=0;
                        end
                    end
                end
            end
    end
                
endmodule
