
module rc_tb;

  reg clk;
  reg reset;
  wire [3:0] counter;

  rc DUT(
    .clk(clk),
    .reset(reset),
    .counter(counter)
  );

 always begin
#5 clk=~clk;
end

initial begin
$dumpfile("rc_test.vcd");
$dumpvars(0,rc_tb);

clk=0;reset=1;
#5 reset =0;
#5 reset =0;
#5 reset =0;
#5 reset =0;
#5 reset =0;
#5 reset =0;
#155 $finish;
end
endmodule
