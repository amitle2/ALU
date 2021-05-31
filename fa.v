`timescale 1ns/100ps

module full_adder(S, Cout, A, B, Cin);
   input  A;
   input  B;
   input  Cin;
   output S;
   output Cout;
   
   wire   w1,w2,w3,w4;

   xor(w1, A, B);
   xor(S, Cin, w1);
   and(w2, A, B);   
   and(w3, A, Cin);
   and(w4, B, Cin);   
   or(Cout, w2, w3, w4);
endmodule