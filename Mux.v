`timescale 1ns/100ps

module mux(i0,i1,i2,i3,s1,s0,F);

 input [3:0] i0,i1,i2,i3;
 input s1,s0;
 output reg [3:0]F;

 always@(i0 or i1 or i2 or i3 or s1 or s0)
  case({s1,s0})
  2'b00:
 F=i0;
  2'b01:
 F=i1;
  2'b10:
 F=i2;
  2'b11:
 F=i3;
  endcase

endmodule
