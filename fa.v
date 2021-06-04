`timescale 1ns/100ps


module full_adder(A, B, Cin, S, Cout);

 output S, Cout;
 input A, B, Cin;

 assign S = A ^ B ^ Cin; 
 assign Cout = (A & B) | Cin & (A ^ B);

endmodule
