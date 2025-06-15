module demux_1x2 (I,sel,y0,y1);
	input I,sel;
	output y0,y1;
	assign {y0,y1}=sel?{1'b0,I}:{I,1'b0};
endmodule
