module BSR_tb();
parameter MSB=4;
reg d,clk,dir,en,rst;
wire [MSB-1:0]out;

BSR DUT(.d(d),.clk(clk),.dir(dir),.en(en),.rst(rst),.out(out));
always begin
#5 clk=~clk;
end
initial begin
$dumpfile("BSR_test.vcd");
$dumpvars(0,BSR_tb);
clk=0;rst=0;

d=1;dir=0;en=1;rst=0;
#5 d=1;dir=0;en=1;rst=1;
#5 d=1;dir=1;en=1;rst=1;
#5 d=1;dir=0;en=0;rst=1;
#5 d=1;dir=0;en=1;rst=0;
#5 d=0;dir=1;en=1;rst=1;
#5 d=0;dir=1;en=0;rst=1;
#5 d=0;dir=0;en=1;rst=1;
 #5 $finish;
end 
endmodule

