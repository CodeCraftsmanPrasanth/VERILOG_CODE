module saturating_adder(input  [3:0] a, b,output [3:0] y);
  wire [4:0] sum = a + b;
  assign y = (sum > 4'b1111) ? 4'b1111 : sum[3:0];
endmodule
