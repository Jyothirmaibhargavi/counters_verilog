module mod10_up_counter(clk,res,count);
 input clk,res;
 output reg [3:0] count;

 always @(posedge clk) begin
  if (res==1) count<=4'b0000;
  else if  (count == 4'b1001)	count<=0;
  else count<=count+1;
end
endmodule 

