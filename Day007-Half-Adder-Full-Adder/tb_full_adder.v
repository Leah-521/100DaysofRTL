`timescale 1ns / 1ps
module tb_full_adder();

reg a1;
reg b1;
reg cin1;
wire sum1;
wire cout1;

initial begin
    a1 = 0; #10
    b1 = 0; #10
    cin1 = 0; #10

    a1 = 0; #10
    b1 = 0; #10
    cin1 = 1; #10

    a1 = 0; #10
    b1 = 1; #10
    cin1 = 0; #10

    a1 = 0; #10
    b1 = 1; #10
    cin1 = 1; #10
    
    a1 = 1; #10
    b1 = 0; #10
    cin1 = 0; #10

    a1 = 1; #10
    b1 = 0; #10
    cin1 = 1; #10
    
    a1 = 1; #10
    b1 = 1; #10
    cin1 = 0; #10

    a1 = 1; #10
    b1 = 1; #10
    cin1 = 1; #10
    
    $finish;

end



full_adder u_full_adder(
    .a(a1),
    .b(b1),
    .cin(cin1),
    .sum(sum1),
    .cout(cout1)
    );





endmodule 