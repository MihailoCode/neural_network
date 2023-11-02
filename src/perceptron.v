module perceptron(
input [7:0] in,
input clk,
input [7:0] weight0,
input [7:0] weight1,
input [7:0] weight2,
input [7:0] weight3,
input [7:0] weight4,
input [7:0] weight5,
input [7:0] weight6,
input [7:0] weight7,
input [7:0] bias,
output reg [7:0] out
);

  always@(posedge clk)
    begin
      out<=in[0]*weight0+in[1]*weight1+in[2]*weight2+in[3]*weight3+in[4]*weight4+in[5]*weight5+in[6]*weight6+in[7]*weight7+bias;
    end

endmodule
