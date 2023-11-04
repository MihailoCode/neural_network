module activation(

    input [3:0] in,
    input [3:0] treshold,
    output reg out
);

always@(*)
begin

    if(in>treshold)
    begin
        out=1'b1;
    end
    else
    begin
        out=1'b0;
    end

end

endmodule
