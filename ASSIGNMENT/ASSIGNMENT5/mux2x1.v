module mux2x1(input [1:0]a,input s, output y);
  assign y=(s==1)?a[1]:a[0];
endmodule
