//ring counter using shift opertor 
module ring_counter(clk,res,q);
 input clk,res;
 output reg [3:0] q;
 reg [3:0]q_temp;  
  always @(posedge clk) begin
   if (res==1) begin
      q=4'b0001;
  q_temp=4'b0000;
 end
 else begin
   q_temp= q;
 q=(q<<1);
 q[0]=q_temp[3];
 end
 end
 endmodule

//ring counter without using shift operator

module ring_counter(clk,res,q);
input clk,res;
output reg[3:0]q;
always@(posedge clk)
begin
if(res==1)
q=4'b0001;
else
q<={q[2:0], q[3]};
end
endmodule
