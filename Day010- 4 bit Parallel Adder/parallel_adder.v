module full_adder(
     input wire a,
     input wire b,
     input wire cin,
     output wire sum,
     output wire carry
);

assign sum =a^b^cin;
assign carry=a&b | a&cin | b&cin;

endmodule






module parallel_adder(
     input wire [3:0] A,
     input wire [3:0] B,
     input wire CIN,
     output wire [3:0] SUM,
     output wire CARRY
);

wire [2:0] c;

full_adder u_f1(
      .a(A[0]),
      .b(B[0]),
      .cin(CIN),
      .sum(SUM[0]),
      .carry(c[0])
);

full_adder u_f2(
      .a(A[1]),
      .b(B[1]),
      .cin(c[0]),
      .sum(SUM[1]),
      .carry(c[1])
);

full_adder u_f3(
      .a(A[2]),
      .b(B[2]),
      .cin(c[1]),
      .sum(SUM[2]),
      .carry(c[2])
);

full_adder u_f4(
      .a(A[3]),
      .b(B[3]),
      .cin(c[2]),
      .sum(SUM[3]),
      .carry(CARRY)
);

endmodule