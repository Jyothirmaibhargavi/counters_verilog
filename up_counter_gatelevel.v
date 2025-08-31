//synchronous 3-bit up counter using gatelevel 
module d_ff (clk,res,d,q);
input clk,res,d;
output reg q;

always @(posedge clk) begin
  if(res==1) q<=0;
  else  q<=d;
 end
endmodule 

module up_counter_gatelevel(clk,res,count);
 input clk,res;
 output [2:0] count;
 wire d0,d1,d2;

 d_ff g1 (.clk(clk),.res(res),.d(d0),.q(count[0]));
 d_ff g2 (.clk(clk),.res(res),.d(d1),.q(count[1]));
 d_ff g3 (.clk(clk),.res(res),.d(d2),.q(count[2]));
 assign d0=~count[0];
 assign d1=count[1]^count[0];
 assign d2=(count[2]&(~count[1]))|(count[2]&(~count[0]))|(~(count[2])&count[1]&count[0]);
endmodule


