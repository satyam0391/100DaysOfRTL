module mux_4x1 (I,sel,out);
    input [3:0] I;
    input [1:0] sel;
    output reg out;
    always @(*) begin
        case (sel)
            2'b00: out = I[0];
            2'b01: out = I[1];
            2'b10: out = I[2];
            2'b11: out = I[3];
        endcase
    end
endmodule


//module mux_4x1(I,sel,out);
//input [3:0]I;
//input [1:0]sel;
//output out;
//assign out = I[sel];
//endmodule
