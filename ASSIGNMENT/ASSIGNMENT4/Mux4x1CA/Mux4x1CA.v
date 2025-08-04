`timescale 1ns / 1ps

module GatesusingMux(input i3,i2,i1,i0,S1,S0, output Y );
    assign Y = S1 ? (S0 ? i3 : i2) : (S0 ? i1 : i0);
endmodule