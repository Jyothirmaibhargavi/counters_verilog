//synchronous 3 bit up-down counter 
module up_down_counter (clk,res,count,mode);
input clk,res,mode;
output reg [2:0] count;
always@(posedge clk) begin
   if (res==1) count=3'b000;   
    else begin
      if (mode==1) count= count+1; //up counter 0,1,2,3,4,5,6,7
         else count= count-1;      // down counter 7,6,5,4,3,2,1,0
  end
 end
endmodule 


