module mux_4x1_tb;
    reg [3:0] I;
    reg [1:0] sel;
    wire out;
    mux_4x1 dut(I,sel,out); 
    initial begin
        I = 4'b1010;
		  $display("I[0]=%b I[1]=%b I[2]=%b I[3]=%b ",I[0],I[1],I[2],I[3]);
        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;
        $finish;
    end
endmodule
