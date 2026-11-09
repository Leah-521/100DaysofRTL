# 半减器与全减器设计说明书

## 一、设计目的

使用 Verilog HDL 实现半减器和全减器，理解二进制减法原理，掌握组合逻辑电路的设计与仿真方法。

## 二、半减器（Half Subtractor）

**功能：** 实现两个 1 位二进制数相减。

- 输入：A、B
- 输出：差值 D、借位 Bout

**逻辑表达式：**

D = A XOR B

Bout = ~A & B

## 三、全减器（Full Subtractor）

**功能：** 实现两个 1 位二进制数及输入借位之间的减法。

- 输入：A、B、Bin
- 输出：差值 D、借位 Bout

**逻辑表达式：**

D = A XOR B XOR Bin

Bout = (~A & B) | (~A & Bin) | (B & Bin)

## 四、仿真验证

使用 Icarus Verilog 进行编译和仿真，通过 GTKWave 查看波形。

波形记录语句：

```verilog
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb_module);
end
```

## 五、设计总结

通过本次设计，掌握了半减器与全减器的工作原理、逻辑表达式及 Verilog RTL 描述方法，并完成 Testbench 编写和仿真验证，加深了对组合逻辑电路的理解。