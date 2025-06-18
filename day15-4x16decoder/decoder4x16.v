module decoder2x4 (sel,Y,en);
    input [1:0]sel;
	 input en;
    output reg [3:0]Y;
    always @(*) begin
	 if(en) begin
        case (sel)
            2'b00: Y = 4'b0001;
            2'b01: Y = 4'b0010;
            2'b10: Y = 4'b0100;
            2'b11: Y = 4'b1000;
        endcase
		  end 
		  else Y=4'b0000;
    end
endmodule

module decoder4x16(I,Y,en);
input en;
input [3:0]I;
output [15:0]Y;
wire [3:0]w;
decoder2x4 d0(I[3:2],w,en);
decoder2x4 d1(I[1:0],Y[3:0],w[0]);
decoder2x4 d2(I[1:0],Y[7:4],w[1]);
decoder2x4 d3(I[1:0],Y[11:8],w[2]);
decoder2x4 d4(I[1:0],Y[15:12],w[3]);
endmodule
