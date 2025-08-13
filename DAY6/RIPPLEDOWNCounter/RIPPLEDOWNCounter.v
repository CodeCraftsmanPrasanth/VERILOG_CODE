module RIPPLEDOWNCounter(input clk,rst,output [3:0]out);
    tff a1(.clk(clk),.rst(rst),.q(out[0]));
    tff a2(.clk(out[0]),.rst(rst),.q(out[1]));
    tff a3(.clk(out[1]),.rst(rst),.q(out[2]));
    tff a4(.clk(out[2]),.rst(rst),.q(out[3]));
endmodule

module tff(input clk,rst,output reg q);
    always @(posedge clk or posedge rst) begin
        if (rst) q<=0;
        else q<=~q;
    end
endmodule

