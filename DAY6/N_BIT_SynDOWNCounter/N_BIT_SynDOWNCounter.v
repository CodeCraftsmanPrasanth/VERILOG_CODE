module N_BIT_SynDOWNCounter(input clk,rst, output [5:0] down);
    parameter n=6;
    reg [n-1:0]  counter;
    always @(posedge clk or posedge rst) begin
        if (rst) counter<=0;
        else counter=counter-1; 
    end
    assign down=counter;
endmodule
