module mux_4x1(I,sel,out);
input [3:0]I;
input [1:0]sel;
output reg out;
always @(*) begin
case(sel)
2'b00: out=I[0];
2'b01: out=I[1];
2'b10: out=I[2];
2'b11: out=I[3];
endcase
end 
endmodule

module mux_16x1(I,sel,out);
input [15:0]I;
input [3:0]sel;
output out;
wire [3:0]w;
mux_4x1 m0(I[3:0],sel[1:0],w[0]);
mux_4x1 m1(I[7:4],sel[1:0],w[1]);
mux_4x1 m2(I[11:8],sel[1:0],w[2]);
mux_4x1 m3(I[15:12],sel[1:0],w[3]);
mux_4x1 m4(w[3:0],sel[3:2],out);
endmodule


//module mux_16x1(I,sel,out);
//input [15:0]I;
//input [3:0]sel;
//output reg out;
//always @(*) begin
//case(sel)
//4'b0000: out = I[0];
//4'b0001: out = I[1];
//4'b0010: out = I[2];
//4'b0011: out = I[3];
//4'b0100: out = I[4];
//4'b0101: out = I[5];
//4'b0110: out = I[6];
//4'b0111: out = I[7];
//4'b1000: out = I[8];
//4'b1001: out = I[9];
//4'b1010: out = I[10];
//4'b1011: out = I[11];
//4'b1100: out = I[12];
//4'b1101: out = I[13];
//4'b1110: out = I[14];
//4'b1111: out = I[15];
//default: out = 1'bx;
//endcase
//end
//endmodule