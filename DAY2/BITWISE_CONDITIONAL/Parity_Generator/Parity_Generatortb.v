`timescale 1ns / 1ps
module Parity_Generatortb;
    reg [8:0] data_in;
    wire even_parity;
    wire odd_parity;
    wire even_parity1;
    wire odd_parity1;
    Parity_Generator uut (
        .data_in(data_in),
        .even_parity(even_parity),
        .odd_parity(odd_parity),
        .even_parity1(even_parity1),
        .odd_parity1(odd_parity1)
    );
    initial begin
        data_in = 9'b000001100;
        #10;
        data_in = 9'b000000111;
        #10;
        data_in = 9'b111111111;
        #10;
        data_in = 9'b000000000;
        #10;
        data_in = 9'b101010101;
        #10;
        $finish;
    end
endmodule