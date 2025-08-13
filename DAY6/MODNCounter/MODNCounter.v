module MODNCounter
    #(parameter n=20, parameter width=5 )
    (input clk,rst,output reg [width-1:0]out);
      always @(posedge clk or posedge rst) begin
        if (rst) out<=0;
        else begin 
            if (out==n-1) out<=0;
            else out<=out+1;
        end
    end
endmodule
