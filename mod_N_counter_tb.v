`include "mod_N_counter.v"

module tb;
  reg clk, res;
  wire [3:0] count;

  mod_N_counter #(10,4) uut (.clk(clk), .res(res), .count(count));

  initial begin
    clk = 0;
    forever #5 clk = ~clk;   // 10ns period
  end

  initial begin
    res = 1; #10;
    res = 0;
    #200;
    $finish;
  end
endmodule

