module RTLsnippet(input x1,x2,x3,clk,rst,output reg g, reg f);
 
    always @ (posedge clk or posedge rst) begin
        if (rst) begin g<=0;f<=0; end
        else begin g<=x3|f; f<=x1&x2; end end
endmodule