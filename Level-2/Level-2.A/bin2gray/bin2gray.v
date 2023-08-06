module bin2gray(b,g);
input [1:4]b;
output [1:4]g;

buf gate1(g[1],b[1]);
xor gate2(g[2],b[1],b[2]);
xor gate3(g[3],b[2],b[3]);
xor gate4(g[4],b[3],b[4]);

endmodule
