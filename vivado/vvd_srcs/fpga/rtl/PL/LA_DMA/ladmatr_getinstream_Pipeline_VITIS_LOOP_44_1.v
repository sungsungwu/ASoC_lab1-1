// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ladmatr_getinstream_Pipeline_VITIS_LOOP_44_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        inStreamTop_TVALID,
        buf_r_din,
        buf_r_num_data_valid,
        buf_r_fifo_cap,
        buf_r_full_n,
        buf_r_write,
        count19_din,
        count19_num_data_valid,
        count19_fifo_cap,
        count19_full_n,
        count19_write,
        inStreamTop_TDATA,
        inStreamTop_TREADY,
        inStreamTop_TKEEP,
        inStreamTop_TSTRB,
        inStreamTop_TUSER,
        inStreamTop_TLAST,
        in_s2m_len,
        in_pattern_cast,
        matched_i,
        matched_o,
        matched_o_ap_vld,
        in_len_V_i,
        in_len_V_o,
        in_len_V_o_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   inStreamTop_TVALID;
output  [32:0] buf_r_din;
input  [7:0] buf_r_num_data_valid;
input  [7:0] buf_r_fifo_cap;
input   buf_r_full_n;
output   buf_r_write;
output  [31:0] count19_din;
input  [3:0] count19_num_data_valid;
input  [3:0] count19_fifo_cap;
input   count19_full_n;
output   count19_write;
input  [31:0] inStreamTop_TDATA;
output   inStreamTop_TREADY;
input  [3:0] inStreamTop_TKEEP;
input  [3:0] inStreamTop_TSTRB;
input  [1:0] inStreamTop_TUSER;
input  [0:0] inStreamTop_TLAST;
input  [31:0] in_s2m_len;
input  [23:0] in_pattern_cast;
input  [0:0] matched_i;
output  [0:0] matched_o;
output   matched_o_ap_vld;
input  [31:0] in_len_V_i;
output  [31:0] in_len_V_o;
output   in_len_V_o_ap_vld;

reg ap_idle;
reg buf_r_write;
reg count19_write;
reg inStreamTop_TREADY;
reg[0:0] matched_o;
reg matched_o_ap_vld;
reg[31:0] in_len_V_o;
reg in_len_V_o_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] matched_load_reg_272;
reg   [0:0] and_ln47_1_reg_276;
reg    ap_predicate_op43_write_state2;
reg   [0:0] icmp_ln56_reg_280;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1073_1_fu_237_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    inStreamTop_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    buf_r_blk_n;
reg    count19_blk_n;
reg   [31:0] count_4_reg_110;
reg   [31:0] tmp_data_V_reg_262;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_last_V_reg_267;
wire   [0:0] matched_load_load_fu_154_p1;
wire   [0:0] and_ln47_1_fu_186_p2;
wire   [0:0] icmp_ln56_fu_227_p2;
reg   [0:0] icmp_ln1073_1_reg_284;
reg   [31:0] ap_phi_mux_count_4_phi_fu_114_p4;
wire   [31:0] count_3_fu_198_p2;
wire   [31:0] ap_phi_reg_pp0_iter0_count_4_reg_110;
reg   [31:0] ap_phi_mux_count_2_phi_fu_125_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_count_2_reg_121;
reg   [31:0] ap_phi_reg_pp0_iter1_count_2_reg_121;
wire   [31:0] add_ln886_fu_205_p2;
reg   [31:0] ap_sig_allocacmp_in_len_V_load_1;
reg   [31:0] count_fu_66;
reg   [31:0] ap_sig_allocacmp_count_1;
wire    ap_loop_init;
reg    ap_block_pp0_stage0_01001;
wire   [23:0] trunc_ln293_fu_150_p1;
wire   [0:0] icmp_ln1065_fu_174_p2;
wire   [0:0] xor_ln47_fu_158_p2;
wire   [0:0] and_ln47_fu_180_p2;
wire   [0:0] icmp_ln1073_fu_168_p2;
wire   [27:0] tmp_fu_217_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_124;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

ladmatr_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
            ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_124)) begin
        if ((icmp_ln56_fu_227_p2 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_count_2_reg_121 <= 32'd0;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_count_2_reg_121 <= ap_phi_reg_pp0_iter0_count_2_reg_121;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_124)) begin
        if (((1'd0 == and_ln47_1_fu_186_p2) & (matched_load_load_fu_154_p1 == 1'd0))) begin
            count_4_reg_110 <= ap_sig_allocacmp_count_1;
        end else if (((1'd1 == and_ln47_1_fu_186_p2) | (matched_load_load_fu_154_p1 == 1'd1))) begin
            count_4_reg_110 <= count_3_fu_198_p2;
        end else if (~(icmp_ln1073_1_fu_237_p2 == 1'd0)) begin
            count_4_reg_110 <= ap_phi_reg_pp0_iter0_count_4_reg_110;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            count_fu_66 <= 32'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln1073_1_reg_284 == 1'd1))) begin
            count_fu_66 <= ap_phi_mux_count_2_phi_fu_125_p4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln47_1_reg_276 <= and_ln47_1_fu_186_p2;
        icmp_ln1073_1_reg_284 <= icmp_ln1073_1_fu_237_p2;
        icmp_ln56_reg_280 <= icmp_ln56_fu_227_p2;
        matched_load_reg_272 <= matched_i;
        tmp_data_V_reg_262 <= inStreamTop_TDATA;
        tmp_last_V_reg_267 <= inStreamTop_TLAST;
    end
end

always @ (*) begin
    if (((icmp_ln1073_1_fu_237_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln56_reg_280 == 1'd0)) begin
        ap_phi_mux_count_2_phi_fu_125_p4 = count_4_reg_110;
    end else begin
        ap_phi_mux_count_2_phi_fu_125_p4 = ap_phi_reg_pp0_iter1_count_2_reg_121;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln47_1_fu_186_p2) & (matched_load_load_fu_154_p1 == 1'd0))) begin
        ap_phi_mux_count_4_phi_fu_114_p4 = ap_sig_allocacmp_count_1;
    end else if (((1'd1 == and_ln47_1_fu_186_p2) | (matched_load_load_fu_154_p1 == 1'd1))) begin
        ap_phi_mux_count_4_phi_fu_114_p4 = count_3_fu_198_p2;
    end else begin
        ap_phi_mux_count_4_phi_fu_114_p4 = ap_phi_reg_pp0_iter0_count_4_reg_110;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            ap_sig_allocacmp_count_1 = 32'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln1073_1_reg_284 == 1'd1))) begin
            ap_sig_allocacmp_count_1 = ap_phi_mux_count_2_phi_fu_125_p4;
        end else begin
            ap_sig_allocacmp_count_1 = count_fu_66;
        end
    end else begin
        ap_sig_allocacmp_count_1 = count_fu_66;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((1'd1 == and_ln47_1_fu_186_p2) | (matched_load_load_fu_154_p1 == 1'd1)))) begin
        ap_sig_allocacmp_in_len_V_load_1 = add_ln886_fu_205_p2;
    end else begin
        ap_sig_allocacmp_in_len_V_load_1 = in_len_V_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op43_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_r_blk_n = buf_r_full_n;
    end else begin
        buf_r_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op43_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_r_write = 1'b1;
    end else begin
        buf_r_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln56_reg_280 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        count19_blk_n = count19_full_n;
    end else begin
        count19_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln56_reg_280 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        count19_write = 1'b1;
    end else begin
        count19_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        inStreamTop_TDATA_blk_n = inStreamTop_TVALID;
    end else begin
        inStreamTop_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        inStreamTop_TREADY = 1'b1;
    end else begin
        inStreamTop_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((1'd1 == and_ln47_1_fu_186_p2) | (matched_load_load_fu_154_p1 == 1'd1)))) begin
        in_len_V_o = add_ln886_fu_205_p2;
    end else begin
        in_len_V_o = in_len_V_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((1'd1 == and_ln47_1_fu_186_p2) | (matched_load_load_fu_154_p1 == 1'd1)))) begin
        in_len_V_o_ap_vld = 1'b1;
    end else begin
        in_len_V_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'd1 == and_ln47_1_fu_186_p2) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        matched_o = 1'd1;
    end else begin
        matched_o = matched_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln47_1_fu_186_p2) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        matched_o_ap_vld = 1'b1;
    end else begin
        matched_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln886_fu_205_p2 = (in_len_V_i + 32'd1);

assign and_ln47_1_fu_186_p2 = (icmp_ln1073_fu_168_p2 & and_ln47_fu_180_p2);

assign and_ln47_fu_180_p2 = (xor_ln47_fu_158_p2 & icmp_ln1065_fu_174_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln56_reg_280 == 1'd1) & (count19_full_n == 1'b0)) | ((ap_predicate_op43_write_state2 == 1'b1) & (buf_r_full_n == 1'b0)))) | ((inStreamTop_TVALID == 1'b0) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln56_reg_280 == 1'd1) & (count19_full_n == 1'b0)) | ((ap_predicate_op43_write_state2 == 1'b1) & (buf_r_full_n == 1'b0)))) | ((inStreamTop_TVALID == 1'b0) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln56_reg_280 == 1'd1) & (count19_full_n == 1'b0)) | ((ap_predicate_op43_write_state2 == 1'b1) & (buf_r_full_n == 1'b0)))) | ((inStreamTop_TVALID == 1'b0) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (inStreamTop_TVALID == 1'b0);
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((icmp_ln56_reg_280 == 1'd1) & (count19_full_n == 1'b0)) | ((ap_predicate_op43_write_state2 == 1'b1) & (buf_r_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_124 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_phi_reg_pp0_iter0_count_2_reg_121 = 'bx;

assign ap_phi_reg_pp0_iter0_count_4_reg_110 = 'bx;

always @ (*) begin
    ap_predicate_op43_write_state2 = ((1'd1 == and_ln47_1_reg_276) | (matched_load_reg_272 == 1'd1));
end

assign buf_r_din = {{tmp_last_V_reg_267}, {tmp_data_V_reg_262}};

assign count19_din = count_4_reg_110;

assign count_3_fu_198_p2 = (ap_sig_allocacmp_count_1 + 32'd1);

assign icmp_ln1065_fu_174_p2 = ((trunc_ln293_fu_150_p1 == in_pattern_cast) ? 1'b1 : 1'b0);

assign icmp_ln1073_1_fu_237_p2 = ((ap_sig_allocacmp_in_len_V_load_1 < in_s2m_len) ? 1'b1 : 1'b0);

assign icmp_ln1073_fu_168_p2 = ((in_len_V_i < in_s2m_len) ? 1'b1 : 1'b0);

assign icmp_ln56_fu_227_p2 = (($signed(tmp_fu_217_p4) > $signed(28'd0)) ? 1'b1 : 1'b0);

assign matched_load_load_fu_154_p1 = matched_i;

assign tmp_fu_217_p4 = {{ap_phi_mux_count_4_phi_fu_114_p4[31:4]}};

assign trunc_ln293_fu_150_p1 = inStreamTop_TDATA[23:0];

assign xor_ln47_fu_158_p2 = (matched_i ^ 1'd1);

endmodule //ladmatr_getinstream_Pipeline_VITIS_LOOP_44_1