module tb_decoder2x4;
    reg [1:0] sel;
    wire [3:0] Y;
    decoder2x4 dut (sel,Y);
    initial begin
        $monitor("Time=%0t sel= %b Y=%b", $time, sel, Y);
        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10; 
        sel = 2'b11; #10;
        $finish;
    end
endmodule

