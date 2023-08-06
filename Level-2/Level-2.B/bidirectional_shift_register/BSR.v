module BSR(d,dir,clk,rst,en,out);
parameter MSB=4;
input d,dir,clk,en,rst;
output reg [MSB-1:0]out;

always @(posedge clk or en or rst or d or dir)
if(!rst)
  out<=0;
else begin
if(en)
  case(dir)
  0:out <= {out[MSB-2:0],d}; //left
  1:out <= {d,out[MSB-1:1]}; //right
  endcase
else
 out <=out;
end
endmodule
