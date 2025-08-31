// 3 bit synchronous up counter 
module up_counter(clk,res,count);
input clk,res;
output reg[2:0]count;
  always @(posedge clk) begin
      if(res==1) count<=3'b000;
        else count<=count+1;  // 0,1,2,3,4,5,6,7,
  end
endmodule


