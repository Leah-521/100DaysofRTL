
`timescale 1ns / 1ps
module tb_parallel_adder();

reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] sum;
wire carry;

always begin
    a= $random;
    b= $random;
    cin= $random;
    #10;
end

initial begin
    $dumpfile("parallel_adder_wave.vcd");  // 指定波形文件名称
    $dumpvars(0, tb_parallel_adder); // 记录波形信号

    $monitor("a= %b b= %b cin= %b sum =%b carry =%b",
              a,b,cin,sum,carry);
    #60
    $finish;
end

parallel_adder u_parallel_adder(
      .A(a),
      .B(b),
      .CIN(cin),
      .SUM(sum),
      .CARRY(carry)
);

endmodule