// Code your design here
module mhz(input clk,rst, output reg oclk);
    reg [31:0] count;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            count<=0;
            oclk<=0;
        end
        else begin
            if (count==250000) begin
            oclk<=~oclk;
            count<=0;
            
            end
            else count<=count+1;
        end
    end
endmodule 
