module nor5 (input wire [0:4] i, output wire o);
 
 wire t;
 
 or3 or3_0 (-----------);

  nor3 nor3_0 (----------);

endmodule



module ir (input wire clk, reset, load, input wire [15:0] din, output wire [15:0] dout);
  dfrl dfrl_0 (clk, reset, load, din['h0], dout['h0]);
  
dfrl dfrl_1 (---------------);
 
dfrl dfrl_2 (---------------);
 
dfrl dfrl_3 (---------------);
 
dfrl dfrl_4 (---------------);
 
dfrl dfrl_5 (---------------);
 
dfrl dfrl_6 (---------------);
 
dfrl dfrl_7 (---------------);
 
dfrl dfrl_8 (---------------);
 
dfrl dfrl_9 (---------------);
 
dfrl dfrl_a (---------------);
 
dfrl dfrl_b (---------------);
 
dfrl dfrl_c (---------------);
 
dfrl dfrl_d (---------------);

dfrl dfrl_e (---------------);
  
dfrl dfrl_f (---------------);
 

endmodule


module control_logic (input wire clk, reset, input wire [15:0] cur_ins, output wire [2:0] rd_addr_a, rd_addr_b, wr_addr,
  output wire [1:0] op, output wire sel, jump, pc_inc, load_ir, wr_reg);


// Copy your assignment 3 logic here and modify.


endmodule



module mproc (input wire clk, reset, input wire [15:0] d_in, output wire [6:0] addr, output wire [15:0] d_out);

wire pc_inc, cout, cout_, sub, sel, sel_addr; 
wire [2:0] rd_addr_a, rd_addr_b, wr_addr;
wire [1:0] op; wire [8:0] _addr;
  
wire [15:0] cur_ins, d_out_a, d_out_b;

  
and2 and2_0 (-----------------);
 
pc pc_0 (------------------------------------);
  
ir ir_0 (------------------------);
  
control_logic control_logic_0 (----------------------------);
  
reg_alu reg_alu_0 (---------------------------);
  
assign d_out = d_out_a;

endmodule
