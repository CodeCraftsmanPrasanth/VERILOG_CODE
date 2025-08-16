`timescale 1ns / 1ns
module FIFO8D32B
    #(parameter FIFO_depth=6,
    parameter DATA_width=32)
    (input clk,rst,rd_en,wr_en,cs,
    input [DATA_width-1:0]data_in,
    output reg [DATA_width-1:0]data_out,
    output full,empty);
    
    localparam addr_width=$clog2(FIFO_depth);
    reg [DATA_width-1:0] FIFO [FIFO_depth-1:0];
    reg [addr_width:0] writer_pointer;
    reg [addr_width:0] read_pointer;
    
    always@(posedge clk or posedge rst) begin
        if (rst) writer_pointer<=0;
        else begin 
            if (cs && wr_en && ~full) begin
                   FIFO[writer_pointer [addr_width-1:0]]<=data_in;
                   writer_pointer<=writer_pointer+1'b1;
                   end
               end
           end
    always@(posedge clk or posedge rst) begin
        if (rst) read_pointer<=0;
        else begin 
            if (cs && rd_en && ~empty) begin
                   data_out <= FIFO[read_pointer [addr_width-1:0]];
                   read_pointer<=read_pointer+1'b1;
                   end
               end
           end
    assign empty=(writer_pointer==read_pointer);
    assign full=(read_pointer=={~writer_pointer[addr_width],writer_pointer[addr_width-1:0]});    
endmodule
