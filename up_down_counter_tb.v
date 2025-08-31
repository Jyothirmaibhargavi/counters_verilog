`include "up_down_counter.v"
 module tb;
 reg clk,res,mode;
 wire [2:0]count;
 up_down_counter dut (.clk(clk),.res(res),.mode(mode),.count(count));
 always #5 clk=~clk;

 initial begin 
  clk=0;
  res=1;
  repeat (3) @(posedge clk);
  res=0;
    repeat (10) begin
	  mode =$random;
	  #50;
	end
	  #100;
	  $finish;
  end
endmodule 


