`timescale 1ns / 1ps
module SISO_3BITtb;
    reg in;
    reg clk, rst;
    reg [2:0] data;
    integer i;
    wire out;
    SISO_3BIT uut(.in(in), .clk(clk), .rst(rst), .out(out));

    initial begin 
        clk = 0;
        forever #10 clk = ~clk;
    end
    initial begin 
        rst = 1;#5
        rst=0;
    end
    initial begin
        in = 0;
        data = 3'b101;
        @(posedge clk)
        for (i = 0; i < 3; i = i + 1) 
             in=data[i];
        #70 $finish;
    end
endmodule
//`timescale 1ns / 1ps
//module SISO_3BITtb;
//    reg in;
//    reg clk,rst;
//    wire out;
//    reg [2:0]data;
//    integer i;
//    SISO_3BIT uut(.in(in),.clk(clk),.rst(rst),.out(out));
//    initial begin 
//        clk=0;
//        forever #10 clk=~clk;
//    end
//    initial begin 
//        rst=1;
//        #7 rst=0;
//    end
//    initial begin
//        in=0; 
//        data=3'b101; 
//        @(negedge rst);
//        for(i = 0; i < 3; i = i + 1) begin
//            in = data[i];
//            @(posedge clk); // Change input on rising clock
//        end
//        in=0;
//        #100 $finish;
//    end 
//endmodule

//    