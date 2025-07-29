module bitselect9;
    reg [7:0]data;
    initial begin
    data=8'b10101100;
    $display("%b",data[3]);
    end
endmodule
