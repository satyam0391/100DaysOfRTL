module ring4bit(clk,rst,q);
input clk,rst;
output reg [3:0]q;
always @(posedge clk)
if(rst) begin
q<=4'b1000;
end
else begin
q[3]<=q[0];
q[2]<=q[3];
q[1]<=q[2];
q[0]<=q[1];
//we can also do like q<={q[0],q[3:1]};
end
endmodule 

