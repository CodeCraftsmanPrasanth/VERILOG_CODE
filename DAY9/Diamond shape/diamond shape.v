module diamond_shape #(parameter max=9);
    integer i,j;
    integer space=max-1;
    initial begin
        for (i=1;i<=max;i=i+1) begin
          for(j=0;j<(max+i)-1;j=j+1) begin
                if (j<space) begin
                    $write(" ");
                end
                else $write("%0d",i);
            end
            $display("");
            space=space-1;
        end
      	space=1;
      for (i=max-1;i>0;i=i-1) begin
        for(j=0;j<(max+i)-1;j=j+1) begin
            if (j<space) begin
              $write(" ");
            end
            else $write("%0d",i);
          end
          $display("");
          space=space+1;
        end
    end
endmodule
