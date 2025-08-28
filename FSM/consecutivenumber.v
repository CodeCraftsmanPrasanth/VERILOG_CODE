`timescale 1ns / 1ps
module consecutivenumber(input x,clk,rst,output reg y);
    parameter s0=3'b000,
              s1=3'b001,
              s2=3'b010,
              s3=3'b011,
              s4=3'b100;
    reg [2:0] ps,ns;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            ns<=s0;
            y<=0;
        end
        else begin
            case (ns)
                s0: if (~x) begin ns<=s3; y<=0; end
                    else begin ns<=s1; y<=0; end
                s1: if (~x) begin ns<=s3;  y<=0; end
                    else begin ns<=s2;  y<=0; end
                s2: if (~x) begin ns<=s3;  y<=0; end
                    else begin 
                        ns<=s2;
                        y<=1;
                    end
                s3: if (~x) begin ns<=s4;  y<=0; end
                    else begin ns<=s1;  y<=0; end
                s4: if (~x) begin ns<=s4;  y<=1; end
                    else begin ns<=s1;
                         y<=0;
                     end
            endcase
        end
    end    
endmodule
