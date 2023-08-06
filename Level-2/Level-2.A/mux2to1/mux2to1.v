module mux2to1(a,b,s,Y);
input a,b,s;
output reg Y;
 always@(s,a,b)
 begin
	 if(s)
		 Y=b;
	 else 
		 Y=a;
 end
 endmodule

 
