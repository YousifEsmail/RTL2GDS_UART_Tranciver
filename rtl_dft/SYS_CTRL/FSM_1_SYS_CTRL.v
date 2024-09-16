module FSM_1_SYS_CTRL (
    
    input   wire    CLK,
    input   wire    RST,
    input   wire    Rx_valid,
    input   wire    [7:0] RX_out,
    output  reg     RdEn,
    output  reg     [7:0] Addr,
    output  reg     WrEn,
    output  reg     Gate_En,
    output  reg     [7:0]Wr_D,
    output  reg     [7:0] Func,
    output  reg     ALU_EN
);
// state decleration k
localparam [2:0] detect_frame0 =3'b000,
            //detect_frame0=3'b001,
            RF_WR_ADDR=3'b010,
            RF_WR_DATA=3'b011,
        //==============
            RF_RD_ADDR=3'b100,
        //==============
            OPA=3'b101,
            OPB=3'b110,
            ALU_FUNC=3'b111;
        //==============


reg    [2:0]         current_state,
                     next_state ;


reg     [7:0] Addr_reg;
 
//state transiton 
always @(posedge CLK or negedge RST )
begin
    if (!RST) 
        begin   
             Addr_reg<=8'b0;
        current_state<=detect_frame0;
        end    
    else
        begin
           Addr_reg<=Addr; 
        current_state <= next_state ;
        end
end


// next state logic
always @(*) 
begin
case (current_state)
    //IDLE  :
    //begin
    //    if (Rx_valid)
    //        begin
    //           next_state=detect_frame0;
    //        end
    //    else
    //        begin
    //          next_state=IDLE;  
    //        end
    //end
    detect_frame0  :
    begin
        
        if (Rx_valid)
            begin             
        case (RX_out)
            8'hAA:next_state=RF_WR_ADDR;
            8'hBB:next_state=RF_RD_ADDR;
            8'hCC:next_state=OPA;
            8'hDD:next_state=ALU_FUNC;
            default:next_state=detect_frame0;
        endcase
            end
        else
            begin
              next_state=detect_frame0;  
            end
    end
    RF_WR_ADDR  :
    begin
       if (Rx_valid) 
            begin
                next_state=RF_WR_DATA;
            end
        else
            begin
               next_state=RF_WR_ADDR;
            end     
    end
    RF_WR_DATA  :
    begin
        if (Rx_valid) 
            begin
                next_state=detect_frame0;
            end
        else
            begin
               next_state=RF_WR_DATA;
            end
    end
    RF_RD_ADDR  :
    begin
     if (Rx_valid) 
            begin
                next_state=detect_frame0;
            end
        else
            begin
               next_state=RF_RD_ADDR;
            end   
    end
    OPA  :
    begin
     if (Rx_valid) 
            begin
                next_state=OPB;
            end
        else
            begin
               next_state=OPA;
            end
    end
    OPB  :
    begin
     if (Rx_valid) 
            begin
                next_state=ALU_FUNC;
            end
        else
            begin
               next_state=OPB;
            end  
    end
    ALU_FUNC  :
    begin
    if (Rx_valid) 
            begin
                next_state=detect_frame0;
            end
        else
            begin
               next_state=ALU_FUNC;
            end  
        
    end
    
    default: next_state=detect_frame0;

endcase    
end

//output logic
always @(*)     
begin
   // RdEn=1'b0;
   // Addr=8'b0;
    //WrEn=1'b0;
    //Wr_D=8'b0;
    //Gate_En=1'b0;
    //Func=8'b0;
    //ALU_EN=1'b0;
    
 case (current_state)
    //IDLE  :
    //begin
    //   RdEn=0;
    //   Addr=8'b0;
    //   WrEn=1'b0;
    //   Wr_D=8'b0;
    //   Gate_En=1'b0;
    //   Func=8'b0;
    //    ALU_EN=1'b0;
//
    //end
    detect_frame0  :
    begin
        if (Rx_valid)
        begin
            case (RX_out)
                8'hAA:
                begin
                WrEn=1'b0;
                RdEn=1'b0;
                Addr=8'b0;
                Wr_D=8'b0;
                Gate_En=1'b0;
                Func=8'b0;
                ALU_EN=1'b0;

                end   
                8'hBB:
                begin
                WrEn=1'b0;
                RdEn=1'b0;
                Addr=8'b0;
                Wr_D=8'b0;
                Gate_En=1'b0;
                Func=8'b0;
                ALU_EN=1'b0;
                
                end         
                8'hCC: 
                begin
                WrEn=1'b0;
                RdEn=1'b0;
                Addr=8'b00;
                Wr_D=8'b0;
                Gate_En=1'b0;
                Func=8'b0;
                ALU_EN=1'b0;
                    
                end
                8'hDD:
                begin
                WrEn=1'b0;
                RdEn=1'b1;
                Addr=8'b0;
                Wr_D=8'b0;
                Gate_En=1'b1;
                Func=8'b0;
                ALU_EN=1'b0;
                  
                end
                default:
                begin
                    RdEn=1'b0;
                    Addr=8'b0;
                    WrEn=1'b0;
                    Wr_D=8'b0;
                    Gate_En=1'b0;
                    Func=8'b0;
                    ALU_EN=1'b0;

                end
            endcase
        end
            else
            begin
            RdEn=1'b0;
            Addr=8'b0;
            WrEn=1'b0;
            Wr_D=8'b0;
            Gate_En=1'b0;
            Func=8'b0;
            ALU_EN=1'b0;
      
            end
    end
    RF_WR_ADDR  :
    begin
       if (Rx_valid) 
            begin
            RdEn=1'b0;
            Addr=RX_out;
            WrEn=1'b0;
            Wr_D=8'b0;
            Gate_En=1'b0;
            Func=8'b0;
            ALU_EN=1'b0;
            end
        else
            begin
            RdEn=1'b0;
            Addr=8'b0;
            WrEn=1'b0;
            Wr_D=8'b0;
            Gate_En=1'b0;
            Func=8'b0;
            ALU_EN=1'b0;
            end     
    end
    RF_WR_DATA  :
    begin
        if (Rx_valid) 
            begin
            RdEn=1'b0;
            Addr=Addr_reg;
            WrEn=1'b1;
            Wr_D=RX_out;
            Gate_En=1'b0;
            Func=8'b0;
            ALU_EN=1'b0;
            end
        else
            begin
            RdEn=1'b0;
            Addr=Addr_reg;
            WrEn=1'b0;
            Wr_D=8'b0;
            Gate_En=1'b0;
            Func=8'b0;
            ALU_EN=1'b0;
            end
    end
    RF_RD_ADDR  :
    begin
        if (Rx_valid) 
            begin
            RdEn=1'b1;
            Addr=RX_out;
            WrEn=1'b0;
            Wr_D=8'b0;
            Gate_En=1'b0;
            Func=8'b0;
            ALU_EN=1'b0;
            end
        else
            begin
            RdEn=1'b0;
            Addr=8'b0;
            WrEn=1'b0;
            Wr_D=8'b0;
            Gate_En=1'b0;
            Func=8'b0;
            ALU_EN=1'b0;
            end 
    end
    OPA  :
    begin
      if (Rx_valid) 
            begin
            RdEn=1'b0;
            Addr=8'b00;
            WrEn=1'b1;
            Wr_D=RX_out;
            Gate_En=1'b0;
            Func=8'b0;
            ALU_EN=1'b0;
            end
        else
            begin
            RdEn=1'b0;
            Addr=8'b0;
            WrEn=1'b0;
            Wr_D=8'b0;
            Gate_En=1'b0;
            Func=8'b0;
            ALU_EN=1'b0;
            end 
    end
    OPB  :
    begin
      if (Rx_valid) 
            begin
            RdEn=1'b0;
            Addr=8'b01;
            WrEn=1'b1;
            Wr_D=RX_out;
            Gate_En=1'b1;
            Func=8'b0;
            ALU_EN=1'b0;
            end
        else
            begin
            RdEn=1'b0;
            Addr=8'b0;
            WrEn=1'b0;
            Wr_D=8'b0;
            Gate_En=1'b0;
            Func=8'b0;
            ALU_EN=1'b0;
            end 
    end
    ALU_FUNC  :
    begin
        if (Rx_valid) 
            begin
            RdEn=1'b1;
            Addr=8'b01;
            WrEn=1'b0;
            Wr_D=8'b0;
            Gate_En=1'b1;
            Func=RX_out[3:0];
            ALU_EN=1'b1;
            end
        else
            begin
            RdEn=1'b0;
            Addr=8'b0;
            WrEn=1'b0;
            Wr_D=8'b0;
            Gate_En=1'b0;
            Func=8'b0;
            ALU_EN=1'b0;
            end  
        
    end
    
    default: 
    begin
        
            RdEn=1'b0;
            Addr=8'b0;
            WrEn=1'b0;
            Wr_D=8'b0;
            Gate_En=1'b0;
            Func=8'b0;
            ALU_EN=1'b0;
    end

endcase    
   
end


    
endmodule
