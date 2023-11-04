module perceptron(
input [3:0] in,
input clk,
input [3:0] weight0,
input [3:0] weight1,
input [3:0] weight2,
input [3:0] weight3,
input [3:0] bias,
output reg [3:0] out
);

  always@(posedge clk)
    begin
      out<=in[0]*weight0+in[1]*weight1+in[2]*weight2+in[3]*weight3+bias;
    end

endmodule
