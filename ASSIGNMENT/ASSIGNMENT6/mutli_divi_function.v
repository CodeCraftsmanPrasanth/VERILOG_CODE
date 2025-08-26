module multi_division;
  reg [7:0] a,b,c,d;
  function [7:0] multi(input [7:0] a,b);
    multi=a*b;
  endfunction
  function [7:0] divi(input [7:0] a,b);
    divi=a/b;
  endfunction
  initial begin
    a=20;
    b=10;
    c=multi(a,b);
    d=divi(a,b);
    $display("%d,%d",c,d);
  end
endmodule
