module gray2bin(g,b);
input [1:4]g;
output reg [1:4]b;

always @(g)
begin
b[1]=g[1];
b[2]=b[1]^g[2];
b[3]=b[2]^g[3];
b[4]=b[3]^g[4];
end
endmodule
