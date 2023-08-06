module min_det_tb();
reg a,b,c;
wire f;

min_det DUT(.a(a),.b(b),.c(c),.f(f));
initial begin
$dumpfile("min_det_test.vcd");
$dumpvars(0,min_det_tb);
   a=0;b=0;c=0;
#5 a=0;b=0;c=1;
#5 a=0;b=1;c=0;
#5 a=0;b=1;c=1;
#5 a=1;b=0;c=0;
#5 a=1;b=0;c=1;
#5 a=1;b=1;c=0;
#5 a=1;b=1;c=1;
#5 $finish;
end
endmodule
