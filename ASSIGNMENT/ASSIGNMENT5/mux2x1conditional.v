module mux2x1(input [3:0]a,input [1:0]s, output y);
  assign y=(s[1]==0) ? ((s[0]==0) ? a[0] : a[1]) : ((s[0]==0)?a[2]:a[3]);
endmodule
