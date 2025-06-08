module mux_2x1 (I0,I1,sel,out);
    input I0;
    input I1;
    input sel;
    output wire out;
    assign out = sel ? I1 : I0;
endmodule



//module mux_2x1(I0,I1,sel,out);
//input I0,I1,sel;
//output reg out;
//
//always @(*)begin
//	if(sel) 
//	out=I1;
//	else 
//	out=I0;
//end
//endmodule
