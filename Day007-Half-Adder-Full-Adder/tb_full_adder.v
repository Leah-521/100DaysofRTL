`timescale 1ns / 1ps
module tb_full_adder();

reg a1;
reg b1;
reg cin1;
wire sum1;
wire cout1;

initial begin
    $dumpfile("full_adder_wave.vcd");
    $dumpvars(0, tb_full_adder);

    a1 = 0;b1 = 0;cin1 = 0; #10 //"0"

    a1 = 0;b1 = 0;cin1 = 1; #10 //"1"

    a1 = 0;b1 = 1;cin1 = 0; #10 //"2"

    a1 = 0;b1 = 1;cin1 = 1; #10 //"3"
    
    a1 = 1;b1 = 0;cin1 = 0; #10 //"4"

    a1 = 1;b1 = 0;cin1 = 1; #10 //"5"
    
    a1 = 1;b1 = 1;cin1 = 0; #10 //"6"

    a1 = 1;b1 = 1;cin1 = 1; #10 //"7"
    
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
