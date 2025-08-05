module ALU(input [3:0]a,b,input sel,output [3:0]y);
  assign y=(sel==1)? a+b: a-b;
endmodule
