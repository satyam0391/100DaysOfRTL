module bcd_adder(a,b,cin,sum,cout);
input [3:0]a,b;
input cin;
output reg [3:0]sum;
output reg cout;
reg [4:0]sum_temp;
always @(*) begin
sum_temp=a+b+cin;
if(sum_temp>9) 
begin
sum_temp = sum_temp+6;
cout=1;
end
else begin 
cout=0;
end
sum=sum_temp[3:0];
end
endmodule
