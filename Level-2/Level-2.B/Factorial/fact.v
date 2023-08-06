module fact(in,out);
parameter N=5;
input [N:0] in;
output [N*20:0] out;
reg[N*8:0] temp;
reg[N*8:0] fact;
always @(in)
begin
if(in==1)
begin 
fact=1;
end
else 
begin
fact=in;
for(temp=in-1;temp !=1;temp=temp-1)
fact=fact*temp;
end
end
assign out=fact;
endmodule
