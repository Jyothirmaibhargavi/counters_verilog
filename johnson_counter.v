module johnson_counter(clk,res,q);
 input clk,res;
 output reg [3:0] q;
 reg [3:0]q_temp;
  
  always @(posedge clk) begin
   if (res==1) begin
      q=4'b0000;
	  q_temp=4'b0000;
   end

   else begin
     q_temp= q;
	 q=(q<<1);
	 q[0]=~q_temp[3];
   end
 end
endmodule



module johnson_counter(clk,res,q);
input clk,res;
output reg[3:0]q;
always@(posedge clk)
begin
if(res==1)
q<=4'b0000;
else
q<={~q[0],q[3:1]};
end
endmodule






