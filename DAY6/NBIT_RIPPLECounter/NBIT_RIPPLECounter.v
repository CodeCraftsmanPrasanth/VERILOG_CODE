module RIPPLEUPCounter(input clk,rst,output [3:0]out);
    ee a1(.clk(clk),.rst(rst),.q(out[0]));
    rr a2(.clk(out[0]),.rst(rst),.q(out[1]));
    rr a3(.clk(out[1]),.rst(rst),.q(out[2]));
    rr a4(.clk(out[2]),.rst(rst),.q(out[3]));
endmodule

module ee(input clk,rst,output reg q);
    always @(posedge clk or posedge rst) begin
        if (rst) q<=0;
        else q<=~q;
    end
endmodule
module rr(input clk,rst,output reg q);
    always @(negedge clk or posedge rst) begin
        if (rst) q<=0;
        else q<=~q;
    end
endmodule