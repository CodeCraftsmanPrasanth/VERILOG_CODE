`timescale 1ns / 1ps
module full_subtractor(input a,b,bin, output d,bor);
    wire w1,nw1,w2,w3;
    xor (w1,a,b);
    xor(d,w1,bin);
    not(nw1,w1);
    not(na,a);
    and(w3,nw1,bin);
    and(w2,na,b);
    or(bor,w3,w2);
endmodule
