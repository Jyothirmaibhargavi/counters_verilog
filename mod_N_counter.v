module mod_N_counter(clk,res,count);
  parameter N=10;
  parameter WIDTH=4;
  input clk,res;
  output reg [WIDTH-1:0] count;

  always @(posedge clk) begin
    if (res==1) count <= 0;
    else if (count == N-1) count <= 0;
    else count <= count + 1;
  end
endmodule

