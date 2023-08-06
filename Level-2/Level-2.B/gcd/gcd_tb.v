module gcd_tb();
parameter w=8;
reg [w-1:0] a,b;
wire [w-1:0] gcd;

gcd DUT(.a(a),.b(b),.gcd(gcd));
initial begin
$dumpfile("gcd_test.vcd");
$dumpvars(0,gcd_tb);

a=20;b=80;
#5 a=80;b=45;
#5 a=84;b=44;
#5 a=2;b=7;
#5 a=180;b=160;
#5 a=90;b=45;
#5 a=83;b=4;
#5 a=13;b=7;
#5 $finish;
end
endmodule

