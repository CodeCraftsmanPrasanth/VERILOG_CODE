module vec;
  reg [3:0] vector;
  integer i=0;
  integer j=0;
  initial begin
    vector = 4'b1111;
    while (i<4) begin
      if (vector[i]==1) begin
        j=j+1;
      end
      i=i+1;
    end
    $display("no. of 1's :%0d", j);
  end
endmodule
