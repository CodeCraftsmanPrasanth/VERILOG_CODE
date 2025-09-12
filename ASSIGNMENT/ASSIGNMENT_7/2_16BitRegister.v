module register(input clk,rst,output reg [15:0] q);
    always @(posedge clk or posedge clk) begin
        if (rst) begin
            q<=0;
        end
        else q<=q+1;
    end
endmodule
