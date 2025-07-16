module SISO(clk,reset,sin,sout);
input sin,clk,reset;
output sout;
reg [3:0]Q;
always @(posedge clk or posedge reset)
begin
if(reset)
Q<=4'b0000;
else 
Q<={Q[2:0],sin};
end
assign sout=Q[3];
endmodule
