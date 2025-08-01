module PIPO(clk,reset,d,Q);
input [3:0]d;
input clk,reset;
output reg [3:0]Q;
always @(posedge clk)
if(reset) Q<=4'b0000;
else 
begin 
Q[3]<=d[3];
Q[2]<=d[2];
Q[1]<=d[1];
Q[0]<=d[0];
//short we can also use Q<=d
end
endmodule

	