module SIPO(clk,reset,sin,q);
input clk,reset,sin;
output reg [3:0]q;
always @(posedge clk)
if(reset) q<=4'b0000;
else 
begin
	q[3]<=sin;
	q[2]<=q[3];
	q[1]<=q[2];
	q[0]<=q[1];
end
endmodule
