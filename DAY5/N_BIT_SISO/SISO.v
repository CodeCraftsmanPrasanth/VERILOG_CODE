module SISO(input in,input clk,rst, output out);
    parameter N=5;
    reg [N-1:0]shift;
    always @ (posedge clk or posedge rst) begin
        if (rst) shift<=0;
        else begin
              shift <={in,shift[N-1:1]};
          end
      end
    assign out=shift[0];
endmodule
