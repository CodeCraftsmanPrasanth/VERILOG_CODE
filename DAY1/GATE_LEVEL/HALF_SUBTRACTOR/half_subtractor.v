`timescale 1ns / 1ps
module half_subtractor(input a,b, output d,bor);
    wire a1;
    xor (d,a,b);
    not(a1,a);
    and(bor,a1,b);
endmodule
