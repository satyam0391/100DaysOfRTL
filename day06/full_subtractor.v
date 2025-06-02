module full_subtractor(a, b, bin, diff, borrow);
    input a, b, bin;
    output diff,borrow;
    assign diff =a ^ b ^ bin;
    assign borrow =(~a & bin)|(~a & b)|(b & bin);
endmodule
