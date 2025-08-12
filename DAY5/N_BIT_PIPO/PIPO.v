module PIPO(input [3:0]in, input clk,rst,output reg [3:0]out);
    parameter n=4;
    always @(posedge clk or posedge rst) begin
        if (rst) out<=0;
        else out <= in;
    end    
endmodule
