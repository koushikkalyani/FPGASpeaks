module sync_cntr_tb();

reg clk,rst,up_down;
wire [3:0] count;

sync_cntr DUT(.clk(clk),.rst(rst),.up_down(up_down),.count(count));
always begin
#5 clk=~clk;
end
initial begin
$dumpfile("sync_test.vcd");
$dumpvars(0,sync_cntr_tb);
 clk=0; rst=0;
#5 up_down =1;
#5 up_down =1;
#5 up_down =1;
#5 up_down =1;
#5 up_down =0;
#5 up_down =0;
#5 up_down =0;
#5 up_down =0;
#2 rst=1;
#3 rst=0;
#5 up_down =0;
#5 up_down =0;
#5 up_down =0;
#5 up_down =0;
#5 up_down =0;
#5 up_down =0;
#5 up_down =0;
#5 up_down =0;
#5 $finish;
end
endmodule

