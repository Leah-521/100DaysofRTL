module full_adder(
    input wire a,
    input wire b,
    input wire cin,
    output wire sum,
    output wire carry
);

assign sum = a ^ b ^ cin;
assign carry = (a & b) | (a & cin) | (b & cin);

endmodule



module add_sub(
    input wire [3:0] a,
    input wire [3:0] b,
    input wire bin,
    output wire [3:0] diff,
    output wire bout
);

wire [2:0] c;

full_adder s1(
    .a(a[0]),
    .b(b[0] ^ bin),
    .cin(bin),
    .sum(diff[0]),
    .carry(c[0])
);

full_adder s2(
    .a(a[1]),
    .b(b[1] ^ bin),
    .cin(c[0]),
    .sum(diff[1]),
    .carry(c[1])
);

full_adder s3(
    .a(a[2]),
    .b(b[2] ^ bin),
    .cin(c[1]),
    .sum(diff[2]),
    .carry(c[2])
);

full_adder s4(
    .a(a[3]),
    .b(b[3] ^ bin),
    .cin(c[2]),
    .sum(diff[3]),
    .carry(bout)
);




endmodule