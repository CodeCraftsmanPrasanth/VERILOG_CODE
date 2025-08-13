module NBIT_JOHNSONCounter
    #(parameter width=4)
    (input clk,rst,output reg [width-1:0]out);
    always @(posedge clk or posedge rst) begin
        if (rst) out<=0;
        else out<={~out[0],out[width-1:1]};
    end
endmodule