module par_gen(Din,evenP,oddP);
parameter N=6;
input [N-1:0] Din;
output evenP,oddP;

assign evenP = ^Din;
assign oddP = ~evenP;

endmodule
