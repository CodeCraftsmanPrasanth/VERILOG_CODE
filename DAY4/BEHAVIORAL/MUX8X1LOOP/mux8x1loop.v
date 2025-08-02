`timescale 1ns / 1ps
module mux8x1loop(input [7:0]a,input [2:0]s,output reg y);
    integer i; 
    always @(*) begin
        for (i=0;i<8;i=i+1) 
            if (s == i) 
                y = a[i];
    end
endmodule
