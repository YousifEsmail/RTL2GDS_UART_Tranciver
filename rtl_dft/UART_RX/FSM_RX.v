module FSM_RX (
    input wire RX_in,
    input wire PAR_en,
    input wire clk,
    input wire rst,
    input wire Par_err,
    input wire STR_err,
    input wire STP_err,
    input wire [3:0] bit_cnt,
    input wire [4:0] edge_cnt,
    input wire [4:0] prescale,
    output reg par_chk_en,
    output reg enable,
    output reg dat_samp_en,
    output reg str_chk_en,
    output reg stp_chk_en,
    output reg data_valid,
    output reg deser_en,
    output reg PAR_CHK_New_bit,
    output reg reset_bit_cnt,
    output reg deser_New_bit

);

// state decleration 
localparam  [2:0]Idle =3'b000 ,
                Start =3'b001 ,
                data =3'b010 ,
                Parity =3'b011 ,
                Stop =3'b100 ;
                //OP_chk= 3'b101,
               // OP_P=3'b110;



reg    [2:0]         curent_state,
                     next_state ;


always @(posedge clk or negedge rst) 
begin
    if(!rst)
    begin  
    curent_state<=Idle;
    end
    else
    curent_state<=next_state;

end



always @(*)
begin            
case (curent_state)
    Idle:
    begin
        if(RX_in)
            begin
                enable=1'b0;
                reset_bit_cnt=1'b1;
                par_chk_en=1'b0;
                str_chk_en=1'b0;
                stp_chk_en=1'b0;
                data_valid=1'b0;
                deser_en=1'b0;
                PAR_CHK_New_bit=1'b0;
                deser_New_bit=1'b0;
                dat_samp_en=1'b0;
            if (STP_err) 
                    begin
                        deser_en=1'b0;
                        data_valid=1'b0;

                    end 
                else
                    begin
                        deser_en=1'b1;
                        data_valid=1'b1;                
                    end   
                
                next_state=Idle;

            end
        else
            begin
                enable=1'b0;
                reset_bit_cnt=1'b1;
                par_chk_en=1'b0;
                str_chk_en=1'b0;
                stp_chk_en=1'b0;
                data_valid=1'b0;
                deser_en=1'b0;
                PAR_CHK_New_bit=1'b0;
                deser_New_bit=1'b0;
                dat_samp_en=1'b0;
                            if (STP_err) 
                    begin
                        deser_en=1'b0;
                        data_valid=1'b0;

                    end 
                else
                    begin
                        deser_en=1'b1;
                        data_valid=1'b1;                
                    end   

                next_state=Start;  
            end
    end

    Start:
    begin
        enable=1'b1;
        deser_en=1'b0;
        deser_New_bit=1'b0;            
        reset_bit_cnt=1'b0;
        par_chk_en=1'b0;
        data_valid=1'b0;
        dat_samp_en=1'b0;
        PAR_CHK_New_bit=1'b0;
        stp_chk_en=1'b0;





        if (edge_cnt!=prescale) 
            begin
                dat_samp_en=1'b0;
                str_chk_en=1'b0;    
                next_state=Start;   
            end
        else 
            begin
                dat_samp_en=1'b1;
                str_chk_en=1'b1;    
                next_state=data;
            end    
    end
    
    data:
        begin
            enable=1'b1;
            reset_bit_cnt=1'b0;
            dat_samp_en=1'b0;
            deser_New_bit=1'b0;            
            str_chk_en=1'b0;
            par_chk_en=1'b0;
            data_valid=1'b0;
            deser_en=1'b0;
            dat_samp_en=1'b0;
            reset_bit_cnt=1'b0;
            PAR_CHK_New_bit=1'b0;
            stp_chk_en=1'b0;





            if(STR_err)
            begin
                next_state=Idle;

            end    
else
begin
    

            if (bit_cnt!=4'b1001) begin
              begin
                    if (edge_cnt!=prescale) 
                        begin
                            deser_New_bit=1'b0;
                           PAR_CHK_New_bit=1'b0;
                            dat_samp_en=1'b0;

                            next_state=data;   
                        end
                    else 
                        begin
                            deser_New_bit=1'b1;
                            PAR_CHK_New_bit=1'b1;
                            dat_samp_en=1'b1;
                            next_state=data;
                        end    
                end  
            end
            else
                begin
                    deser_New_bit=1'b0;                                                dat_samp_en=1'b1;
                            dat_samp_en=1'b0;
                    PAR_CHK_New_bit=1'b0;            
                    if (PAR_en) 
                        begin
                        par_chk_en=1'b0;    
                        next_state=Parity;
                        end
                    else next_state=Stop;

                
                end     
        end
    
end

    Parity:
        begin
            deser_New_bit=1'b0;
            PAR_CHK_New_bit=1'b0;
            par_chk_en=1'b0;
            data_valid=1'b0;
            deser_en=1'b0;
            dat_samp_en=1'b0;
           reset_bit_cnt=1'b0;
            stp_chk_en=1'b0;
            str_chk_en=1'b0;




            enable=1'b1;
            if (bit_cnt!=4'b1010) 
                begin
                    if (edge_cnt!=prescale) begin
                    next_state=Parity;
                    deser_New_bit=1'b0;

                    end
                    else
                        begin
                            dat_samp_en=1'b1;
                            next_state=Parity;
                        end
                    
   
                end
            else 
                begin
                    par_chk_en=1'b1;    
                    next_state=Stop;
                end    
        end
    Stop:
            begin
                reset_bit_cnt=1'b1;
                enable=1'b1;
                deser_New_bit=1'b0;
                dat_samp_en=1'b0;
                par_chk_en=1'b1;
                data_valid=1'b0;
                deser_en=1'b0;
                dat_samp_en=1'b0;
                PAR_CHK_New_bit=1'b0;
                stp_chk_en=1'b0;
                str_chk_en=1'b0;






                if (edge_cnt!=prescale) 
                    begin
                par_chk_en=1'b1;
               stp_chk_en=1'b0;
                next_state=Stop; 
                dat_samp_en=1'b0;
 
 
                    end
                else if(Par_err)
                begin
                next_state=Idle;    
                par_chk_en=1'b1;
               stp_chk_en=1'b0;
                dat_samp_en=1'b0;
                end
                else 
                    begin
                        dat_samp_en=1'b1;
                        par_chk_en=1'b0;    
                        stp_chk_en=1'b1;
                       next_state=Idle;   

                            
                    end    
            end
            


  //  OP_chk:
  //      begin
  //              dat_samp_en=1'b0;
  //              reset_bit_cnt=1'b0;
  //              enable=1'b1;
  //              deser_New_bit=1'b0;            
  //              par_chk_en=1'b//0;
  //              data_valid=1'b//0;
  //            //  PAR_CHK_New_bi//t=1'b0;
  //            //  stp_chk_en=1'b//1;
  //            //  str_chk_en=1'b//0;
//
  //            //  
//
  //      end
        default:
        begin
                enable=1'b1;
                reset_bit_cnt=1'b1;
                par_chk_en=1'b0;
                str_chk_en=1'b0;
                stp_chk_en=1'b0;
                data_valid=1'b0;
                deser_en=1'b0;
                PAR_CHK_New_bit=1'b0;
                deser_New_bit=1'b0;
                dat_samp_en=1'b0;

                
                next_state=Idle;

        end

endcase
    
end





    
endmodule
