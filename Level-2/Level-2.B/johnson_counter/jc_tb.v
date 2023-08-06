module jc_tb();
reg rst,clk;
wire [3:0]q;

jc dut(.clk(clk),.rst(rst),.q(q));

always begin
#5 clk=~clk;
end

initial begin
$dumpfile("jc_test.vcd");
$dumpvars(0,jc_tb);

clk=0;rst=0;
#5 rst =0;
#5 rst =0;
#5 rst =0;
#5 rst =0;
#5 rst =0;
#5 rst =0;
#5 rst =0;
#5 rst =0;
#5 rst =0;
#5 rst =0;
#5 rst =0;
#5 rst =0;
#155 $finish;
end
endmodule
