module parallel;
  integer i=1;
  always @(i==1) begin
    $display("%0t,hi",$time);
  end
  always @(i==1)  begin
    $display("%0t,hi1",$time);
  end
  always @(i==1) begin
    $display("%0t,hi2",$time);
  end
  always @(i==1) begin
    $display("%0t,hi3",$time);
  end
  always @(i==1) begin
    $display("%0t,hi4",$time);
  end
  
endmodule
