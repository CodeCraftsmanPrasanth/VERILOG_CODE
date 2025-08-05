module encoder4to2(input [3:0]a, output [1:0]y,v);
  assign v=(a!=4'b0000)?1'b1:1'b0;
  assign y=(a[0]==1)? 2'b00:
    (a[1]==1)?2'b01:
    (a[2]==1)?2'b10:
    (a[3]==1)?2'b11:2'b00;
endmodule
