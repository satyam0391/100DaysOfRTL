module bcd_excess3(b,x);
input[3:0]b;
output[3:0]x;
assign x[3]=b[3]|(b[2]&b[1])|(b[2]&b[0]);
assign x[2]=(~b[2]&b[0])|(~b[2]&b[1])|(b[2]&~b[1]&~b[0]);
assign x[1]=(b[1]&b[0])|(~b[1]&~b[0]);
assign x[0]=~b[0];
endmodule
 
 
 //Behavioral modeling
 
//module bcd_excess3(b,x);
//input [3:0]b;
//output reg [3:0]x;
//always@(*) begin
//case(b)
//4'b0000: x = 4'b0011;
//4'b0001: x = 4'b0100;
//4'b0010: x = 4'b0101;
//4'b0011: x = 4'b0110;
//4'b0100: x = 4'b0111;
//4'b0101: x = 4'b1000;
//4'b0110: x = 4'b1001;
//4'b0111: x = 4'b1010;
//4'b1000: x = 4'b1011;
//4'b1001: x = 4'b1100;
//default: x = 4'bxxxx;
//endcase 
//end
//endmodule
