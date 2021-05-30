`timescale 100ps/100ps

module full_adder2_1bit(a, b, cin, s_op, cout, s);
input a;
input b;
input cin;
input [1:0]s_op;
output s;
output cout; ////good untill 9 line
wire aXORb;
wire cANDaXORb;
wire aANDb;
xor2_1bit XORgate1 (.a(a), .b(b), .c(aXORb));
xor2_1bit XORgate2 (.a(aXORb), .b(cin), .c(s));
and2_1bit ANDgate1 (.a(cin), .b(aXORb), .c(cANDaXORb));
and2_1bit ANDgate2 (.a(a), .b(b), .c(aANDb));
or2_1bit ORgate1 (.a(cANDaXORb), .b(aANDb), .c(cout));
endmodule
