module NBIT_SynUPDOWNCounter(input a,clk,rst,output [3:0]out);
    parameter n=4;
    reg [n-1:0]counter;
    always @(posedge clk or posedge rst) begin
        if (rst) counter<=0;
        else if (~a) counter<=counter-1;
        else counter<=counter+1;
    end
    assign out=counter;
endmodule
