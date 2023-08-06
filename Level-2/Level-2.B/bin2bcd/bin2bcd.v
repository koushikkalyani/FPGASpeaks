module bin2bcd(bin,bcd);
input [7:0]bin;
output reg [11:0]bcd;

reg [3:0] hundreds,tens,ones;
reg [6:0] temp;

always @(bin)
 begin
hundreds =bin/100;
temp = bin%100;
tens = temp/10;
ones = temp%10;
bcd ={hundreds,tens,ones};
end
endmodule
