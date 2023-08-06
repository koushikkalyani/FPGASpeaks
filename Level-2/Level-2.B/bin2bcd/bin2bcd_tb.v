module bin2bcd_tb();
reg [7:0]bin;
wire [11:0]bcd;

bin2bcd DUT(.bin(bin),.bcd(bcd));
initial begin
$dumpfile("bin2bcd_test.vcd");
$dumpvars(0,bin2bcd_tb);

bin=12;
#5 bin=101;
#5 bin=111;
#5 bin=230;
#5 bin=180;
#5 bin=100;
#5 bin=106;
#5 bin=130;

#5 $finish;
end
endmodule
