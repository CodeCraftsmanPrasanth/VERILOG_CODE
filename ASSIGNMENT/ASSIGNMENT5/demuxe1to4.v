module demux1to4(input d,en,input  [1:0] sel, output [3:0] y );
  assign y[0] = en & d & (~sel[1]) & (~sel[0]);
  assign y[1] = en & d & (~sel[1]) & ( sel[0]);
  assign y[2] = en & d & ( sel[1]) & (~sel[0]);
  assign y[3] = en & d & ( sel[1]) & ( sel[0]);
endmodule
