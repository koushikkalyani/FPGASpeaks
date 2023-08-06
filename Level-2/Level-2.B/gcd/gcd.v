module gcd(a,b,gcd);
parameter w=8;
input [w-1:0] a,b;
output reg [w-1:0] gcd;
reg [w-1:0] ain,bin;

always @(a or b)
begin
ain=a;bin=b;
while(ain != bin)
begin
if(ain<bin)
bin=bin-ain;
else 
ain=ain-bin;
end
gcd=ain;
end
endmodule
