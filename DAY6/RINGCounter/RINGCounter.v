module RINGCounter
    #(parameter width=5)
    (input clk,rst,output reg [width-1:0] out);
    always @(posedge clk or posedge rst) begin
        if (rst) out <= 5'b00001;
        else out<={out[0],out[width-1:1]};
    end        
endmodule
