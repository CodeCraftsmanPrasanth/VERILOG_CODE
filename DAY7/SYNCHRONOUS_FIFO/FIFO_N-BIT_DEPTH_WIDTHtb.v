`timescale 1ns / 1ps
module SYNC_FIFOtb;
    parameter FIFO_Depth = 2, DATA_WIDTH=32;
    reg clk, rst,cs,wr_en,rd_en;
    reg [DATA_WIDTH-1:0] data_in;
    wire [DATA_WIDTH-1:0] data_out;
    wire full, empty;
    integer i;
    SYNC_FIFO #(.FIFO_Depth(FIFO_Depth),.DATA_WIDTH(DATA_WIDTH)) uut( .clk(clk), .rst(rst),.cs(cs),.wr_en(wr_en),.rd_en(rd_en),.data_in(data_in),.data_out(data_out),.full(full), .empty(empty));
    always #5 clk=~clk;
   
    task write(input [DATA_WIDTH-1:0] d_in); begin
        @(posedge clk);
        cs=1;wr_en=1;
        data_in=d_in;
        @(posedge clk);
         cs=1;wr_en=0;
    end
    endtask
    task read(); begin
        @(posedge clk);
        cs=1;rd_en=1;
        @(posedge clk);
         cs=1;rd_en=0;
     end
     endtask    
     
    initial begin 
        rst=1;cs=0;wr_en=0;clk=0;#7
        rst=0;rd_en=0;data_in=0;
        @(posedge clk)
        for (i=0;i<=FIFO_Depth;i=i+1) begin
            write(2**i);
        end
        for (i=0;i<=FIFO_Depth;i=i+1) begin
            read();
        end
        for (i=0;i<FIFO_Depth;i=i+1) begin
            write(2**i);
            read();
        end
        end
endmodule
