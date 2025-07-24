`timescale 1ns / 1ps
module Parity_Generator(input  [8:0] data_in,output even_parity,output odd_parity,output even_parity1,output odd_parity1);
    assign even_parity = ^data_in;
    assign odd_parity = ~^data_in;
    assign even_parity1 = (even_parity == 1'b1) ? 1'b1 : 1'b0;
    assign odd_parity1 = (even_parity == 1'b1) ? 1'b0 : 1'b1;
endmodule
