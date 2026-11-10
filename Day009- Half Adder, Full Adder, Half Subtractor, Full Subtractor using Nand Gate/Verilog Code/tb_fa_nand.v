`timescale 1ns / 1ps

module tb_fa_nand();

reg a;
reg b;
reg cin;
wire sum;
wire carry;


initial begin
    $dumpfile("fa_nand__wave.vcd");  // 指定波形文件名称
    $dumpvars(0, tb_fa_nand); // 记录波形信号

     a=0;b=0;cin=0;#10
     a=0;b=0;cin=1;#10
     a=0;b=1;cin=0;#10
     a=0;b=1;cin=1;#10
     a=1;b=0;cin=0;#10
     a=1;b=0;cin=1;#10
     a=1;b=1;cin=0;#10
     a=1;b=1;cin=1;#10

     $finish;

end


fa_nand u_fa_nand(
     .a(a),
     .b(b),
     .cin(cin),
     .sum(sum),
     .carry(carry)
);


endmodule