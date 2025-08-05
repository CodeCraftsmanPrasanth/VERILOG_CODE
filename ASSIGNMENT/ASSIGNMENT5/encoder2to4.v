module encoder2to4(input [3:0]a, output [1:0]y);
  assign y[0]=(a[1]==1 or a[3]==1)?1'b1:1'b0;
  assign y[1]=(a[2]==1 or a[3]==1)?1'b1:1'b0;
endmodule
