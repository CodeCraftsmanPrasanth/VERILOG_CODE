module nbit_comparator #(parameter N = 4)(input  [N-1:0] a, b, output equal, greater, less);
  assign equal   = (a == b);
  assign greater = (a > b);
  assign less    = (a < b);
endmodule
