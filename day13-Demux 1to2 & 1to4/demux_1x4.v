module demux_1x4 (I,sel,Y);
	input I;
	input [1:0]sel;
	output reg [3:0]Y;
	always @(*) begin 
	Y=4'b0000;
	case(sel)
	2'b00:Y[0]=I;
	2'b01:Y[1]=I;
	2'b10:Y[2]=I;
	2'b11:Y[3]=I;
	endcase
	end
endmodule
	