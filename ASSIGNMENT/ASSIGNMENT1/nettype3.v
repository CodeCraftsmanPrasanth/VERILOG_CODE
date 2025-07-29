module nettype3;
wand w_and_net;
wor w_or_net;
tri w_tri_net;
triand w_triand_net;
assign w_and_net = 1'b1;
assign #5 w_and_net = 1'b1;
assign w_or_net = 1'b0;
assign #7 w_or_net = 1'b1;
assign w_tri_net = (1'b1);
assign #10 w_tri_net = 1'bz;
assign #15 w_tri_net = 1'b0;
assign w_triand_net = 1'b1;
assign #20 w_triand_net = 1'b0;
assign #25 w_triand_net = 1'bz;
initial begin
    $monitor("Time=%0t | wand=%b wor=%b tri=%b triand=%b", $time, w_and_net, w_or_net, w_tri_net, w_triand_net);
end
endmodule

