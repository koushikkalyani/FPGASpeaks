module dff(din,clk,rst,q,q_bar);
input din,clk,rst;
output q,q_bar;
reg q=0;

assign q_bar=~q;
always @(posedge clk)
begin
if(rst==1'b1)
begin
q<=0;
end
else begin
q <= din;
end
end
endmodule

module jc(clk,rst,q);
input rst,clk;
output [3:0] q;
wire w;

not a(w,q[3]);
dff d1(.din(w),.clk(clk),.rst(rst),.q(q[0]));
dff d2(.din(q[0]),.clk(clk),.rst(rst),.q(q[1]));
dff d3(.din(q[1]),.clk(clk),.rst(rst),.q(q[2]));
dff d4(.din(q[2]),.clk(clk),.rst(rst),.q(q[3]));
endmodule
