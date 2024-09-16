module MUX4x1 #(
    parameter DATA_WIDTH =8
)(
    input wire [DATA_WIDTH-1:0]IN1,
    input wire [DATA_WIDTH-1:0]IN2,
    input wire [DATA_WIDTH-1:0]IN3,
    input wire [DATA_WIDTH-1:0]IN4,
    input wire Sel1,
    input wire Sel2,
    input wire Sel3,
    input wire Sel4, 
    output reg [DATA_WIDTH-1:0]OUT

);

wire [3:0] Selx;

assign Selx={Sel1,Sel2,Sel3,Sel4};

always @(*) begin

    case (Selx)
       4'b1000 : OUT=IN1;
       4'b0100 : OUT=IN2;
       4'b0010 : OUT=IN3;
       4'b0001 : OUT=IN4;
       
        default: OUT='b0;
    endcase    
end
    

endmodule