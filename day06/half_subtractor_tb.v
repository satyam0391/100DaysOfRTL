module half_subtractor_tb;
    reg a, b;
    wire diff, borrow;
    half_subtractor DUT (a,b,diff,borrow);

    initial begin
        $monitor($time,"a=%b b=%b => diff=%b borrow=%b", a, b, diff, borrow);
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end
endmodule
