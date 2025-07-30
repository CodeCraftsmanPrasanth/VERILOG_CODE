`timescale 1ns / 1ps
/*Multiplexer (8 to 1 mux)
a. Implement 8 to 1 mux using 4 to 1 mux
b. Write testbench to check design behaviour*/
module mux8x1_4x1(
    input [7:0]i,
    input[2:0]s,
    output y);

wire y1,y2;

mux4_1 m1(.i(i[3:0]),.s(s[1:0]),.y(y1)); 
 mux4_1 m2(.i(i[7:4]),.s(s[1:0]),.y(y2)); 
                                          
mux2x1 m3(.i0(y1),.i1(y2),.s(s[2]),.y(y));


endmodule
module mux4_1(input [3:0]i,
              input [1:0]s,
              output y);
       assign y=(s==2'b00)?i[0]:
                (s==2'b01)?i[1]:
                (s==2'b10)?i[2]:i[3];
                    
endmodule

module mux2x1 (input i0,i1,
               input s,
               output y);
            
       assign y=(s==0)?i0:i1;
            
endmodule            
            