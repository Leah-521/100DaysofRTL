`timescale 1ns / 1ps

module tb_ha_nand();

reg a;
reg b;
wire sum;
wire carry;


initial begin
    $dumpfile("ha_nand_wave.vcd");  // 指定波形文件名称
    $dumpvars(0, tb_ha_nand); // 记录波形信号

     a=0;b=0;#10
     a=0;b=1;#10
     a=1;b=0;#10 
     a=1;b=1;#10

     $finish;

end


ha_nand u_ha_nand(
     .a(a),
     .b(b),
     .sum(sum),
     .carry(carry)
);


endmodule