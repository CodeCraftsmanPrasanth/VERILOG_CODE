module N_BIT_SynUPCounter(input clk,rst, output [5:0] UPout);
    parameter n=6;
    reg [n-1:0]  counter;
    always @(posedge clk or posedge rst) begin
        if (rst) counter<=0;
        else counter=counter+1; 
    end
    assign UPout=counter;
endmodule
