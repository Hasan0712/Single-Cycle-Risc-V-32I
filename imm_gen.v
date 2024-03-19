module immgene(
    input wire[31:0] instr,
    input wire I_imm,
    input wire Ij_imm,
    input wire Il_imm,
    input wire SB_imm,
    input wire S_imm,
    input wire UJ_imm,
    input wire U_imm,
     input wire Ui_imm,
    output reg[31:0]Imm_out

);
   
always @(*)begin
    if (I_imm==1'b1 ) begin
        Imm_out= {{20{instr[31]}}, instr[31:20]};
        
    end
    else if (S_imm==1'b1) begin
        Imm_out={{20{instr[31]}}, instr[31:25], instr[11:7]};
        
    end
    else if(SB_imm==1'b1)begin
        Imm_out={{19{instr[31]}},instr[31],instr[7],instr[30:25],instr[11:8],1'b0};
    end
    else if (UJ_imm==1'b1) begin
        Imm_out={{11{instr[31]}},instr[31],instr[19:12],instr[20],instr[30:21],1'b0};
        
    end
    else if(Ij_imm==1'b1)begin
        Imm_out= {{20{instr[31]}}, instr[31:20]};
    end
    else if(Il_imm==1'b1)begin
        Imm_out= {{20{instr[31]}}, instr[31:20]};
    end
    else if(U_imm==1'b1)begin
        Imm_out={instr[31:12], 12'd0};
    end
    else if(Ui_imm==1'b1)begin
        Imm_out={instr[31:12], 12'd0};
    end
   end

 endmodule