module mux_tb;
  logic [5:0] a;
  logic [5:0] b;
  logic       sel;
  logic [5:0] x;
  
  mux MUX (.*);
  initial begin
    for (int i=0; i<10 ;i++) begin
      a=$urandom_range (0,6'hFF);
      b=$urandom_range (0,6'hFF);
      sel=$random%2;
      #5;
    end
  end
  initial begin
    $dumpfile("mux.vcd");
    $dumpvars(0, mux_tb);
  end
endmodule
      
