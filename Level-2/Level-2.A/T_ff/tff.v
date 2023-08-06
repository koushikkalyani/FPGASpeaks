module tff(clk,T,q,q_bar);
input clk,T;
output reg q=0;
output q_bar;
always @(posedge clk)
begin
if(T)
q<=~q;
else
q<=q;
end 
assign q_bar=~q;

endmodule

