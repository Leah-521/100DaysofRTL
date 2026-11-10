`timescale 1ns / 1ps

module tb_hs_nand();

reg a;
reg b;
wire diff;
wire borrow;


initial begin
    $dumpfile("hs_nand_wave.vcd");  // 指定波形文件名称
    $dumpvars(0, tb_hs_nand); // 记录波形信号

     a=0;b=0;#10
     a=0;b=1;#10
     a=1;b=0;#10 
     a=1;b=1;#10

     $finish;

end


hs_nand u_hs_nand(
     .a(a),
     .b(b),
     .diff(diff),
     .borrow(borrow)
);

endmodule