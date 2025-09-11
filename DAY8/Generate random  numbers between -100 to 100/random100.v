module random100;
  reg signed [8:0] i;
  initial begin
    repeat (20) begin
      i = $random;             
      if (i>=-100 & i<=100) begin
        $display("r = %0d" i);
      end
      #1;
    end
    $finish;
  end
endmodule
