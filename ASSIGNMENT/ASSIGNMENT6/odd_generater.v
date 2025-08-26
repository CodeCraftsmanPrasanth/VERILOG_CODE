module odd_even_generator;
  reg [7:0] random;
  integer i,k;
  function [7:0] odd (input [7:0] a);
    if (a[0]) begin 
      $display("%d",a);
    end
    
  endfunction
  
  initial begin 
    for (i=0;i<25;i=i+1) begin
      random=odd($random);
    end
  end
endmodule
