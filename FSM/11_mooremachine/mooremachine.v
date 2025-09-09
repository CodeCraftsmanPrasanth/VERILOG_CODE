`timescale 1ns / 1ps
module Qn11(input j,k,clk,rst, output out);
    parameter on=1,off=0;
    reg ps,ns;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            ps<=off;
        end
        else ps<=ns;
    end
    always @(*) begin
        case (ps)
            off: if (j) ns<=on;
                 else ns<=off;
            on: if (k) ns<=off;
                 else ns<=on;
        endcase
    end
    assign out=(ps==on);
endmodule
