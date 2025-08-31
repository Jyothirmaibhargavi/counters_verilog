`include "johnson_counter.v"
module tb;
reg clk,res;
wire [3:0]q;
johnson_counter dut (.clk(clk),.res(res),.q(q));
always #5 clk=~clk;
 initial begin
  clk=0;
  res=1;
  repeat(3)@(posedge clk);
  res=0;
  #200;
  $finish;
  end
  endmodule 



