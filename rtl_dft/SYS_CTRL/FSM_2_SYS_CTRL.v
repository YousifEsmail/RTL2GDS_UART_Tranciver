module FSM_2_SYS_CTRL (
    
    input   wire    CLK,
    input   wire    RST,
    input   wire    [7:0] Rd_D,
    input   wire    Rd_D_VLD,
    input   wire    [15:0] ALU_OUT,
    input   wire    ALU_VLD,
    input   wire    BUSY,
    output  reg     TX_VLD,
    output  reg [7:0] TX_IN

);
// state decleration 
localparam [2:0] IDLE =3'b000,
            Wait_data=3'b001,
            Wait_ALU=3'b010,
            Send_TX_f_ALU=3'b011,
            Send_TX_f_Data=3'b100;
        //==============


reg    [2:0]         current_state,
                     next_state ;

reg [15:0] Alu_res_FSM;
reg first_frame;
reg [4:0]finish;
 
//state transiton 
always @(posedge CLK or negedge RST )
begin
    if (!RST) 
        begin    
        current_state<=IDLE;
        end    
    else
        begin
        current_state <= next_state ;
        end
end


// next state logic
always @(*) 
begin
case (current_state)
    IDLE  :
    begin
        if (Rd_D_VLD&~ALU_VLD)
            begin
               next_state=Wait_data;
            end
        else if (~Rd_D_VLD&ALU_VLD)
            begin
              next_state=Wait_ALU;  
            end
        else if (~Rd_D_VLD&~ALU_VLD)
            begin
              next_state=IDLE;  
            end
        else
            begin
             next_state=IDLE;  
            end        
    end
    Wait_data  :
    begin        
        if (BUSY)
            begin
                 next_state=Send_TX_f_Data;  

            end
        else
            begin
              next_state=Wait_data;  
            end
    end
    Wait_ALU  :
    begin
       if (BUSY) 
            begin
                next_state=Send_TX_f_ALU;
            end
        else
            begin
               next_state=Wait_ALU;
            end     
    end
    Send_TX_f_Data  :
    begin
        if (BUSY) 
            begin
                next_state=Send_TX_f_Data;
            end
        else
            begin
               next_state=IDLE;
            end
    end
    Send_TX_f_ALU  :
    begin
     if (BUSY) 
            begin
                next_state=Send_TX_f_ALU;
            end
        else
            if(first_frame)
            begin
               next_state=IDLE;
            end
            else if (finish[4])
            begin
                next_state=IDLE;
            end
            else
            begin
                next_state=Send_TX_f_ALU;
            end
               
    end
    default:
    begin
     next_state=IDLE;   
    end
     

endcase    
end

//output logic
always @(*) 
begin
    //TX_VLD=1'b0;
    //TX_IN=8'b0;
    //Alu_res_FSM=16'b0;
    //first_frame=1'b0;
case (current_state)
    IDLE  :
    begin
        if (Rd_D_VLD&~ALU_VLD)
            begin
                TX_VLD=1'b1;
                TX_IN=Rd_D;
                Alu_res_FSM=16'b0;
                first_frame=1'b0;   
               finish=5'b1;
         
            end
        else if (~Rd_D_VLD&ALU_VLD)
            begin
                TX_VLD=1'b1;
                Alu_res_FSM=ALU_OUT;
                TX_IN=Alu_res_FSM[7:0];
                first_frame=1'b1; 
                finish=5'b1;           
            end
        else if (~Rd_D_VLD&~ALU_VLD)
            begin
                TX_VLD=1'b0;
                TX_IN=8'b0;
                Alu_res_FSM=16'b0;
                first_frame=1'b1;
                finish=5'b1;
            end
        else
            begin
                TX_VLD=1'b0;
                TX_IN=8'b0;
                Alu_res_FSM=16'b0;
                first_frame=1'b0;
                finish=5'b1;
            end          
    end
    Wait_data  :
    begin        
        if (BUSY)
            begin
                TX_VLD=1'b1;
                TX_IN=Rd_D;
                Alu_res_FSM=16'b0;
                first_frame=1'b0; 
                finish=5'b1;
  
            end
        else
            begin
                TX_VLD=1'b1;
                TX_IN=Rd_D;
                Alu_res_FSM=16'b0;
                first_frame=1'b0;
                finish=5'b1;
 
                  
            end
    end
    Wait_ALU  :
    begin
       if (BUSY) 
            begin
                TX_VLD=1'b1;
                Alu_res_FSM=ALU_OUT;
                TX_IN=Alu_res_FSM[7:0];
                first_frame=1'b1; 
                finish=5'b1;

                
            end
        else
            begin
                TX_VLD=1'b1;
                Alu_res_FSM=ALU_OUT;
                TX_IN=Alu_res_FSM[7:0];
                first_frame=1'b1; 
                finish=5'b1;

                
            end     
    end
    Send_TX_f_Data  :
    begin
        if (BUSY) 
            begin
                TX_VLD=1'b0;
                TX_IN=Rd_D;
                Alu_res_FSM=16'b0;
                first_frame=1'b0;
                finish=5'b1;
   
            end
        else
            begin
                TX_VLD=1'b1;
                TX_IN=Rd_D;
                Alu_res_FSM=16'b0;
                first_frame=1'b0; 
                finish=5'b1;
  
            end
    end
    Send_TX_f_ALU  :
    begin
     if (BUSY) 
            begin
                TX_VLD=1'b0;
                Alu_res_FSM=ALU_OUT;
                TX_IN=Alu_res_FSM[7:0];
                first_frame=1'b1; 
                finish={finish,1'b0};

           end
        else
            if(first_frame)
            begin
                TX_VLD=1'b1;
                Alu_res_FSM=ALU_OUT;
                TX_IN=Alu_res_FSM[15:7];
                first_frame=1'b0;
                finish={finish,1'b0};
            end
            else
            begin
                TX_VLD=1'b1;
                TX_IN=8'b0;
                Alu_res_FSM=16'b0111;
                first_frame=1'b0;
                finish=5'b1;

                
            end   
    end
    default:
    begin
    finish=5'b1;
    first_frame=1'b0;
    TX_VLD=1'b0;
    TX_IN=8'b0;




    end
endcase    
end


    
endmodule
