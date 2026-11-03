`timescale 1ns / 1ps
module tb_half_adder();

reg a1;
reg b1;
wire sum1;
wire carry1;

initial begin
    a1 = 0; #10
    b1 = 0; #10

    a1 = 0; #10
    b1 = 1; #10

    a1 = 1; #10
    b1 = 0; #10

    a1 = 1; #10
    b1 = 1; #10
    
    $finish;

end



half_adder u_half_adder(
    .a(a1),
    .b(b1),
    .sum(sum1),
    .carry(carry1)
    );





endmodule 