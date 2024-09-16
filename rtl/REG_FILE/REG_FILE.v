module REG_FILE #(
    parameter DATA_WIDTH =8 ,parameter DATA_DEPTH=16
) (
    input wire [DATA_WIDTH-1:0] WrData ,
    input wire [3:0] Address,
    input wire WrEn,
    input wire RdEn,
    input wire CLK,
    input wire RST,
    output reg [DATA_WIDTH-1:0] RdData,
    output reg Rd_VLD,
    output wire [DATA_WIDTH-1:0] Reg_0,
    output wire [DATA_WIDTH-1:0] Reg_1,
    output wire [DATA_WIDTH-1:0] Reg_2,
    output wire [DATA_WIDTH-1:0] Reg_3

);

reg [DATA_WIDTH-1:0] Reg_File [DATA_DEPTH-1:0];

always @(posedge CLK or negedge RST ) begin
    if(!RST)
    begin
            Reg_File[0] <= 8'b0 ;
            Reg_File[1] <= 8'b0 ;        
            Reg_File[2] <= 8'b000011101 ;//UART_config===>[0]PAREn===>[1] PARTYP
            Reg_File[3] <= 8'b1000 ;//Clk_div.i_div_ratio "8"
            Reg_File[4] <= 8'b0 ;
            Reg_File[5] <= 8'b0 ;
            Reg_File[6] <= 8'b0 ;
            Reg_File[7] <= 8'b0 ;
            Reg_File[8] <= 8'b0 ;
            Reg_File[9] <= 8'b0 ;
            Reg_File[10] <= 8'b0 ; 
            Reg_File[11] <= 8'b0 ;
            Reg_File[12] <= 8'b0 ;
            Reg_File[13] <= 8'b0 ;
            Reg_File[14] <= 8'b0 ;
            Reg_File[15] <= 8'b0 ;
            Rd_VLD<=1'b0;

    end
    else if (WrEn&&!RdEn) begin
        case (Address)
            4'b0000:Reg_File[0] <= WrData ;
            4'b0001:Reg_File[1] <= WrData ;
            4'b0010:Reg_File[2] <= WrData ;
            4'b0011:Reg_File[3] <= WrData ;
            4'b0100:Reg_File[4] <= WrData ;
            4'b0101:Reg_File[5] <= WrData ;
            4'b0110:Reg_File[6] <= WrData ;
            4'b0111:Reg_File[7] <= WrData ;
            4'b1000:Reg_File[8] <= WrData ;
            4'b1001:Reg_File[9] <= WrData ;
            4'b1010:Reg_File[10] <= WrData ;
            4'b1011:Reg_File[11] <= WrData ;
            4'b1100:Reg_File[12] <= WrData ;
            4'b1101:Reg_File[13] <= WrData ;
            4'b1110:Reg_File[14] <= WrData ;
            4'b1111:Reg_File[15] <= WrData ;
            
        endcase
                    Rd_VLD<=1'b0;

    end
    else if (RdEn&&!WrEn) begin
        case (Address)
            4'b0000:begin 
                RdData<=Reg_File[0];     
                Rd_VLD<=1'b1;
                end
            4'b0001:
                begin 
                RdData<=Reg_File[1];          
                Rd_VLD<=1'b1;
                end
            4'b0010:
                begin 
                RdData<=Reg_File[2];          
                Rd_VLD<=1'b1;
                end
            4'b0011:
                begin 
                RdData<=Reg_File[3];          
                Rd_VLD<=1'b1;
                end
            4'b0100:
                begin 
                RdData<=Reg_File[4];          
                Rd_VLD<=1'b1;
                end
            4'b0101:
                begin 
                RdData<=Reg_File[5];          
                Rd_VLD<=1'b1;
                end
            4'b0110:
                begin 
                RdData<=Reg_File[6];          
                Rd_VLD<=1'b1;
                end
            4'b0111:
                begin 
                RdData<=Reg_File[7];          
                Rd_VLD<=1'b1;
                end
            4'b1000:
                begin 
                RdData<=Reg_File[8];          
                Rd_VLD<=1'b1;
                end
            4'b1001:
                begin 
                RdData<=Reg_File[9];          
                Rd_VLD<=1'b1;
                end
            4'b1010:
                begin 
                RdData<=Reg_File[10];         
                Rd_VLD<=1'b1;
                end
            4'b1011:
                begin 
                RdData<=Reg_File[11];         
                Rd_VLD<=1'b1;
                end
            4'b1100:
                begin 
                RdData<=Reg_File[12];         
                Rd_VLD<=1'b1;
                end
            4'b1101:
                begin 
                RdData<=Reg_File[13];         
                Rd_VLD<=1'b1;
                end
            4'b1110:
                begin 
                RdData<=Reg_File[14];         
                Rd_VLD<=1'b1;
                end
            4'b1111:
                begin 
                RdData<=Reg_File[15];         
                Rd_VLD<=1'b1;
                end
        endcase
    
        end
        else    
        begin
        Rd_VLD<=1'b0;

        end

end

assign Reg_0=Reg_File[0];
assign Reg_1=Reg_File[1];
assign Reg_2=Reg_File[2]; 
assign Reg_3=Reg_File[3];


endmodule