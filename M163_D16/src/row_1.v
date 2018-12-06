//Design:           SystolicMUL_163_8_digits
//
//File:             row_1.v
//
//Use:              1st row of a PE == 7 * 4xor + 1 * 3xor
//
//Author:           Cheng Ruijiao
//
//Version           Date                Note
//  1.0             2014/12/21          Original created
//
//----------------------------------------------------------

`define DIGITS 16

module row_1(
//-----input-----
  a_in,
  g_in,
  b_in,
  t_m_1_in,
  t_i_1_in,
  t_i_2_in,
//-----output-----
  t_i_1_out,
  t_i_2_out
);

input [`DIGITS-1:0]a_in,g_in;
input b_in,t_m_1_in;
input [`DIGITS-1:0]t_i_1_in;
input [`DIGITS-2:0]t_i_2_in;

output [`DIGITS-2:0]t_i_1_out;
output t_i_2_out;

cell_3 u0(
  .a_in(a_in[0]),
  .g_in(g_in[0]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[0]),
  .t_i_out(t_i_1_out[0])
  );
  
cell_4 u1(
  .a_in(a_in[1]),
  .g_in(g_in[1]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[1]),
  .t_i_2_in(t_i_2_in[0]),  
  .t_i_out(t_i_1_out[1])
  );
  
cell_4 u2(
  .a_in(a_in[2]),
  .g_in(g_in[2]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[2]),
  .t_i_2_in(t_i_2_in[1]),  
  .t_i_out(t_i_1_out[2])
  );
  
cell_4 u3(
  .a_in(a_in[3]),
  .g_in(g_in[3]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[3]),
  .t_i_2_in(t_i_2_in[2]),
  .t_i_out(t_i_1_out[3])
  );
  
cell_4 u4(
  .a_in(a_in[4]),
  .g_in(g_in[4]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[4]),
  .t_i_2_in(t_i_2_in[3]),
  .t_i_out(t_i_1_out[4])
  );
  
cell_4 u5(
  .a_in(a_in[5]),
  .g_in(g_in[5]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[5]),
  .t_i_2_in(t_i_2_in[4]),  
  .t_i_out(t_i_1_out[5])
  );
  
cell_4 u6(
  .a_in(a_in[6]),
  .g_in(g_in[6]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[6]),
  .t_i_2_in(t_i_2_in[5]), 
  .t_i_out(t_i_1_out[6])
  );

cell_4 u7(
  .a_in(a_in[7]),
  .g_in(g_in[7]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[7]),
  .t_i_2_in(t_i_2_in[6]), 
  .t_i_out(t_i_1_out[7])
  );
  
cell_4 u8(
  .a_in(a_in[8]),
  .g_in(g_in[8]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[8]),
  .t_i_2_in(t_i_2_in[7]), 
  .t_i_out(t_i_1_out[8])
  );

cell_4 u9(
  .a_in(a_in[9]),
  .g_in(g_in[9]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[9]),
  .t_i_2_in(t_i_2_in[8]), 
  .t_i_out(t_i_1_out[9])
  );

cell_4 u10(
  .a_in(a_in[10]),
  .g_in(g_in[10]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[10]),
  .t_i_2_in(t_i_2_in[9]), 
  .t_i_out(t_i_1_out[10])
  );

cell_4 u11(
  .a_in(a_in[11]),
  .g_in(g_in[11]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[11]),
  .t_i_2_in(t_i_2_in[10]), 
  .t_i_out(t_i_1_out[11])
  );

cell_4 u12(
  .a_in(a_in[12]),
  .g_in(g_in[12]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[12]),
  .t_i_2_in(t_i_2_in[11]), 
  .t_i_out(t_i_1_out[12])
  );

cell_4 u13(
  .a_in(a_in[13]),
  .g_in(g_in[13]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[13]),
  .t_i_2_in(t_i_2_in[12]), 
  .t_i_out(t_i_1_out[13])
  );
  
cell_4 u14(
  .a_in(a_in[14]),
  .g_in(g_in[14]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[14]),
  .t_i_2_in(t_i_2_in[13]), 
  .t_i_out(t_i_1_out[14])
  );

cell_4 u15(
  .a_in(a_in[15]),
  .g_in(g_in[15]),
  .b_in(b_in),
  .t_m_1_in(t_m_1_in),
  .t_i_1_in(t_i_1_in[15]),
  .t_i_2_in(t_i_2_in[14]), 
  .t_i_out(t_i_2_out)
  );

endmodule
