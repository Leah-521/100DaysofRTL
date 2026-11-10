`timescale 1ns / 1ps

module tb_fs_nand();

reg a;
reg b;
reg bin;
wire diff;
wire bout;


initial begin
    $dumpfile("fs_nand_wave.vcd");  // 指定波形文件名称
    $dumpvars(0, tb_fs_nand); // 记录波形信号

     a=0;b=0;bin=0;#10
     a=0;b=0;bin=1;#10
     a=0;b=1;bin=0;#10
     a=0;b=1;bin=1;#10
     a=1;b=0;bin=0;#10
     a=1;b=0;bin=1;#10
     a=1;b=1;bin=0;#10
     a=1;b=1;bin=1;#10

     $finish;

end


fs_nand u_fs_nand(
     .a(a),
     .b(b),
     .bin(bin),
     .diff(diff),
     .bout(bout)
);


endmodule