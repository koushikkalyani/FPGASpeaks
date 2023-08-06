module modNcntr(clk,clr,q,q_bar);
parameter N=4;
parameter count =16;
input clk,clr;
output [N-1:0] q,q_bar;
reg [N-1:0] counter=0;

always @(posedge clk)
begin
if(clr)
 counter <=0;
else 
 counter<=(counter+1) % count;
end

assign q = counter;
assign q_bar = ~counter;

endmodule
