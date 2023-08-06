module seg7_tb();
reg [3:0]bcd;
wire [1:7] leds;

seg7 DUT(.bcd(bcd),.leds(leds));
initial begin
$dumpfile("seg7_test.vcd");
$dumpvars(0,seg7_tb);
bcd=0;
#5 bcd=1;
#5 bcd=2;
#5 bcd=3;
#5 bcd=4;
#5 bcd=5;
#5 bcd=6;
#5 bcd=7;
#5 bcd=8;
#5 bcd=9;
#5 $finish;
end
endmodule 
