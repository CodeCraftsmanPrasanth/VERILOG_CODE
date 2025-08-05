module test_eq;
  reg [3:0] a, b;
  initial begin
    a = 4'bx01z;
    b = 4'bx01z;
    $display("a == b is %b", a == b);   
    $display("a === b is %b", a === b);
    b = 4'bx01x;
    $display("a == b is %b", a == b);   
    $display("a === b is %b", a === b); 
  end
endmodule
