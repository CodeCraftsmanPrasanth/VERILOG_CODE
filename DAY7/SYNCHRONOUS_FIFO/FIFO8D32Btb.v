`timescale 1ns / 1ns
module FIFO8D32Btb;
    parameter FIFO_depth=6;
    parameter DATA_width=32;
    reg  clk=0,rst,rd_en,wr_en,cs;
    reg [DATA_width-1:0]data_in;
    wire [DATA_width-1:0]data_out;
    wire  full,empty;
    integer i;
    
    FIFO8D32B #(.FIFO_depth(FIFO_depth),.DATA_width(DATA_width)) uut(.clk(clk),.rst(rst),
    .rd_en(rd_en),.wr_en(wr_en),.data_in(data_in),.data_out(data_out),.full(full),.empty(empty),.cs(cs));
    
    always #5 clk=~clk;
    task write(input [DATA_width-1:0] d_in); begin
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
        cs=0;wr_en=0;rd_en=0;rst=1;#7
        rst=0;
        @(posedge clk)
        write(1000000);
        write(201020);
        write(0);
        read();
        read();
        read();
        for (i=0;i<=FIFO_depth;i=i+1) begin
            write(2**i);
        end
        for (i=0;i<=FIFO_depth;i=i+1) begin
            read();
        end
        for (i=0;i<FIFO_depth;i=i+1) begin
            write(2**i);
            read();
        end
        
        end
        
endmodule
