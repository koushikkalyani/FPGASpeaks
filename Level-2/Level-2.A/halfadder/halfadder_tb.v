module halfadder_tb();
reg a,b;
wire sum,cout;

halfadder u0_DUT(.a(a),.b(b),.sum(sum),.cout(cout));
initial begin
$dumpfile("test_halfadder.vcd");
$dumpvars(0,halfadder_tb);
  a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1; 
#200 $finish;
end
endmodule
