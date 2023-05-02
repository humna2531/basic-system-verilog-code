module flipflop_tb ();
  logic clk;
  logic reset;
  logic df;
  logic x;
  logic y;
  logic z;
  
  flip_flop FLIP_FLOP (.*);
  initial begin
    clk=1'b1;
    #5
    clk=1'b0;
    #5
  end
  initial begin
    reset = 1'b1;
    d_i = 1'b0;
    @(posedge clk);
    reset = 1'b0;
    @(posedge clk);
    d_i = 1'b1;
    @(posedge clk);
    @(posedge clk);
    @(negedge clk);
    reset = 1'b1;
    @(posedge clk);
    @(posedge clk);
    reset = 1'b0;
    @(posedge clk);
    @(posedge clk);
  end
    $finish();
  end
  initial begin
    $dumpfile("flip_flop.vcd");
    $dumpvars(0, flipflop_tb);
  end   
endmodule
  
    
