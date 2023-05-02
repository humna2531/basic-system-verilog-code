module mux (
  input wire  [5:0] a,
  input wire  [5:0] b,
  input wire        sel,
  output wire [5:0]  x
);
  assign x = sel ? a:b;
  
endmodule
  
  
