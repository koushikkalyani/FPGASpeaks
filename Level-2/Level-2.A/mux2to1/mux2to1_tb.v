module mux2to1_tb();
 reg at,bt,st;
 wire Yt;

 mux2to1 u0_DUT(.a(at),.b(bt),.s(st),.Y(Yt));
initial begin
$dumpfile("mux2to1_test.vcd");
$dumpvars(0,mux2to1_tb);
	     st=0;at=0;bt=0;
	 #10 st=0;at=0;bt=1;
	 #10 st=0;at=1;bt=0;
	 #10 st=0;at=1;bt=1;
	 #10 st=1;at=0;bt=0;
	 #10 st=1;at=0;bt=1;
	 #10 st=1;at=1;bt=0;
	 #10 st=1;at=1;bt=1;
#10 $finish;
 end
 endmodule
