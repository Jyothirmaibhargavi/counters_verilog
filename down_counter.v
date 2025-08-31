//3-bit synchronous down counter 
module down_counter(clk,res,count);
input clk,res;
output reg[2:0]count;
  always @(posedge clk) begin
  if(res==1) count=3'b000;
  else count=count-1;  //7,6,5,4,3,2,1,0,...
  end
endmodule



