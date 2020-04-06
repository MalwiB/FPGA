// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Apr 19 11:51:00 2018
// Host        : DESKTOP-I5G3QUH running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/Malwi/Dropbox/studia-semestry/VI
//               SEMESTR/FPGA/STATE
//               MACHINE/_state_machine/state_machine_local_project.sim/sim_1/impl/timing/xsim/FSM_time_impl.v}
// Design      : FSM
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "96a930eb" *) 
(* NotValidForBitStream *)
module FSM
   (CLK,
    LCD,
    RESET,
    KEY_ROW,
    KEY_COL);
  input CLK;
  output [7:0]LCD;
  input RESET;
  input [3:0]KEY_ROW;
  output [3:0]KEY_COL;

  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [1:0]CURRENT_FSM_KEY_LCD;
  wire [3:0]KEY_COL;
  wire KEY_COL0;
  wire \KEY_COL[0]_i_1_n_0 ;
  wire \KEY_COL[1]_i_1_n_0 ;
  wire \KEY_COL[2]_i_1_n_0 ;
  wire \KEY_COL[3]_i_1_n_0 ;
  wire \KEY_COL[3]_i_3_n_0 ;
  wire [3:0]KEY_COL_OBUF;
  wire \KEY_COL_reg[0]_lopt_replica_1 ;
  wire \KEY_COL_reg[1]_lopt_replica_1 ;
  wire \KEY_COL_reg[2]_lopt_replica_1 ;
  wire \KEY_COL_reg[3]_lopt_replica_1 ;
  wire [3:0]KEY_ROW;
  wire [3:0]KEY_ROW_IBUF;
  wire [7:0]LCD;
  wire \LCD[2]_i_1_n_0 ;
  wire \LCD[3]_i_1_n_0 ;
  wire \LCD[6]_i_1_n_0 ;
  wire \LCD[7]_i_1_n_0 ;
  wire \LCD[7]_i_2_n_0 ;
  wire [7:1]LCD_OBUF;
  wire \LCD_reg[2]_lopt_replica_1 ;
  wire [1:0]NEXT_FSM_KEY_LCD;
  wire \NEXT_FSM_KEY_LCD[0]_i_1_n_0 ;
  wire \NEXT_FSM_KEY_LCD[1]_i_10_n_0 ;
  wire \NEXT_FSM_KEY_LCD[1]_i_11_n_0 ;
  wire \NEXT_FSM_KEY_LCD[1]_i_12_n_0 ;
  wire \NEXT_FSM_KEY_LCD[1]_i_13_n_0 ;
  wire \NEXT_FSM_KEY_LCD[1]_i_14_n_0 ;
  wire \NEXT_FSM_KEY_LCD[1]_i_15_n_0 ;
  wire \NEXT_FSM_KEY_LCD[1]_i_2_n_0 ;
  wire \NEXT_FSM_KEY_LCD[1]_i_4_n_0 ;
  wire \NEXT_FSM_KEY_LCD[1]_i_5_n_0 ;
  wire \NEXT_FSM_KEY_LCD[1]_i_6_n_0 ;
  wire \NEXT_FSM_KEY_LCD[1]_i_8_n_0 ;
  wire \NEXT_FSM_KEY_LCD[1]_i_9_n_0 ;
  wire \NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ;
  wire \NEXT_FSM_KEY_LCD_reg[1]_i_3_n_0 ;
  wire \NEXT_FSM_KEY_LCD_reg[1]_i_7_n_0 ;
  wire RESET;
  wire RESET_IBUF;
  wire \delay_LCD_counter[0]_i_10_n_0 ;
  wire \delay_LCD_counter[0]_i_11_n_0 ;
  wire \delay_LCD_counter[0]_i_12_n_0 ;
  wire \delay_LCD_counter[0]_i_13_n_0 ;
  wire \delay_LCD_counter[0]_i_14_n_0 ;
  wire \delay_LCD_counter[0]_i_15_n_0 ;
  wire \delay_LCD_counter[0]_i_17_n_0 ;
  wire \delay_LCD_counter[0]_i_18_n_0 ;
  wire \delay_LCD_counter[0]_i_19_n_0 ;
  wire \delay_LCD_counter[0]_i_20_n_0 ;
  wire \delay_LCD_counter[0]_i_21_n_0 ;
  wire \delay_LCD_counter[0]_i_22_n_0 ;
  wire \delay_LCD_counter[0]_i_23_n_0 ;
  wire \delay_LCD_counter[0]_i_24_n_0 ;
  wire \delay_LCD_counter[0]_i_26_n_0 ;
  wire \delay_LCD_counter[0]_i_27_n_0 ;
  wire \delay_LCD_counter[0]_i_28_n_0 ;
  wire \delay_LCD_counter[0]_i_29_n_0 ;
  wire \delay_LCD_counter[0]_i_30_n_0 ;
  wire \delay_LCD_counter[0]_i_31_n_0 ;
  wire \delay_LCD_counter[0]_i_32_n_0 ;
  wire \delay_LCD_counter[0]_i_33_n_0 ;
  wire \delay_LCD_counter[0]_i_34_n_0 ;
  wire \delay_LCD_counter[0]_i_35_n_0 ;
  wire \delay_LCD_counter[0]_i_36_n_0 ;
  wire \delay_LCD_counter[0]_i_37_n_0 ;
  wire \delay_LCD_counter[0]_i_38_n_0 ;
  wire \delay_LCD_counter[0]_i_39_n_0 ;
  wire \delay_LCD_counter[0]_i_40_n_0 ;
  wire \delay_LCD_counter[0]_i_41_n_0 ;
  wire \delay_LCD_counter[0]_i_4_n_0 ;
  wire \delay_LCD_counter[0]_i_5_n_0 ;
  wire \delay_LCD_counter[0]_i_6_n_0 ;
  wire \delay_LCD_counter[0]_i_7_n_0 ;
  wire \delay_LCD_counter[0]_i_8_n_0 ;
  wire \delay_LCD_counter[0]_i_9_n_0 ;
  wire \delay_LCD_counter[12]_i_2_n_0 ;
  wire \delay_LCD_counter[12]_i_3_n_0 ;
  wire \delay_LCD_counter[12]_i_4_n_0 ;
  wire \delay_LCD_counter[12]_i_5_n_0 ;
  wire \delay_LCD_counter[16]_i_2_n_0 ;
  wire \delay_LCD_counter[16]_i_3_n_0 ;
  wire \delay_LCD_counter[16]_i_4_n_0 ;
  wire \delay_LCD_counter[16]_i_5_n_0 ;
  wire \delay_LCD_counter[20]_i_2_n_0 ;
  wire \delay_LCD_counter[20]_i_3_n_0 ;
  wire \delay_LCD_counter[20]_i_4_n_0 ;
  wire \delay_LCD_counter[20]_i_5_n_0 ;
  wire \delay_LCD_counter[24]_i_2_n_0 ;
  wire \delay_LCD_counter[24]_i_3_n_0 ;
  wire \delay_LCD_counter[24]_i_4_n_0 ;
  wire \delay_LCD_counter[24]_i_5_n_0 ;
  wire \delay_LCD_counter[28]_i_2_n_0 ;
  wire \delay_LCD_counter[28]_i_3_n_0 ;
  wire \delay_LCD_counter[28]_i_4_n_0 ;
  wire \delay_LCD_counter[28]_i_5_n_0 ;
  wire \delay_LCD_counter[4]_i_2_n_0 ;
  wire \delay_LCD_counter[4]_i_3_n_0 ;
  wire \delay_LCD_counter[4]_i_4_n_0 ;
  wire \delay_LCD_counter[4]_i_5_n_0 ;
  wire \delay_LCD_counter[8]_i_2_n_0 ;
  wire \delay_LCD_counter[8]_i_3_n_0 ;
  wire \delay_LCD_counter[8]_i_4_n_0 ;
  wire \delay_LCD_counter[8]_i_5_n_0 ;
  wire [31:0]delay_LCD_counter_reg;
  wire \delay_LCD_counter_reg[0]_i_16_n_0 ;
  wire \delay_LCD_counter_reg[0]_i_25_n_0 ;
  wire \delay_LCD_counter_reg[0]_i_2_n_0 ;
  wire \delay_LCD_counter_reg[0]_i_2_n_4 ;
  wire \delay_LCD_counter_reg[0]_i_2_n_5 ;
  wire \delay_LCD_counter_reg[0]_i_2_n_6 ;
  wire \delay_LCD_counter_reg[0]_i_2_n_7 ;
  wire \delay_LCD_counter_reg[0]_i_3_n_0 ;
  wire \delay_LCD_counter_reg[12]_i_1_n_0 ;
  wire \delay_LCD_counter_reg[12]_i_1_n_4 ;
  wire \delay_LCD_counter_reg[12]_i_1_n_5 ;
  wire \delay_LCD_counter_reg[12]_i_1_n_6 ;
  wire \delay_LCD_counter_reg[12]_i_1_n_7 ;
  wire \delay_LCD_counter_reg[16]_i_1_n_0 ;
  wire \delay_LCD_counter_reg[16]_i_1_n_4 ;
  wire \delay_LCD_counter_reg[16]_i_1_n_5 ;
  wire \delay_LCD_counter_reg[16]_i_1_n_6 ;
  wire \delay_LCD_counter_reg[16]_i_1_n_7 ;
  wire \delay_LCD_counter_reg[20]_i_1_n_0 ;
  wire \delay_LCD_counter_reg[20]_i_1_n_4 ;
  wire \delay_LCD_counter_reg[20]_i_1_n_5 ;
  wire \delay_LCD_counter_reg[20]_i_1_n_6 ;
  wire \delay_LCD_counter_reg[20]_i_1_n_7 ;
  wire \delay_LCD_counter_reg[24]_i_1_n_0 ;
  wire \delay_LCD_counter_reg[24]_i_1_n_4 ;
  wire \delay_LCD_counter_reg[24]_i_1_n_5 ;
  wire \delay_LCD_counter_reg[24]_i_1_n_6 ;
  wire \delay_LCD_counter_reg[24]_i_1_n_7 ;
  wire \delay_LCD_counter_reg[28]_i_1_n_4 ;
  wire \delay_LCD_counter_reg[28]_i_1_n_5 ;
  wire \delay_LCD_counter_reg[28]_i_1_n_6 ;
  wire \delay_LCD_counter_reg[28]_i_1_n_7 ;
  wire \delay_LCD_counter_reg[4]_i_1_n_0 ;
  wire \delay_LCD_counter_reg[4]_i_1_n_4 ;
  wire \delay_LCD_counter_reg[4]_i_1_n_5 ;
  wire \delay_LCD_counter_reg[4]_i_1_n_6 ;
  wire \delay_LCD_counter_reg[4]_i_1_n_7 ;
  wire \delay_LCD_counter_reg[8]_i_1_n_0 ;
  wire \delay_LCD_counter_reg[8]_i_1_n_4 ;
  wire \delay_LCD_counter_reg[8]_i_1_n_5 ;
  wire \delay_LCD_counter_reg[8]_i_1_n_6 ;
  wire \delay_LCD_counter_reg[8]_i_1_n_7 ;
  wire is_first_LCD;
  wire is_first_LCD_i_1_n_0;
  wire [1:0]key_decode_fsm_sig;
  wire \key_decode_fsm_sig[0]_i_1_n_0 ;
  wire \key_decode_fsm_sig[1]_i_1_n_0 ;
  wire \key_decode_fsm_sig[1]_i_2_n_0 ;
  wire [3:0]key_hex;
  wire key_hex0;
  wire \key_hex[3]_i_3_n_0 ;
  wire \key_hex[3]_i_4_n_0 ;
  wire \key_hex_reg_n_0_[0] ;
  wire \key_hex_reg_n_0_[1] ;
  wire \key_hex_reg_n_0_[2] ;
  wire \key_hex_reg_n_0_[3] ;
  wire [2:0]lcd_fsm;
  wire \lcd_fsm[1]_i_1_n_0 ;
  wire [3:0]lcd_tmp;
  wire p_0_in;
  wire [3:0]plusOp;
  wire sel;
  wire \wait_cntr[2]_i_1_n_0 ;
  wire [3:0]wait_cntr_reg__0;
  wire [3:0]\NLW_NEXT_FSM_KEY_LCD_reg[1]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_NEXT_FSM_KEY_LCD_reg[1]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_NEXT_FSM_KEY_LCD_reg[1]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_NEXT_FSM_KEY_LCD_reg[1]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_NEXT_FSM_KEY_LCD_reg[1]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_NEXT_FSM_KEY_LCD_reg[1]_i_7_O_UNCONNECTED ;
  wire [2:0]\NLW_delay_LCD_counter_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_delay_LCD_counter_reg[0]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_delay_LCD_counter_reg[0]_i_16_CO_UNCONNECTED ;
  wire [3:0]\NLW_delay_LCD_counter_reg[0]_i_16_O_UNCONNECTED ;
  wire [2:0]\NLW_delay_LCD_counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_LCD_counter_reg[0]_i_25_CO_UNCONNECTED ;
  wire [3:0]\NLW_delay_LCD_counter_reg[0]_i_25_O_UNCONNECTED ;
  wire [2:0]\NLW_delay_LCD_counter_reg[0]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_delay_LCD_counter_reg[0]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_delay_LCD_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_LCD_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_LCD_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_LCD_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_delay_LCD_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_LCD_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_LCD_counter_reg[8]_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("FSM_time_impl.sdf",,,,"tool_control");
end
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_FSM_KEY_LCD_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ),
        .D(NEXT_FSM_KEY_LCD[0]),
        .Q(CURRENT_FSM_KEY_LCD[0]),
        .R(\KEY_COL[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_FSM_KEY_LCD_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ),
        .D(NEXT_FSM_KEY_LCD[1]),
        .Q(CURRENT_FSM_KEY_LCD[1]),
        .R(\KEY_COL[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \KEY_COL[0]_i_1 
       (.I0(key_decode_fsm_sig[1]),
        .I1(key_decode_fsm_sig[0]),
        .O(\KEY_COL[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABFFFFFFF)) 
    \KEY_COL[1]_i_1 
       (.I0(key_decode_fsm_sig[1]),
        .I1(KEY_ROW_IBUF[1]),
        .I2(KEY_ROW_IBUF[0]),
        .I3(KEY_ROW_IBUF[2]),
        .I4(KEY_ROW_IBUF[3]),
        .I5(key_decode_fsm_sig[0]),
        .O(\KEY_COL[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABFFFFFFF)) 
    \KEY_COL[2]_i_1 
       (.I0(key_decode_fsm_sig[0]),
        .I1(KEY_ROW_IBUF[1]),
        .I2(KEY_ROW_IBUF[0]),
        .I3(KEY_ROW_IBUF[2]),
        .I4(KEY_ROW_IBUF[3]),
        .I5(key_decode_fsm_sig[1]),
        .O(\KEY_COL[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \KEY_COL[3]_i_1 
       (.I0(RESET_IBUF),
        .I1(\NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ),
        .O(\KEY_COL[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \KEY_COL[3]_i_2 
       (.I0(wait_cntr_reg__0[3]),
        .I1(wait_cntr_reg__0[2]),
        .I2(wait_cntr_reg__0[0]),
        .I3(wait_cntr_reg__0[1]),
        .I4(\NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ),
        .O(KEY_COL0));
  LUT6 #(
    .INIT(64'h55555555BFFFFFFF)) 
    \KEY_COL[3]_i_3 
       (.I0(key_decode_fsm_sig[1]),
        .I1(KEY_ROW_IBUF[3]),
        .I2(KEY_ROW_IBUF[2]),
        .I3(KEY_ROW_IBUF[0]),
        .I4(KEY_ROW_IBUF[1]),
        .I5(key_decode_fsm_sig[0]),
        .O(\KEY_COL[3]_i_3_n_0 ));
  OBUF \KEY_COL_OBUF[0]_inst 
       (.I(\KEY_COL_reg[0]_lopt_replica_1 ),
        .O(KEY_COL[0]));
  OBUF \KEY_COL_OBUF[1]_inst 
       (.I(\KEY_COL_reg[1]_lopt_replica_1 ),
        .O(KEY_COL[1]));
  OBUF \KEY_COL_OBUF[2]_inst 
       (.I(\KEY_COL_reg[2]_lopt_replica_1 ),
        .O(KEY_COL[2]));
  OBUF \KEY_COL_OBUF[3]_inst 
       (.I(\KEY_COL_reg[3]_lopt_replica_1 ),
        .O(KEY_COL[3]));
  FDRE #(
    .INIT(1'b0)) 
    \KEY_COL_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(KEY_COL0),
        .D(\KEY_COL[0]_i_1_n_0 ),
        .Q(KEY_COL_OBUF[0]),
        .R(\KEY_COL[3]_i_1_n_0 ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \KEY_COL_reg[0]_lopt_replica 
       (.C(CLK_IBUF_BUFG),
        .CE(KEY_COL0),
        .D(\KEY_COL[0]_i_1_n_0 ),
        .Q(\KEY_COL_reg[0]_lopt_replica_1 ),
        .R(\KEY_COL[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \KEY_COL_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(KEY_COL0),
        .D(\KEY_COL[1]_i_1_n_0 ),
        .Q(KEY_COL_OBUF[1]),
        .R(\KEY_COL[3]_i_1_n_0 ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \KEY_COL_reg[1]_lopt_replica 
       (.C(CLK_IBUF_BUFG),
        .CE(KEY_COL0),
        .D(\KEY_COL[1]_i_1_n_0 ),
        .Q(\KEY_COL_reg[1]_lopt_replica_1 ),
        .R(\KEY_COL[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \KEY_COL_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(KEY_COL0),
        .D(\KEY_COL[2]_i_1_n_0 ),
        .Q(KEY_COL_OBUF[2]),
        .R(\KEY_COL[3]_i_1_n_0 ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \KEY_COL_reg[2]_lopt_replica 
       (.C(CLK_IBUF_BUFG),
        .CE(KEY_COL0),
        .D(\KEY_COL[2]_i_1_n_0 ),
        .Q(\KEY_COL_reg[2]_lopt_replica_1 ),
        .R(\KEY_COL[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \KEY_COL_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(KEY_COL0),
        .D(\KEY_COL[3]_i_3_n_0 ),
        .Q(KEY_COL_OBUF[3]),
        .R(\KEY_COL[3]_i_1_n_0 ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \KEY_COL_reg[3]_lopt_replica 
       (.C(CLK_IBUF_BUFG),
        .CE(KEY_COL0),
        .D(\KEY_COL[3]_i_3_n_0 ),
        .Q(\KEY_COL_reg[3]_lopt_replica_1 ),
        .R(\KEY_COL[3]_i_1_n_0 ));
  IBUF \KEY_ROW_IBUF[0]_inst 
       (.I(KEY_ROW[0]),
        .O(KEY_ROW_IBUF[0]));
  IBUF \KEY_ROW_IBUF[1]_inst 
       (.I(KEY_ROW[1]),
        .O(KEY_ROW_IBUF[1]));
  IBUF \KEY_ROW_IBUF[2]_inst 
       (.I(KEY_ROW[2]),
        .O(KEY_ROW_IBUF[2]));
  IBUF \KEY_ROW_IBUF[3]_inst 
       (.I(KEY_ROW[3]),
        .O(KEY_ROW_IBUF[3]));
  LUT3 #(
    .INIT(8'h40)) 
    \LCD[2]_i_1 
       (.I0(lcd_tmp[2]),
        .I1(lcd_tmp[1]),
        .I2(lcd_tmp[3]),
        .O(\LCD[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0820)) 
    \LCD[3]_i_1 
       (.I0(lcd_tmp[3]),
        .I1(lcd_tmp[0]),
        .I2(lcd_tmp[2]),
        .I3(lcd_tmp[1]),
        .O(\LCD[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \LCD[6]_i_1 
       (.I0(lcd_tmp[2]),
        .I1(lcd_tmp[3]),
        .I2(lcd_tmp[1]),
        .I3(lcd_tmp[0]),
        .O(\LCD[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \LCD[7]_i_1 
       (.I0(sel),
        .O(\LCD[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \LCD[7]_i_2 
       (.I0(is_first_LCD),
        .O(\LCD[7]_i_2_n_0 ));
  OBUF \LCD_OBUF[0]_inst 
       (.I(1'b1),
        .O(LCD[0]));
  OBUF \LCD_OBUF[1]_inst 
       (.I(\LCD_reg[2]_lopt_replica_1 ),
        .O(LCD[1]));
  OBUF \LCD_OBUF[2]_inst 
       (.I(LCD_OBUF[1]),
        .O(LCD[2]));
  OBUF \LCD_OBUF[3]_inst 
       (.I(LCD_OBUF[3]),
        .O(LCD[3]));
  OBUF \LCD_OBUF[4]_inst 
       (.I(1'b1),
        .O(LCD[4]));
  OBUF \LCD_OBUF[5]_inst 
       (.I(1'b1),
        .O(LCD[5]));
  OBUF \LCD_OBUF[6]_inst 
       (.I(LCD_OBUF[6]),
        .O(LCD[6]));
  OBUF \LCD_OBUF[7]_inst 
       (.I(LCD_OBUF[7]),
        .O(LCD[7]));
  FDRE #(
    .INIT(1'b0)) 
    \LCD_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\LCD[7]_i_1_n_0 ),
        .D(\LCD[2]_i_1_n_0 ),
        .Q(LCD_OBUF[1]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \LCD_reg[2]_lopt_replica 
       (.C(CLK_IBUF_BUFG),
        .CE(\LCD[7]_i_1_n_0 ),
        .D(\LCD[2]_i_1_n_0 ),
        .Q(\LCD_reg[2]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LCD_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\LCD[7]_i_1_n_0 ),
        .D(\LCD[3]_i_1_n_0 ),
        .Q(LCD_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LCD_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\LCD[7]_i_1_n_0 ),
        .D(\LCD[6]_i_1_n_0 ),
        .Q(LCD_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LCD_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\LCD[7]_i_1_n_0 ),
        .D(\LCD[7]_i_2_n_0 ),
        .Q(LCD_OBUF[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFB74000)) 
    \NEXT_FSM_KEY_LCD[0]_i_1 
       (.I0(\key_hex_reg_n_0_[2] ),
        .I1(\key_hex_reg_n_0_[3] ),
        .I2(\key_hex_reg_n_0_[1] ),
        .I3(\key_hex_reg_n_0_[0] ),
        .I4(CURRENT_FSM_KEY_LCD[0]),
        .I5(CURRENT_FSM_KEY_LCD[1]),
        .O(\NEXT_FSM_KEY_LCD[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \NEXT_FSM_KEY_LCD[1]_i_10 
       (.I0(delay_LCD_counter_reg[17]),
        .I1(delay_LCD_counter_reg[16]),
        .I2(delay_LCD_counter_reg[15]),
        .O(\NEXT_FSM_KEY_LCD[1]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \NEXT_FSM_KEY_LCD[1]_i_11 
       (.I0(delay_LCD_counter_reg[14]),
        .I1(delay_LCD_counter_reg[13]),
        .I2(delay_LCD_counter_reg[12]),
        .O(\NEXT_FSM_KEY_LCD[1]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \NEXT_FSM_KEY_LCD[1]_i_12 
       (.I0(delay_LCD_counter_reg[11]),
        .I1(delay_LCD_counter_reg[10]),
        .I2(delay_LCD_counter_reg[9]),
        .O(\NEXT_FSM_KEY_LCD[1]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \NEXT_FSM_KEY_LCD[1]_i_13 
       (.I0(delay_LCD_counter_reg[8]),
        .I1(delay_LCD_counter_reg[7]),
        .I2(delay_LCD_counter_reg[6]),
        .O(\NEXT_FSM_KEY_LCD[1]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \NEXT_FSM_KEY_LCD[1]_i_14 
       (.I0(delay_LCD_counter_reg[5]),
        .I1(delay_LCD_counter_reg[4]),
        .I2(delay_LCD_counter_reg[3]),
        .O(\NEXT_FSM_KEY_LCD[1]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \NEXT_FSM_KEY_LCD[1]_i_15 
       (.I0(delay_LCD_counter_reg[2]),
        .I1(delay_LCD_counter_reg[1]),
        .I2(delay_LCD_counter_reg[0]),
        .O(\NEXT_FSM_KEY_LCD[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h2226220222222222)) 
    \NEXT_FSM_KEY_LCD[1]_i_2 
       (.I0(CURRENT_FSM_KEY_LCD[1]),
        .I1(CURRENT_FSM_KEY_LCD[0]),
        .I2(\key_hex_reg_n_0_[1] ),
        .I3(\key_hex_reg_n_0_[0] ),
        .I4(\key_hex_reg_n_0_[2] ),
        .I5(\key_hex_reg_n_0_[3] ),
        .O(\NEXT_FSM_KEY_LCD[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \NEXT_FSM_KEY_LCD[1]_i_4 
       (.I0(delay_LCD_counter_reg[30]),
        .I1(delay_LCD_counter_reg[31]),
        .O(\NEXT_FSM_KEY_LCD[1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \NEXT_FSM_KEY_LCD[1]_i_5 
       (.I0(delay_LCD_counter_reg[29]),
        .I1(delay_LCD_counter_reg[28]),
        .I2(delay_LCD_counter_reg[27]),
        .O(\NEXT_FSM_KEY_LCD[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \NEXT_FSM_KEY_LCD[1]_i_6 
       (.I0(delay_LCD_counter_reg[26]),
        .I1(delay_LCD_counter_reg[25]),
        .I2(delay_LCD_counter_reg[24]),
        .O(\NEXT_FSM_KEY_LCD[1]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \NEXT_FSM_KEY_LCD[1]_i_8 
       (.I0(delay_LCD_counter_reg[23]),
        .I1(delay_LCD_counter_reg[22]),
        .I2(delay_LCD_counter_reg[21]),
        .O(\NEXT_FSM_KEY_LCD[1]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \NEXT_FSM_KEY_LCD[1]_i_9 
       (.I0(delay_LCD_counter_reg[20]),
        .I1(delay_LCD_counter_reg[19]),
        .I2(delay_LCD_counter_reg[18]),
        .O(\NEXT_FSM_KEY_LCD[1]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \NEXT_FSM_KEY_LCD_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ),
        .D(\NEXT_FSM_KEY_LCD[0]_i_1_n_0 ),
        .Q(NEXT_FSM_KEY_LCD[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \NEXT_FSM_KEY_LCD_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ),
        .D(\NEXT_FSM_KEY_LCD[1]_i_2_n_0 ),
        .Q(NEXT_FSM_KEY_LCD[1]),
        .R(1'b0));
  CARRY4 \NEXT_FSM_KEY_LCD_reg[1]_i_1 
       (.CI(\NEXT_FSM_KEY_LCD_reg[1]_i_3_n_0 ),
        .CO({\NLW_NEXT_FSM_KEY_LCD_reg[1]_i_1_CO_UNCONNECTED [3],\NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ,\NLW_NEXT_FSM_KEY_LCD_reg[1]_i_1_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_NEXT_FSM_KEY_LCD_reg[1]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,\NEXT_FSM_KEY_LCD[1]_i_4_n_0 ,\NEXT_FSM_KEY_LCD[1]_i_5_n_0 ,\NEXT_FSM_KEY_LCD[1]_i_6_n_0 }));
  CARRY4 \NEXT_FSM_KEY_LCD_reg[1]_i_3 
       (.CI(\NEXT_FSM_KEY_LCD_reg[1]_i_7_n_0 ),
        .CO({\NEXT_FSM_KEY_LCD_reg[1]_i_3_n_0 ,\NLW_NEXT_FSM_KEY_LCD_reg[1]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_NEXT_FSM_KEY_LCD_reg[1]_i_3_O_UNCONNECTED [3:0]),
        .S({\NEXT_FSM_KEY_LCD[1]_i_8_n_0 ,\NEXT_FSM_KEY_LCD[1]_i_9_n_0 ,\NEXT_FSM_KEY_LCD[1]_i_10_n_0 ,\NEXT_FSM_KEY_LCD[1]_i_11_n_0 }));
  CARRY4 \NEXT_FSM_KEY_LCD_reg[1]_i_7 
       (.CI(1'b0),
        .CO({\NEXT_FSM_KEY_LCD_reg[1]_i_7_n_0 ,\NLW_NEXT_FSM_KEY_LCD_reg[1]_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_NEXT_FSM_KEY_LCD_reg[1]_i_7_O_UNCONNECTED [3:0]),
        .S({\NEXT_FSM_KEY_LCD[1]_i_12_n_0 ,\NEXT_FSM_KEY_LCD[1]_i_13_n_0 ,\NEXT_FSM_KEY_LCD[1]_i_14_n_0 ,\NEXT_FSM_KEY_LCD[1]_i_15_n_0 }));
  IBUF RESET_IBUF_inst
       (.I(RESET),
        .O(RESET_IBUF));
  LUT2 #(
    .INIT(4'h1)) 
    \delay_LCD_counter[0]_i_10 
       (.I0(delay_LCD_counter_reg[26]),
        .I1(delay_LCD_counter_reg[27]),
        .O(\delay_LCD_counter[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \delay_LCD_counter[0]_i_11 
       (.I0(delay_LCD_counter_reg[24]),
        .I1(delay_LCD_counter_reg[25]),
        .O(\delay_LCD_counter[0]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[0]_i_12 
       (.I0(delay_LCD_counter_reg[3]),
        .O(\delay_LCD_counter[0]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[0]_i_13 
       (.I0(delay_LCD_counter_reg[2]),
        .O(\delay_LCD_counter[0]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[0]_i_14 
       (.I0(delay_LCD_counter_reg[1]),
        .O(\delay_LCD_counter[0]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[0]_i_15 
       (.I0(delay_LCD_counter_reg[0]),
        .O(\delay_LCD_counter[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \delay_LCD_counter[0]_i_17 
       (.I0(delay_LCD_counter_reg[22]),
        .I1(delay_LCD_counter_reg[23]),
        .O(\delay_LCD_counter[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \delay_LCD_counter[0]_i_18 
       (.I0(delay_LCD_counter_reg[20]),
        .I1(delay_LCD_counter_reg[21]),
        .O(\delay_LCD_counter[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \delay_LCD_counter[0]_i_19 
       (.I0(delay_LCD_counter_reg[18]),
        .I1(delay_LCD_counter_reg[19]),
        .O(\delay_LCD_counter[0]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \delay_LCD_counter[0]_i_20 
       (.I0(delay_LCD_counter_reg[16]),
        .I1(delay_LCD_counter_reg[17]),
        .O(\delay_LCD_counter[0]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \delay_LCD_counter[0]_i_21 
       (.I0(delay_LCD_counter_reg[22]),
        .I1(delay_LCD_counter_reg[23]),
        .O(\delay_LCD_counter[0]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \delay_LCD_counter[0]_i_22 
       (.I0(delay_LCD_counter_reg[20]),
        .I1(delay_LCD_counter_reg[21]),
        .O(\delay_LCD_counter[0]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \delay_LCD_counter[0]_i_23 
       (.I0(delay_LCD_counter_reg[18]),
        .I1(delay_LCD_counter_reg[19]),
        .O(\delay_LCD_counter[0]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \delay_LCD_counter[0]_i_24 
       (.I0(delay_LCD_counter_reg[16]),
        .I1(delay_LCD_counter_reg[17]),
        .O(\delay_LCD_counter[0]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \delay_LCD_counter[0]_i_26 
       (.I0(delay_LCD_counter_reg[14]),
        .I1(delay_LCD_counter_reg[15]),
        .O(\delay_LCD_counter[0]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \delay_LCD_counter[0]_i_27 
       (.I0(delay_LCD_counter_reg[12]),
        .I1(delay_LCD_counter_reg[13]),
        .O(\delay_LCD_counter[0]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \delay_LCD_counter[0]_i_28 
       (.I0(delay_LCD_counter_reg[10]),
        .I1(delay_LCD_counter_reg[11]),
        .O(\delay_LCD_counter[0]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \delay_LCD_counter[0]_i_29 
       (.I0(delay_LCD_counter_reg[8]),
        .I1(delay_LCD_counter_reg[9]),
        .O(\delay_LCD_counter[0]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \delay_LCD_counter[0]_i_30 
       (.I0(delay_LCD_counter_reg[14]),
        .I1(delay_LCD_counter_reg[15]),
        .O(\delay_LCD_counter[0]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \delay_LCD_counter[0]_i_31 
       (.I0(delay_LCD_counter_reg[12]),
        .I1(delay_LCD_counter_reg[13]),
        .O(\delay_LCD_counter[0]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \delay_LCD_counter[0]_i_32 
       (.I0(delay_LCD_counter_reg[10]),
        .I1(delay_LCD_counter_reg[11]),
        .O(\delay_LCD_counter[0]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \delay_LCD_counter[0]_i_33 
       (.I0(delay_LCD_counter_reg[8]),
        .I1(delay_LCD_counter_reg[9]),
        .O(\delay_LCD_counter[0]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \delay_LCD_counter[0]_i_34 
       (.I0(delay_LCD_counter_reg[6]),
        .I1(delay_LCD_counter_reg[7]),
        .O(\delay_LCD_counter[0]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \delay_LCD_counter[0]_i_35 
       (.I0(delay_LCD_counter_reg[4]),
        .I1(delay_LCD_counter_reg[5]),
        .O(\delay_LCD_counter[0]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \delay_LCD_counter[0]_i_36 
       (.I0(delay_LCD_counter_reg[2]),
        .I1(delay_LCD_counter_reg[3]),
        .O(\delay_LCD_counter[0]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \delay_LCD_counter[0]_i_37 
       (.I0(delay_LCD_counter_reg[0]),
        .I1(delay_LCD_counter_reg[1]),
        .O(\delay_LCD_counter[0]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \delay_LCD_counter[0]_i_38 
       (.I0(delay_LCD_counter_reg[6]),
        .I1(delay_LCD_counter_reg[7]),
        .O(\delay_LCD_counter[0]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \delay_LCD_counter[0]_i_39 
       (.I0(delay_LCD_counter_reg[4]),
        .I1(delay_LCD_counter_reg[5]),
        .O(\delay_LCD_counter[0]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \delay_LCD_counter[0]_i_4 
       (.I0(delay_LCD_counter_reg[30]),
        .I1(delay_LCD_counter_reg[31]),
        .O(\delay_LCD_counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \delay_LCD_counter[0]_i_40 
       (.I0(delay_LCD_counter_reg[2]),
        .I1(delay_LCD_counter_reg[3]),
        .O(\delay_LCD_counter[0]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \delay_LCD_counter[0]_i_41 
       (.I0(delay_LCD_counter_reg[0]),
        .I1(delay_LCD_counter_reg[1]),
        .O(\delay_LCD_counter[0]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \delay_LCD_counter[0]_i_5 
       (.I0(delay_LCD_counter_reg[28]),
        .I1(delay_LCD_counter_reg[29]),
        .O(\delay_LCD_counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \delay_LCD_counter[0]_i_6 
       (.I0(delay_LCD_counter_reg[26]),
        .I1(delay_LCD_counter_reg[27]),
        .O(\delay_LCD_counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \delay_LCD_counter[0]_i_7 
       (.I0(delay_LCD_counter_reg[24]),
        .I1(delay_LCD_counter_reg[25]),
        .O(\delay_LCD_counter[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \delay_LCD_counter[0]_i_8 
       (.I0(delay_LCD_counter_reg[30]),
        .I1(delay_LCD_counter_reg[31]),
        .O(\delay_LCD_counter[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \delay_LCD_counter[0]_i_9 
       (.I0(delay_LCD_counter_reg[28]),
        .I1(delay_LCD_counter_reg[29]),
        .O(\delay_LCD_counter[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[12]_i_2 
       (.I0(delay_LCD_counter_reg[15]),
        .O(\delay_LCD_counter[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[12]_i_3 
       (.I0(delay_LCD_counter_reg[14]),
        .O(\delay_LCD_counter[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[12]_i_4 
       (.I0(delay_LCD_counter_reg[13]),
        .O(\delay_LCD_counter[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[12]_i_5 
       (.I0(delay_LCD_counter_reg[12]),
        .O(\delay_LCD_counter[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[16]_i_2 
       (.I0(delay_LCD_counter_reg[19]),
        .O(\delay_LCD_counter[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[16]_i_3 
       (.I0(delay_LCD_counter_reg[18]),
        .O(\delay_LCD_counter[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[16]_i_4 
       (.I0(delay_LCD_counter_reg[17]),
        .O(\delay_LCD_counter[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[16]_i_5 
       (.I0(delay_LCD_counter_reg[16]),
        .O(\delay_LCD_counter[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[20]_i_2 
       (.I0(delay_LCD_counter_reg[23]),
        .O(\delay_LCD_counter[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[20]_i_3 
       (.I0(delay_LCD_counter_reg[22]),
        .O(\delay_LCD_counter[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[20]_i_4 
       (.I0(delay_LCD_counter_reg[21]),
        .O(\delay_LCD_counter[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[20]_i_5 
       (.I0(delay_LCD_counter_reg[20]),
        .O(\delay_LCD_counter[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[24]_i_2 
       (.I0(delay_LCD_counter_reg[27]),
        .O(\delay_LCD_counter[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[24]_i_3 
       (.I0(delay_LCD_counter_reg[26]),
        .O(\delay_LCD_counter[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[24]_i_4 
       (.I0(delay_LCD_counter_reg[25]),
        .O(\delay_LCD_counter[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[24]_i_5 
       (.I0(delay_LCD_counter_reg[24]),
        .O(\delay_LCD_counter[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[28]_i_2 
       (.I0(delay_LCD_counter_reg[31]),
        .O(\delay_LCD_counter[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[28]_i_3 
       (.I0(delay_LCD_counter_reg[30]),
        .O(\delay_LCD_counter[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[28]_i_4 
       (.I0(delay_LCD_counter_reg[29]),
        .O(\delay_LCD_counter[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[28]_i_5 
       (.I0(delay_LCD_counter_reg[28]),
        .O(\delay_LCD_counter[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[4]_i_2 
       (.I0(delay_LCD_counter_reg[7]),
        .O(\delay_LCD_counter[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[4]_i_3 
       (.I0(delay_LCD_counter_reg[6]),
        .O(\delay_LCD_counter[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[4]_i_4 
       (.I0(delay_LCD_counter_reg[5]),
        .O(\delay_LCD_counter[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[4]_i_5 
       (.I0(delay_LCD_counter_reg[4]),
        .O(\delay_LCD_counter[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[8]_i_2 
       (.I0(delay_LCD_counter_reg[11]),
        .O(\delay_LCD_counter[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[8]_i_3 
       (.I0(delay_LCD_counter_reg[10]),
        .O(\delay_LCD_counter[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[8]_i_4 
       (.I0(delay_LCD_counter_reg[9]),
        .O(\delay_LCD_counter[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_LCD_counter[8]_i_5 
       (.I0(delay_LCD_counter_reg[8]),
        .O(\delay_LCD_counter[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[0]_i_2_n_7 ),
        .Q(delay_LCD_counter_reg[0]),
        .R(1'b0));
  CARRY4 \delay_LCD_counter_reg[0]_i_1 
       (.CI(\delay_LCD_counter_reg[0]_i_3_n_0 ),
        .CO({sel,\NLW_delay_LCD_counter_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\delay_LCD_counter[0]_i_4_n_0 ,\delay_LCD_counter[0]_i_5_n_0 ,\delay_LCD_counter[0]_i_6_n_0 ,\delay_LCD_counter[0]_i_7_n_0 }),
        .O(\NLW_delay_LCD_counter_reg[0]_i_1_O_UNCONNECTED [3:0]),
        .S({\delay_LCD_counter[0]_i_8_n_0 ,\delay_LCD_counter[0]_i_9_n_0 ,\delay_LCD_counter[0]_i_10_n_0 ,\delay_LCD_counter[0]_i_11_n_0 }));
  CARRY4 \delay_LCD_counter_reg[0]_i_16 
       (.CI(\delay_LCD_counter_reg[0]_i_25_n_0 ),
        .CO({\delay_LCD_counter_reg[0]_i_16_n_0 ,\NLW_delay_LCD_counter_reg[0]_i_16_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\delay_LCD_counter[0]_i_26_n_0 ,\delay_LCD_counter[0]_i_27_n_0 ,\delay_LCD_counter[0]_i_28_n_0 ,\delay_LCD_counter[0]_i_29_n_0 }),
        .O(\NLW_delay_LCD_counter_reg[0]_i_16_O_UNCONNECTED [3:0]),
        .S({\delay_LCD_counter[0]_i_30_n_0 ,\delay_LCD_counter[0]_i_31_n_0 ,\delay_LCD_counter[0]_i_32_n_0 ,\delay_LCD_counter[0]_i_33_n_0 }));
  CARRY4 \delay_LCD_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\delay_LCD_counter_reg[0]_i_2_n_0 ,\NLW_delay_LCD_counter_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\delay_LCD_counter_reg[0]_i_2_n_4 ,\delay_LCD_counter_reg[0]_i_2_n_5 ,\delay_LCD_counter_reg[0]_i_2_n_6 ,\delay_LCD_counter_reg[0]_i_2_n_7 }),
        .S({\delay_LCD_counter[0]_i_12_n_0 ,\delay_LCD_counter[0]_i_13_n_0 ,\delay_LCD_counter[0]_i_14_n_0 ,\delay_LCD_counter[0]_i_15_n_0 }));
  CARRY4 \delay_LCD_counter_reg[0]_i_25 
       (.CI(1'b0),
        .CO({\delay_LCD_counter_reg[0]_i_25_n_0 ,\NLW_delay_LCD_counter_reg[0]_i_25_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\delay_LCD_counter[0]_i_34_n_0 ,\delay_LCD_counter[0]_i_35_n_0 ,\delay_LCD_counter[0]_i_36_n_0 ,\delay_LCD_counter[0]_i_37_n_0 }),
        .O(\NLW_delay_LCD_counter_reg[0]_i_25_O_UNCONNECTED [3:0]),
        .S({\delay_LCD_counter[0]_i_38_n_0 ,\delay_LCD_counter[0]_i_39_n_0 ,\delay_LCD_counter[0]_i_40_n_0 ,\delay_LCD_counter[0]_i_41_n_0 }));
  CARRY4 \delay_LCD_counter_reg[0]_i_3 
       (.CI(\delay_LCD_counter_reg[0]_i_16_n_0 ),
        .CO({\delay_LCD_counter_reg[0]_i_3_n_0 ,\NLW_delay_LCD_counter_reg[0]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\delay_LCD_counter[0]_i_17_n_0 ,\delay_LCD_counter[0]_i_18_n_0 ,\delay_LCD_counter[0]_i_19_n_0 ,\delay_LCD_counter[0]_i_20_n_0 }),
        .O(\NLW_delay_LCD_counter_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\delay_LCD_counter[0]_i_21_n_0 ,\delay_LCD_counter[0]_i_22_n_0 ,\delay_LCD_counter[0]_i_23_n_0 ,\delay_LCD_counter[0]_i_24_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[8]_i_1_n_5 ),
        .Q(delay_LCD_counter_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[8]_i_1_n_4 ),
        .Q(delay_LCD_counter_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[12]_i_1_n_7 ),
        .Q(delay_LCD_counter_reg[12]),
        .R(1'b0));
  CARRY4 \delay_LCD_counter_reg[12]_i_1 
       (.CI(\delay_LCD_counter_reg[8]_i_1_n_0 ),
        .CO({\delay_LCD_counter_reg[12]_i_1_n_0 ,\NLW_delay_LCD_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\delay_LCD_counter_reg[12]_i_1_n_4 ,\delay_LCD_counter_reg[12]_i_1_n_5 ,\delay_LCD_counter_reg[12]_i_1_n_6 ,\delay_LCD_counter_reg[12]_i_1_n_7 }),
        .S({\delay_LCD_counter[12]_i_2_n_0 ,\delay_LCD_counter[12]_i_3_n_0 ,\delay_LCD_counter[12]_i_4_n_0 ,\delay_LCD_counter[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[12]_i_1_n_6 ),
        .Q(delay_LCD_counter_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[12]_i_1_n_5 ),
        .Q(delay_LCD_counter_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[12]_i_1_n_4 ),
        .Q(delay_LCD_counter_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[16]_i_1_n_7 ),
        .Q(delay_LCD_counter_reg[16]),
        .R(1'b0));
  CARRY4 \delay_LCD_counter_reg[16]_i_1 
       (.CI(\delay_LCD_counter_reg[12]_i_1_n_0 ),
        .CO({\delay_LCD_counter_reg[16]_i_1_n_0 ,\NLW_delay_LCD_counter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\delay_LCD_counter_reg[16]_i_1_n_4 ,\delay_LCD_counter_reg[16]_i_1_n_5 ,\delay_LCD_counter_reg[16]_i_1_n_6 ,\delay_LCD_counter_reg[16]_i_1_n_7 }),
        .S({\delay_LCD_counter[16]_i_2_n_0 ,\delay_LCD_counter[16]_i_3_n_0 ,\delay_LCD_counter[16]_i_4_n_0 ,\delay_LCD_counter[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[16]_i_1_n_6 ),
        .Q(delay_LCD_counter_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[16]_i_1_n_5 ),
        .Q(delay_LCD_counter_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[16]_i_1_n_4 ),
        .Q(delay_LCD_counter_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[0]_i_2_n_6 ),
        .Q(delay_LCD_counter_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[20]_i_1_n_7 ),
        .Q(delay_LCD_counter_reg[20]),
        .R(1'b0));
  CARRY4 \delay_LCD_counter_reg[20]_i_1 
       (.CI(\delay_LCD_counter_reg[16]_i_1_n_0 ),
        .CO({\delay_LCD_counter_reg[20]_i_1_n_0 ,\NLW_delay_LCD_counter_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\delay_LCD_counter_reg[20]_i_1_n_4 ,\delay_LCD_counter_reg[20]_i_1_n_5 ,\delay_LCD_counter_reg[20]_i_1_n_6 ,\delay_LCD_counter_reg[20]_i_1_n_7 }),
        .S({\delay_LCD_counter[20]_i_2_n_0 ,\delay_LCD_counter[20]_i_3_n_0 ,\delay_LCD_counter[20]_i_4_n_0 ,\delay_LCD_counter[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[20]_i_1_n_6 ),
        .Q(delay_LCD_counter_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[20]_i_1_n_5 ),
        .Q(delay_LCD_counter_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[20]_i_1_n_4 ),
        .Q(delay_LCD_counter_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[24]_i_1_n_7 ),
        .Q(delay_LCD_counter_reg[24]),
        .R(1'b0));
  CARRY4 \delay_LCD_counter_reg[24]_i_1 
       (.CI(\delay_LCD_counter_reg[20]_i_1_n_0 ),
        .CO({\delay_LCD_counter_reg[24]_i_1_n_0 ,\NLW_delay_LCD_counter_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\delay_LCD_counter_reg[24]_i_1_n_4 ,\delay_LCD_counter_reg[24]_i_1_n_5 ,\delay_LCD_counter_reg[24]_i_1_n_6 ,\delay_LCD_counter_reg[24]_i_1_n_7 }),
        .S({\delay_LCD_counter[24]_i_2_n_0 ,\delay_LCD_counter[24]_i_3_n_0 ,\delay_LCD_counter[24]_i_4_n_0 ,\delay_LCD_counter[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[24]_i_1_n_6 ),
        .Q(delay_LCD_counter_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[26] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[24]_i_1_n_5 ),
        .Q(delay_LCD_counter_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[27] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[24]_i_1_n_4 ),
        .Q(delay_LCD_counter_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[28] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[28]_i_1_n_7 ),
        .Q(delay_LCD_counter_reg[28]),
        .R(1'b0));
  CARRY4 \delay_LCD_counter_reg[28]_i_1 
       (.CI(\delay_LCD_counter_reg[24]_i_1_n_0 ),
        .CO(\NLW_delay_LCD_counter_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\delay_LCD_counter_reg[28]_i_1_n_4 ,\delay_LCD_counter_reg[28]_i_1_n_5 ,\delay_LCD_counter_reg[28]_i_1_n_6 ,\delay_LCD_counter_reg[28]_i_1_n_7 }),
        .S({\delay_LCD_counter[28]_i_2_n_0 ,\delay_LCD_counter[28]_i_3_n_0 ,\delay_LCD_counter[28]_i_4_n_0 ,\delay_LCD_counter[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[29] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[28]_i_1_n_6 ),
        .Q(delay_LCD_counter_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[0]_i_2_n_5 ),
        .Q(delay_LCD_counter_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[30] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[28]_i_1_n_5 ),
        .Q(delay_LCD_counter_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[31] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[28]_i_1_n_4 ),
        .Q(delay_LCD_counter_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[0]_i_2_n_4 ),
        .Q(delay_LCD_counter_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[4]_i_1_n_7 ),
        .Q(delay_LCD_counter_reg[4]),
        .R(1'b0));
  CARRY4 \delay_LCD_counter_reg[4]_i_1 
       (.CI(\delay_LCD_counter_reg[0]_i_2_n_0 ),
        .CO({\delay_LCD_counter_reg[4]_i_1_n_0 ,\NLW_delay_LCD_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\delay_LCD_counter_reg[4]_i_1_n_4 ,\delay_LCD_counter_reg[4]_i_1_n_5 ,\delay_LCD_counter_reg[4]_i_1_n_6 ,\delay_LCD_counter_reg[4]_i_1_n_7 }),
        .S({\delay_LCD_counter[4]_i_2_n_0 ,\delay_LCD_counter[4]_i_3_n_0 ,\delay_LCD_counter[4]_i_4_n_0 ,\delay_LCD_counter[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[4]_i_1_n_6 ),
        .Q(delay_LCD_counter_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[4]_i_1_n_5 ),
        .Q(delay_LCD_counter_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[4]_i_1_n_4 ),
        .Q(delay_LCD_counter_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[8]_i_1_n_7 ),
        .Q(delay_LCD_counter_reg[8]),
        .R(1'b0));
  CARRY4 \delay_LCD_counter_reg[8]_i_1 
       (.CI(\delay_LCD_counter_reg[4]_i_1_n_0 ),
        .CO({\delay_LCD_counter_reg[8]_i_1_n_0 ,\NLW_delay_LCD_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\delay_LCD_counter_reg[8]_i_1_n_4 ,\delay_LCD_counter_reg[8]_i_1_n_5 ,\delay_LCD_counter_reg[8]_i_1_n_6 ,\delay_LCD_counter_reg[8]_i_1_n_7 }),
        .S({\delay_LCD_counter[8]_i_2_n_0 ,\delay_LCD_counter[8]_i_3_n_0 ,\delay_LCD_counter[8]_i_4_n_0 ,\delay_LCD_counter[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \delay_LCD_counter_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(sel),
        .D(\delay_LCD_counter_reg[8]_i_1_n_6 ),
        .Q(delay_LCD_counter_reg[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    is_first_LCD_i_1
       (.I0(sel),
        .I1(is_first_LCD),
        .O(is_first_LCD_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    is_first_LCD_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(is_first_LCD_i_1_n_0),
        .Q(is_first_LCD),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000F0F03C38F0F0)) 
    \key_decode_fsm_sig[0]_i_1 
       (.I0(key_decode_fsm_sig[1]),
        .I1(\key_decode_fsm_sig[1]_i_2_n_0 ),
        .I2(key_decode_fsm_sig[0]),
        .I3(p_0_in),
        .I4(\NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ),
        .I5(RESET_IBUF),
        .O(\key_decode_fsm_sig[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \key_decode_fsm_sig[0]_i_2 
       (.I0(KEY_ROW_IBUF[1]),
        .I1(KEY_ROW_IBUF[0]),
        .I2(KEY_ROW_IBUF[2]),
        .I3(KEY_ROW_IBUF[3]),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'h00AA6AAA)) 
    \key_decode_fsm_sig[1]_i_1 
       (.I0(key_decode_fsm_sig[1]),
        .I1(\key_decode_fsm_sig[1]_i_2_n_0 ),
        .I2(key_decode_fsm_sig[0]),
        .I3(\NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ),
        .I4(RESET_IBUF),
        .O(\key_decode_fsm_sig[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \key_decode_fsm_sig[1]_i_2 
       (.I0(wait_cntr_reg__0[1]),
        .I1(wait_cntr_reg__0[0]),
        .I2(wait_cntr_reg__0[2]),
        .I3(wait_cntr_reg__0[3]),
        .O(\key_decode_fsm_sig[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \key_decode_fsm_sig_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\key_decode_fsm_sig[0]_i_1_n_0 ),
        .Q(key_decode_fsm_sig[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_decode_fsm_sig_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\key_decode_fsm_sig[1]_i_1_n_0 ),
        .Q(key_decode_fsm_sig[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h78778888)) 
    \key_hex[0]_i_1 
       (.I0(KEY_ROW_IBUF[2]),
        .I1(KEY_ROW_IBUF[0]),
        .I2(KEY_COL_OBUF[3]),
        .I3(KEY_COL_OBUF[2]),
        .I4(KEY_COL_OBUF[1]),
        .O(key_hex[0]));
  LUT6 #(
    .INIT(64'h337FC37FF37F037F)) 
    \key_hex[1]_i_1 
       (.I0(KEY_ROW_IBUF[0]),
        .I1(KEY_COL_OBUF[2]),
        .I2(KEY_ROW_IBUF[1]),
        .I3(KEY_COL_OBUF[3]),
        .I4(KEY_ROW_IBUF[2]),
        .I5(KEY_COL_OBUF[1]),
        .O(key_hex[1]));
  LUT6 #(
    .INIT(64'h2A80AAAAAAAA2A80)) 
    \key_hex[2]_i_1 
       (.I0(KEY_ROW_IBUF[0]),
        .I1(KEY_COL_OBUF[2]),
        .I2(KEY_COL_OBUF[1]),
        .I3(KEY_ROW_IBUF[2]),
        .I4(KEY_COL_OBUF[3]),
        .I5(KEY_ROW_IBUF[1]),
        .O(key_hex[2]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \key_hex[3]_i_1 
       (.I0(\NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ),
        .I1(wait_cntr_reg__0[1]),
        .I2(wait_cntr_reg__0[0]),
        .I3(wait_cntr_reg__0[2]),
        .I4(wait_cntr_reg__0[3]),
        .I5(\key_hex[3]_i_3_n_0 ),
        .O(key_hex0));
  LUT4 #(
    .INIT(16'h80AA)) 
    \key_hex[3]_i_2 
       (.I0(KEY_COL_OBUF[0]),
        .I1(KEY_ROW_IBUF[0]),
        .I2(KEY_ROW_IBUF[1]),
        .I3(KEY_COL_OBUF[3]),
        .O(key_hex[3]));
  LUT5 #(
    .INIT(32'h68800000)) 
    \key_hex[3]_i_3 
       (.I0(KEY_ROW_IBUF[3]),
        .I1(KEY_ROW_IBUF[2]),
        .I2(KEY_ROW_IBUF[1]),
        .I3(KEY_ROW_IBUF[0]),
        .I4(\key_hex[3]_i_4_n_0 ),
        .O(\key_hex[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6880)) 
    \key_hex[3]_i_4 
       (.I0(KEY_COL_OBUF[0]),
        .I1(KEY_COL_OBUF[1]),
        .I2(KEY_COL_OBUF[3]),
        .I3(KEY_COL_OBUF[2]),
        .O(\key_hex[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \key_hex_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(key_hex0),
        .D(key_hex[0]),
        .Q(\key_hex_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_hex_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(key_hex0),
        .D(key_hex[1]),
        .Q(\key_hex_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_hex_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(key_hex0),
        .D(key_hex[2]),
        .Q(\key_hex_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_hex_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(key_hex0),
        .D(key_hex[3]),
        .Q(\key_hex_reg_n_0_[3] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \lcd_fsm[1]_i_1 
       (.I0(CURRENT_FSM_KEY_LCD[0]),
        .I1(CURRENT_FSM_KEY_LCD[1]),
        .O(\lcd_fsm[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_fsm_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ),
        .D(CURRENT_FSM_KEY_LCD[0]),
        .Q(lcd_fsm[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_fsm_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ),
        .D(\lcd_fsm[1]_i_1_n_0 ),
        .Q(lcd_fsm[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_fsm_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ),
        .D(CURRENT_FSM_KEY_LCD[1]),
        .Q(lcd_fsm[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_tmp_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ),
        .D(lcd_fsm[0]),
        .Q(lcd_tmp[0]),
        .R(\KEY_COL[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_tmp_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ),
        .D(lcd_fsm[1]),
        .Q(lcd_tmp[1]),
        .R(\KEY_COL[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_tmp_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ),
        .D(lcd_fsm[2]),
        .Q(lcd_tmp[2]),
        .R(\KEY_COL[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_tmp_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ),
        .D(1'b1),
        .Q(lcd_tmp[3]),
        .R(\KEY_COL[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_cntr[0]_i_1 
       (.I0(wait_cntr_reg__0[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wait_cntr[1]_i_1 
       (.I0(wait_cntr_reg__0[0]),
        .I1(wait_cntr_reg__0[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wait_cntr[2]_i_1 
       (.I0(wait_cntr_reg__0[1]),
        .I1(wait_cntr_reg__0[0]),
        .I2(wait_cntr_reg__0[2]),
        .O(\wait_cntr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \wait_cntr[3]_i_1 
       (.I0(wait_cntr_reg__0[0]),
        .I1(wait_cntr_reg__0[1]),
        .I2(wait_cntr_reg__0[2]),
        .I3(wait_cntr_reg__0[3]),
        .O(plusOp[3]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cntr_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ),
        .D(plusOp[0]),
        .Q(wait_cntr_reg__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cntr_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ),
        .D(plusOp[1]),
        .Q(wait_cntr_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cntr_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ),
        .D(\wait_cntr[2]_i_1_n_0 ),
        .Q(wait_cntr_reg__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cntr_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\NEXT_FSM_KEY_LCD_reg[1]_i_1_n_1 ),
        .D(plusOp[3]),
        .Q(wait_cntr_reg__0[3]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
