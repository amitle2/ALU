`timescale 1ns/100ps

module FourBitAddSub_tb();
  reg [3:0] A;
  reg [3:0] B;
  reg Op;
  wire [4:0] C;
  
  FourBitAddSub FBA2(.A(A),.B(B),.C(C[4]),.S(C[3:0]),.Op(Op),.V(V));
  
  initial begin 
    #100  A=4'd3; B=4'd4; Op=0;
    #100  A=4'd3; B=4'd4; Op=1;
    #100  A=4'd0; B=4'd5; Op=0;
    #100  A=4'd0; B=4'd5; Op=1;
    #100  A=4'd9; B=4'd2; Op=0;
    #100  A=4'd9; B=4'd2; Op=1;
    #100  A=4'd10; B=4'd10; Op=0;
    #100  A=4'd10; B=4'd10; Op=1;
    #100  A=4'd15; B=4'd15; Op=0;
    #100  A=4'd15; B=4'd15; Op=1;
    #100  $stop;
  end
endmodule

