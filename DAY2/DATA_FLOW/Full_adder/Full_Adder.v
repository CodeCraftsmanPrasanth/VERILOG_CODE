`timescale 1ns / 1ps
module Full_Adder(input a,b,c, output sum,carry);
    assign sum=a^b^c;
    assign carry= a&b|b&c|a&c;
endmodule
