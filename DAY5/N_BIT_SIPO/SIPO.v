module SIPO(input in,clk,rst, output reg [3:0]out);
    parameter n=4;
    always @(posedge clk or posedge rst) begin
        if (rst) out<=4'b0;
        else out<={in,out[n-1:1]};
    end    
endmodule
