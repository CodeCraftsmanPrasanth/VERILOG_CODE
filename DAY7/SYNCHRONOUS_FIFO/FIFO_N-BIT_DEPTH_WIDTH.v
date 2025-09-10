`timescale 1ns / 1ps
module SYNC_FIFO #(parameter FIFO_Depth = 3, DATA_WIDTH=32 )
    (input clk, rst,cs,wr_en,rd_en,
     input [DATA_WIDTH-1:0] data_in,
     output reg [DATA_WIDTH-1:0] data_out,
     output full, empty);
     
     localparam addrwidth=$clog2(FIFO_Depth);
     reg [DATA_WIDTH-1:0] FIFO [FIFO_Depth-1:0];
     reg [addrwidth:0] counter;
     reg [addrwidth-1:0] read_pointer;
     reg [addrwidth-1:0] write_pointer;
     always @(posedge clk or posedge rst) begin
        if (rst) begin
            write_pointer<=0;
            counter<=0;
        end
        else begin
            if (cs & wr_en & ~full ) begin
                FIFO[write_pointer]<=data_in;
                counter<=counter+1;
                write_pointer<=write_pointer+1;
                if (write_pointer == FIFO_Depth-1) begin
                write_pointer<=0;
                end
            end   
        end
    end
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            read_pointer<=0;
        end
        else begin
            if (cs & rd_en & ~empty ) begin
                data_out<=FIFO[read_pointer];
                counter<=counter-1;
                read_pointer<=read_pointer+1;
                if (read_pointer == FIFO_Depth-1) begin
                read_pointer<=0;
                end
            end
            
        end
    end
    assign  full= (counter==FIFO_Depth);
    assign empty=(counter==0);
endmodule
