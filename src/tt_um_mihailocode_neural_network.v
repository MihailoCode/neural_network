module tt_um_mihailocode_neural_network(
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    input  wire [7:0] uio_in,   // IOs: Bidirectional Input path
    output wire [7:0] uio_out,  // IOs: Bidirectional Output path
    output wire [7:0] uio_oe,   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input wire        clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    wire [3:0] aux1,aux2,aux3,aux4;

    assign uio_oe=8'b00000000;
    assign uio_out=8'b00000000;
    
    perceptron p11(ui_in[3:0],clk,8'd2,8'd4,8'd2,8'd1,8'd0,aux1);
    perceptron p12(ui_in[3:0],clk,8'd1,8'd2,8'd3,8'd4,8'd0,aux2);
    perceptron p13(ui_in[3:0],clk,8'd1,8'd2,8'd4,8'd2,8'd0,aux3);
    perceptron p14(ui_in[3:0],clk,8'd1,8'd4,8'd2,8'd5,8'd0,aux4);

    activation a1(aux1,8'd2,uo_out[0]);
    activation a2(aux2,8'd2,uo_out[1]);
    activation a3(aux3,8'd2,uo_out[2]);
    activation a4(aux4,8'd2,uo_out[3]);
    
endmodule
