module ir (input wire clk, reset, load, input wire [15:0] din, output wire [15:0] dout);
  
dfrl dfrl_0 (clk,reset,load,din[0],dout[0]);

dfrl dfrl_1 (clk,reset,load,din[1],dout[1]);

dfrl dfrl_2 (clk,reset,load,din[2],dout[2]);

dfrl dfrl_3 (clk,reset,load,din[3],dout[3]);

dfrl dfrl_4 (clk,reset,load,din[4],dout[4]);

dfrl dfrl_5 (clk,reset,load,din[5],dout[5]);
 
dfrl dfrl_6 (clk,reset,load,din[6],dout[6]);
  
dfrl dfrl_7 (clk,reset,load,din[7],dout[7]);
  
dfrl dfrl_8 (clk,reset,load,din[8],dout[8]);
 
dfrl dfrl_9 (clk,reset,load,din[9],dout[9]);

dfrl dfrl_a (clk,reset,load,din[10],dout[10]);
  
dfrl dfrl_b (clk,reset,load,din[11],dout[11]);
  

dfrl dfrl_c (clk,reset,load,din[12],dout[12]);
  

dfrl dfrl_d (clk,reset,load,din[13],dout[13]);
  
dfrl dfrl_e (clk,reset,load,din[14],dout[14]);
  

dfrl dfrl_f (clk,reset,load,din[15],dout[15]);
  

endmodule


module nor5 (input wire [0:4] i, output wire o);
  wire t;
  or3 or3_0 (i[0], i[1], i[2], t);
  nor3 nor3_0 (t, i[3], i[4], o);
endmodule


module control_logic (input wire clk, reset, input wire [15:0] cur_ins, output wire [2:0] rd_addr_a, rd_addr_b, wr_addr, output wire [1:0] op, output wire pc_inc, load_ir, wr_reg);

wire t, alu_ins;

//assignment 3 logic here
dfsl fetch (clk,reset,1'b1,wr_reg,pc_inc);
  
assign load_ir=pc_inc;
  
dfrl dec_exec (clk,reset,1'b1,load_ir,t);
  
nor5 nor5_0 (cur_ins [15:11] ,alu_ins);

  
and2 and2_0 (t,alu_ins,wr_reg);
  
assign rd_addr_a=cur_ins[2:0];
  
assign rd_addr_b =cur_ins[5:5];
 
 assign wr_addr =cur_ins[8:6];
  
assign op =cur_ins[10:9];

endmodule



module mproc (input wire clk, reset, input wire [15:0] ins, output wire [15:0] addr);
  wire pc_inc, cout; 
wire [2:0] rd_addr_a, rd_addr_b, wr_addr; 
wire [1:0] op; 
wire [15:0] cur_ins, d_out_a, d_out_b;

  
pc pc_0 (clk,reset,pc_inc,1'b0,1'b0,16'b0,addr);
  
ir ir_0 (clk,reset,load_ir,ins,cur_ins);
 
control_logic control_logic_0 (clk,reset,cur_ins,rd_addr_a,rd_addr_b,wr_addr,op,pc_inc,load_ir,wr_reg);

reg_alu reg_alu_0 (clk,reset,1'b1,wr_reg,op,rd_addr_a,rd_addr_b,wr_addr,16'b0,d_out_a,d_out_b,cout);

endmodule
