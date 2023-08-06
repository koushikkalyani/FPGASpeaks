module sync_cntr(clk,rst,up_down,count);
input clk,rst,up_down;
output [3:0] count;
reg [3:0] count=0;
always @(posedge clk)
begin
if(rst == 1)
count <= 0;
else 
if (up_down==1)
count <= count +1;
else
count <= count -1;
end
endmodule
