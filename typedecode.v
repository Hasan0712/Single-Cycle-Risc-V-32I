module decode (opcode,r,load,store,,itype,branch,jalr,jal,lui,auipc
);

  input wire [6:0]opcode;
  
output reg    r;
output reg    load;
output reg    branch;
output reg    store;
output reg    jalr;
output reg    itype;
output reg    jal;
output reg    lui;
output reg    auipc;



always @(*) begin
    if(opcode==7'b0110011)begin
                  
                  r=1'b1;
                  load=1'b0;
                  branch=1'b0;
                  store=1'b0;
                  jalr=1'b0;
                  itype=1'b0;
                  jal=1'b0;
                  lui=1'b0;
                  auipc=1'b0;

      end
      else if(opcode==7'b0000011)begin
            
                  r=1'b0;
                  load=1'b1;
                  branch=1'b0;
                  store=1'b0;
                  jalr=1'b0;
                  itype=1'b0;
                  jal=1'b0;
                  lui=1'b0;
                  auipc=1'b0;
      end
      else if(opcode==7'b0100011)begin
                  r=1'b0;
                  load=1'b0;
                  branch=1'b0;
                  store=1'b1;
                  jalr=1'b0;
                  itype=1'b0;
                  jal=1'b0;
                  lui=1'b0;
                  auipc=1'b0;
      end
     else if(opcode ==7'b1100011)begin
               
                  r=1'b0;
                  load=1'b0;
                  store=1'b0;
                  branch=1'b1;
                  itype=1'b0;
                  jalr=1'b0;
                  jal=1'b0;
                  lui=1'b0;
                  auipc=1'b0;
      end
      else if(opcode==7'b0010011)begin
                  r=1'b0;
                  load=1'b0;
                  store=1'b0;
                  branch=1'b0;
                  itype=1'b1;
                  jalr=1'b0;
                  jal=1'b0;
                  lui=1'b0;
                  auipc=1'b0;
      end
      else if(opcode==7'b1100111)begin
                  
                  r=1'b0;
                  load=1'b0;
                  store=1'b0;
                  branch=1'b0;
                  itype=1'b0;
                  jalr=1'b1;
                  jal=1'b0;
                  lui=1'b0;
                  auipc=1'b0;
      end
      else if (opcode==7'b1101111) begin
                    
                  r=1'b0;
                  load=1'b0;
                  store=1'b0;
                  branch=1'b0;
                  itype=1'b0;
                  jalr=1'b0;
                  jal=1'b1;
                  lui=1'b0;
                  auipc=1'b0;
        
      end
     else if (opcode==7'b0110111) begin
                   r=1'b0;
                  store=1'b0;
                  load=1'b0;
                  branch=1'b0;
                  itype=1'b0;
                  jalr=1'b0;
                  jal=1'b0;
                  lui=1'b1;
                  auipc=1'b0;      

     end
     else if(opcode==7'b0010111)begin
                  r=1'b0;
                  load=1'b0;
                  store=1'b0;
                  branch=1'b0;
                  itype=1'b0;
                  jalr=1'b0;
                  jal=1'b0;
                  lui=1'b0;
                  auipc=1'b1;
      
     end
     else begin
                   r=1'b0;
                  load=1'b0;
                  store=1'b0;
                  branch=1'b0;
                  itype=1'b0;
                  jalr=1'b0;
                  jal=1'b0;
                  lui=1'b0;
                  auipc=1'b0;
     end
end

    
endmodule