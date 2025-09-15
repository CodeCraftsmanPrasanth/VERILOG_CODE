module vec;
  reg [3:0] vector;
  integer i;
  integer j=0;
  initial begin
    vector = 4'b1111;
    for (i=0;i<4;i=i+1) begin
      if (vector[i]==1) begin
        j=j+1;
      end
    end
    $display("no. of 1's :%0d", j);
  end
endmodule
