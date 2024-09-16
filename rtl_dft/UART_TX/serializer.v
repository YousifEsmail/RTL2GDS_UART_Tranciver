module serializer (
    input wire[7:0] P_DATA,
    input wire ser_en,
    input wire clk,
    input wire rst,
    output reg ser_done,
    output reg ser_data

);

reg [2:0] ser_Count;
reg [7:0] P_DATA_reg;

always @(posedge clk or negedge rst ) 
    begin
        if (~rst) 
        begin
            ser_Count<=0;
            ser_done<=0;
            ser_data<=0;
        end
    else
    begin
        if (ser_en) 
        begin
            //if (ser_Count==4'b0000) 
            //begin
            ////P_DATA_reg<=P_DATA;
            //ser_done<=0;
            //ser_data<=P_DATA_reg[0];
            //end
            if (ser_Count==4'b111) 
             begin
            ser_Count<=0;
            ser_done<=1;
            ser_data<=P_DATA_reg[ser_Count];
             end
        else
            begin
            ser_data<=P_DATA_reg[ser_Count];
            ser_Count<=ser_Count+1'b1;
            ser_done<=0;

            end 
        end
        else 
        begin
            ser_done<=0;
            ser_Count<=0;
            ser_data<=0;

        end
    end
    end



    


    always @(*) begin
    
        if (ser_en)
        begin
        P_DATA_reg=P_DATA;
        end
        else
        begin
        P_DATA_reg=8'b0;
        end 


    end

    /*
    always @(*) 
    begin
        if (ser_Count==4'b1000) begin
            ser_Count=0;
            ser_done=1;
        end
        else if ((~|ser_Count)&ser_en) begin
            P_DATA_reg=P_DATA;
            ser_done=0;

        end
    end
*/
endmodule
