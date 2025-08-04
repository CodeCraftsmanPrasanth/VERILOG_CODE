module init_array();
    reg [7:0] a [9:0];  // 10 locations, each 8 bits wide
    integer i;

    initial begin
        for (i = 11; i < 21; i = i + 1)
            a[i-11] = i;
    end
    initial begin $display("%b%b%b%b%b%b%b%b%b",a[9],a[8],a[7],a[6],a[5],a[4],a[3],a[2],a[1],a[0]); end
endmodule
