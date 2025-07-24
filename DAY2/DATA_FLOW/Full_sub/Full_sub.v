`timescale 1ns / 1ps
module Full_sub(input a,b,c, output d,bor);
    assign {d,bor}={a^b^c,~a&c|~a&b|b&c};
endmodule
