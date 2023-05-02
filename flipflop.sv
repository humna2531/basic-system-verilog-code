module flip_flop (
  input logic clk,
  input logic reset,
  input logic df,
  output logic x,
  output logic y,
  output logic z
);
  //when no reset
  always_ff @(posedge clk)
    x<=df;
  //when sync. reset
  always_ff @(posedge clk)
    if (reset)
      y <= 1'b0;
  else
    y <= df;
  
  //when asynchro. reset
  always_ff @(posedge clk or posedge reset)
    if (reset)
      z <= 1'b0;
  else 
    z <= df;
endmodule
