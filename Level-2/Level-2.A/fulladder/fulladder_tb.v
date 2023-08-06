module fulladder_tb();
reg a,b,cin;
wire sum,cout;
fulladder u0_DUT(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
$dumpfile("fullader_test.vcd");
$dumpvars(0,fulladder_tb);   
 a=0;b=0;cin=0;
#10 a=0;b=0;cin=1;
#10 a=0;b=1;cin=0;
#10 a=0;b=1;cin=1;
#10 a=1;b=0;cin=0;
#10 a=1;b=0;cin=1;
#10 a=1;b=1;cin=0;
#10 a=1;b=1;cin=1;
#10 $finish;
end
endmodule
