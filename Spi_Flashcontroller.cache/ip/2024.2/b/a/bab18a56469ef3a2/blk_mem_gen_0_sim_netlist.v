// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Fri Jan 16 18:11:45 2026
// Host        : Dhanush running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19488)
`pragma protect data_block
SqtsAEMGdxsf6y8KIq9XwWf3ksijkoSHjJcQqcPKySNoCigZwDiIU/vNhq6aoMS3WPtJShZbXVap
WDiDAmsLC+gnEF5ug7MvdABJhu1jShSk6Y1cSV2zWGhedm8JJlcmkru/ztGf0/fSjRh1mZtWLSZq
RClsG01GPjbR/YELKfjS9eirv1RQt9Z5fCP5zy6CGy5d0j9rcXUxNG0UNNYmrmOqimEIMH7wj+9d
ru26SwgNJ/Af650oFqAsTqUxvwDcSZHMXpqKZgTiC62CZJ5xMHTsvwbjyGTROfl9dgy8cjQNJqpJ
cZLYpPHWPnkhg/mTPzwLJvvtjk1X4m+MDBa1FvhrGE3x9eTPceanNZctI5WVbCVfCJM/SgPrtP2W
CqgMMv/RYAc5FNPq7EuhBpv2Y2ygsPQLkhQ5MUAHb5OYQEs9ZqAZ0mJQGq/yH4Wz900vnQ6J/F5F
x01nw7Txuogg7ShB9uN0TsvZaevrNavz/kl87vfYPmLK3eywoyfjagi8R5rYi05Y/t5sy8iquPT3
t7ES2yeL2Eb7j8yL4yloj6fS59UHPRdBfkjAtpb4ZmDdFUJnCqcallKo7poLnM2RofwbZZS375n8
I9M0txfV4amCS+aQSWq98sJ2gXziY7zW/B+1kqxTk0I5By/f+C+zmXKvVWubUFiFCCvHiHVd1Hrg
0bi8FLJlLDw6lWgjENS/uTN2Eo6Qxyc8JZBtgM3QYmmVciXG39CxuXBE2cdNQ71hVKPl68iYqGF/
1AuOsagQ+WQ8ZWAxMd3dDKgJ7sN15YOQDuflzrQ56pmtkJO5yVgqXoCJz3gwpKdOSZgHMfN9GNuZ
cKXgiHRshj3thTkvTs7Y9pvqEvVO/j9c0fIxSTacsu43bFHDsmakjEQY5ILcjWp6eZENbZQlYcry
9uu8PojzpkFgw8Vpt1TALILkB0hWqRHOHQio1sXHVJ2vQI+QwgGbV5iVAERXycgjE65Bim0MvKOw
OE0FF0DkPehl+slUMxn6V29pvbL0iY65x00xbaXbEyzZrO51Y4PPHtujau0pR5m72LNFqbFObij7
QyFzbC29JSzYGmMpyhnVP8Cb+KL5fuHpVsTzdJ/1MvCBHg0WyJZN+6L5LumZg+v9U/Ds4CBtSMdC
BuhHxCvUsxne9mjXprxqpRqKXuaH98tcQMHxc6mul4OeTVENfqnLbAhtCfii0mi7kHw69QK3qFyY
6AQjZdKwg7NyB3vB/kLUwbYWpHweJm/7SOzLYmmEU2ZIB9L3wqG6+8o6WZ6FQ4BYRsH6ibWGHNpy
O9vZg3omIfHC9cxaf2JIgxB2bYZ+1UBNmIiT0LmAVg1nTARpBSRPHLlv5Ulx2Lb/6y38ejIciTuN
UKbw/936Gvlg8fiLsj7zBfWwilMyri0mITQGdOVBAA/TAu43iZjIjBUn1+N8ea2cMqvsVtgURR7Q
pL7OlBrfYqJaYhXwsb/XMr0Pm6COqGIM059bAMJqryGkZ6W5AaYMdZaJFFSxTh+JfoNBS/cm0i0r
4J47det5hAxVXBA19dvJuw7iapD+LKKe6npoXARKtFOolMw+WeKxQ3WWyIJ+sFzNgey3erPoGVDf
Gy0F1i7v7npB6oh+dwWDYa7u94XpGA4PmmROgfoOZI92YLFxtvVQE4FcuiyDWXVXLn0YREoStAgO
M++6bljz23MxBKPbJcbpTa3pok8jAWqXWko7TcGUYjGMYo9ALWBTrdPTBTlOXvUy/S5uqESHJOMT
0aJDu8f08nTa8Vozpf/WDnvmbVfgumdnNGxjH3p42dUO/8/QIAz1Gt8lIMbTydsjn1+fnICDYXuu
sJc33vRncFRauGXNGbpCzS6wkMazgg4Axj1DS86lpqz9gPoFPmwKAkehZQLqVbh6pxZr+A7AhqPx
fxRvBTHG2qWbLeWo02EUKA/Nz7wUAkEVAEaEkoVr/wU0nSqv7HI6zjSSEG+0aaP0RSft/ekrHYJ/
LylfvWL3vpd3xfKS829sDnu/dg8ef1tCNZLiy1P3otL7+SKWOHF99Sld6p6iSq1AY5lCJzXf54lo
rPfeI/F2MXgdZk6PTG0V0MYLaOHEBkccCexmdCGv2XqFZf9Uar2LG8XwsmW7JZTYUHjsB7U1cgpv
WLvdk5i6VqroQrsZiSxEpst9X3Dq2QXri7NSSIqBVGYAS3ubB3M74qnd/jGhiXTzLFBkcIaMBqaj
28/H9d6kmQsDL97blR8r/v90OrzXAwuI99/yoTpRakhwntgucmUaYqiMp2E3bm6yXftEZ9YDfR92
uYkCf/uzfAbr+pR+YtGBo70V1kDYZQmPWXI3bVjpO0Lx2Msf21AJqIOQqRt1TyMHVeTEUBuBybXi
9dFEmatCba/HJCOlEg6BRE7lIddT6Du/ZOZJHQiyIe+vypneluEpfuwfDSy8CeiqvbVZ9meW+YpB
CiHG41yEWcoQciQIXrJAr2fisk1iWPhJH5IjMAbp4cMu3YFzerp/NANlxt3dgVqH59iieG20ZTMs
++JPWLXlt+JVBzaRzrxQRwobYtPssYcML4U6PTmDX+MbzAHTWuAb0jCaFqgB36mW3sLZ4wK/rxsr
UjGtwvtszvtXF6Som25nV+xslI8MTwq8b1rAy5C2LvZ5o6LdT17k+yQoAiqPQIQltPPmH96hq0xa
SYq7JrE8RFkI0JGIM3Ws2Ag+tunCYVZBK8FGMSSuYvh9EMTRb3vYGvHEYHnV7qBCjVQZQn/DXu00
xiPDOCExNE04Gkz5qV6r5PIO02hfVPWry1aS++V4F7PGsccF4u+6k/tsYNgF9I4W86w9IL3imvV/
gTxZ/79iSU8Ec9PEpuKMuRYl+UEtSZxNjo4DCsDo/VA6IKewpwG/cvbiqFbhu0kJ1gn5xxkKnR/Z
k4tiOB6JDlLE6N6jMl2QHfLTjglgNGrokuSllhSV3j0BWh1bepFYsOd5PEChOmYM18FhUsl4ZNix
yRt90Dqb5ffZJMJGQD5eGd2K8pY6LubqzySnydQJv8rKzxMN5jUbQ6+gp9/QKl+v6Tc3TXyrdCRZ
orDdS4dZgJqmwdSzAQDDWr6+hpqwR/OGkQbJsXYX2sVBa3ZzalxnYIFYaNcanpi/tkWAA5OTIYxW
GA8DcPLgDAYlum0tInpBqiK4zcVZRC24suoZTrMwh8+UB+goBKqnsacTtFmJSBCrLW8FMAsM4u0A
jb31bi17udnFXAyUOpZrZH17ODmOyQfs1PCzQXhfSbHekxkVRNBGYmFkIHftagroSh5PEwjoW9sg
PppsWF57q5STR7w1eGpEb3cLHdJGCstNgm2crHFl2B+Tne+9boErqpCoOFvjTKEVkM9zu/7YaxNf
KM1rG+LGIUMd2Gmq0Itdqa8lKWOg/ZroOrD64VMREesZa2zSobUEf72+otYpX/dMnu1U9QGzpE3Y
K2maIJ8wMkEozS4N7dyI4ZuqV0fgvoRqyUE698TXWUlCeFLvWxDJGDcwrJthJOvPtXcu1WvgtKZh
uablFO2qKFQGv0+VRWqMhb9HEUUA4kkz7U7H7qHZcm/gAk9kPCtjmeDqGiMhrCHchHTcDt+Fh8jo
CKLG2zH9y63UiUBiV9+2b7doszftlPo7l39IWk6tbIRYekeLfLzTUGoECnIb4rfOpVbQ/8vL3dcl
22ynnVgepbn5KbcfDORgunx9RFoHSjM1PaBZciFuX9KY2Rbyg3lkuufQc363e1VFj3Uid9UmH0kU
0etP7ajmvwIVCnNA5MNwlvWLK0gJw44q+Ox4H3Oip1uxpft7cUPxF+XxkzQsevd2mG9gbkW4eqbU
IubLCLQbdjz63ed6juiYwFtTmKRQ256/30kuGNCFAfBjcQVLOsVAzJ3CsCNuYPfsQ/2wLVTZwzl9
kzanTQ2sa60bEdm99Rl1XouQsuZlPX3vEJahJq7PYrHcgEqecpRJNqCce6OnD9XUgg9TJBZzICNI
tmMtPYrxdFf6fIdWg9AY4qAtDdFaDgQHmmRVBoVR5oZGCoS7OreBbqxPd2QyLaMLsU9w680TymTI
hmDFAqgzuDF+OFbw/rcW25p1aVsU9ouv+jlWO0Kl7SCuytI3YR34uTEUcgHvQZrc5vb2ns1NKunp
Er41r9hcgzQpN+9tY07e4XLzsxBXFtpvrF6SB6mkIBPKA/ulwBzcXfkKu1TrfapKSJX6Lp1egVyF
zN15uG87Q7AzFJU+mvU//b8s26zOArMcUoCbb+V8Ve0X7iA2qERAbisrBfcOuZdkmRlbbG0XTC4e
WOcflxbiOxLExsWQ0Q/TPse5yJb3rMhfIaiOUllbe4eaa7yRj52vymDEM+AWnG0YsgjQjRPQQ+vL
tP4XwvvfKp2IYEJC45DDUlf7HZVn74K/eiyaNbE2sTI6EvpHfdYYYLi26qxp1I5hX+d4mbWBIZOU
8DHyV62tl8rSe9vXUFcppJSEMVf/tSYlHZohAPIgIqiOE1cDVY0FNNqLH62UJldOODj73Qoq5xk9
E/xcv8cLO3zU1Ljvhq5Cn37gP/462zZnWZrrrVlo1IKOh/bA/70xe1gnxdis9vhLz/UdzR7TDpGd
oRvaxLqyDLIGPjV8KrFeTwXt/ZGM+N2ICL4Cfsu303FA+fNi+XKEV11gz+4urATPnEz1s6nsfZ9L
Q7/ia0CfD3Gl1PvuVxtPnn9tDhQk3LkB5CAuvr3rkTYZgTcg+WMpNY57jbQnvkODGYEYEQoICVyI
vCf+15UNkCSlo8fAJOl6DQAkWapsoTGf3o7bPwCnu125+EDpA91JcxtsjoL8MD8j+JKXj1RSE2Y5
pC+Q5cnIuzGeDboX2Hrs6S4oGvqhtc7khcKObzUVaIVsrJzTxSlyh26v2HX+qlJ4TnufmRddP7EF
hPYvtwEOpOOC8mNwDSP5g+L5rJ2d2xb1Ana+Eg9OuNfGyshB+OXlmh8valECAHNYKls56i/plKZc
R0bkiBan1sL/KPr1fZb67qNOKVRJrsTaEeWU8pK/lgXvBlXBlzGkt8ws5GPHysQGmZuijD40RVdJ
camLkxbmNEbiNp+qg1V/goXIZtBD31Mj0EiBkEghpEFaI/Thu6Rg2RMKa/xZb52/O9c35PDr5vdX
hVxu1OsIxEoLuwpzNUA9b59Vgc5FiQRNe3Ir8ytfCFVv5xxURj+q+1rAbbUJaxh4qPbWyIQYkwfY
bIyJuYR9TI9wxaPIvQ+RlKluIWvo0iUwdXEWBKOLrbsCmhXUYizKnM25wm+EFn1mHX7QEmBCFmjs
q2f8XSa7g4O0KjbxQVDYMjIe6tqcSTdUdov4V9ByuOtBvBrrU+6m4RTIUc3BxxRoxSDcdzzF4oMa
auAIXaKF3ZOO+u4AAOPnnt7HCS4iuoJy/H576ZclDSloKfXAEJ/YQvjNS29GPtSSGHNRJ8pbFNwz
YjU9aqEomnunkS4+ePxkdDJRDdSXVlQCIGN8/eNRDsWa0de1nELFyrPomggt7DLbaCg+vDEGhWVd
t+MHyrfVKdVINI+fsmsn1u5wrqvkHZyqrpopp9nbTaxl0oltJ1M+S5qBMNtWOBNF1Ve3t3lDwJHA
8zULPOOM9Alz1ga2Asb4D6EBsYU3ukvFm4Xoi2PONzPdqJomRVWTKEiWwk4yFSnVFtKaW/8RB3Cn
bX6cQh5bWWiHF3bpU9iawtvelEi2vfsP+UXmJpyZkKrFR2Wg6779qaOfPevIi2aP2kffbw3SIigF
U65KCnpfHO/+aIYNe/ZmtQeW2XvcqKNYLC5vj/DNpE8riql358UCn3daZp6LWzIo5C43eDVMr0HL
FIBSbOppDNX21ofg6Qyj/XkpszHWEtsgdM0A9oysa+cY0Qq6N9/pt5nn8n8c7ug5Q5SB2XKq28Gh
HHgNFb9/L/pPkvdousGf/gPZ2VuK8RSAEW8GZkQQ9VODacRSIAxyuGUecRrZjENbdKUfJ2RaN3hw
z/OQiaIDyo0Zj0JAQy3sbt4OPFt/lAMHG9s/BVyeKo3gixod1xknc2LhqR6w0e5+j3tBul/SovbD
9WW5u8XD7rtdTi6kJhIc6f8nwwtbJ/VqtjXi3YaWviAAwOSdBqVyBQrjZ6Nu85AEp+wtcTF8pLmk
z39ZLl8x6cbNzIlgjqocPrbwvVAV0qMifSGbs4Zx+f+zizpoKZKt3LISafMcbaLH6sr/s2pUmoq0
4AqmNdKeeeNbs/ODP/B2mFmx659po3AJzosfH1s4Zrxqi5KyIylkNFSdqTCwAwX8wzH75rWeJAhk
SiKl3/dOQ5cCVSAbmJQlNjyzc6oOS+2/atHos4TIalQRciXpXMtx6S7vfd2kn1ur99mzZXH3YkiJ
PDagW5tUUqtAjXE/N7NIAjXqD0ntSAwmVueQ36XsAUI4wnVDW+XiXUGhq935+NqcX2mUIC49HRJ5
Pf9yUrYoV8RhWWwZYjLHIaoN+Uq/YgSOzUkYIk2vfRY15h8Qyk+6ooXQWhBtKfo1KdtgT4qpt/NN
OzA47xR7GSQYiI8BZ/JUwXelxI8nr1KSh9+tYBL8/yuNIw6D/FhLxNBiux6QhqyAkWKaycQDw1jN
+UWJ5k2R3KTjXeqisnmazO+0J+k+AxaAXw6L1ZkMjdUhNALRF5DSGWaTZv3+YYaNNwZXnL2TXb1/
mXqdpwMEeyASvRFedhaP484kYmxg4rDc6ZDKaj1bLwej6PZLqqjtTYMsjwu0fFhS8PqkaO6bUvLF
tfC9Q7+BdFEpN03Wz0l9L+2uFbqyVQ0bdFJ1lroYwyjRGZH3L7+XQC7lcRomsHUXeAjXNTdi3KuX
l85UvZd9SA1Pw8MTGA6lZX+xq+jfdWS3TJzlfAuAv+Ll4YeQI0Bd5wXclKd/9VCX4sU1EQioLkWc
mWRrU4o7mEkXYbyFJQX+N0MuHDYfiJJG9cEDDyjzgpWnnw9yMWwe2JH56ZgituJvkxTFopRIIbai
Fd7KeSLmK1vxW6I4kdE5bKKeCc+oRS/gC5ULEerQpOYHbQ8vnAiNj8DzGT9ENbM9yWRpDOP7SqL2
zxM5hdhARXMb2jiYoasNf+EFBtjVv+J9fsjU1AHdaU1HXCYrRvwMr+2AnsE6dKmTxZROUZfI/3mj
bNpY2DTUDYHJyyziGIwmGMuaQM+uMSZNlGfgjdAYu5BkJqQGIQneM+02zTXBsIJQSLM588P6EJN4
WEGlkl/JxmNnGkF0TiFTL5txjqbTlSBkYytr5B+rzONdGRRYMFsQE8RoEStrHE8LZn9p2iRo+oAg
T3PzQk4czR4VOvQEUQlewy8ndmk9casG4FtvEfoeYaLRNZQY9e9QE2gBJgaHdeZ13ZqvKO8a53JH
lJY+eUu6o1PiuXetd3KfRxpVo3HrZ65vdBh0eM+wUsqb15T10eN12DNoDO7I4J565uIl00BM6T3h
L9ncE44yCA/ftquMk2GjKQ9LxNVcg+sO+u3fEbxoCd6dO9Zx8t0GXE30D53TkT2ND1XV1uZLavuU
ebWzYEovW+8cY9VGYgOPRiGxw3EJMcNb+G1nA98tAJYbIhg/Wgb/ibeDAXBE0FiDFPVcl6unk1R4
bZyFwv3AO9LYFST+ZoX2G1FCoHnVGRPbtNL6px8RZN+nZvIUNfRARNEQxkLAtGJKlvvbLfb6hRM/
LhGBGw9/hq25piBxPbd6a3pvO1EzEeyu7dRy8/ILJhfu85YaMKeiI/Fmva4s89wrXd0siVVIjuKn
Gtvq8KaDqGZ/kTWxLF7M2wCLDc6lCokEXn81ObtJ9fznSx/KZBJNPKJ8Gu8j4sGU7DGCgkQu4tyy
K2I5ZNJ/Kn8NnifGgwyHZ9bax0PZ8sfq6TpdFtn4Tn0/X0SUUaZQzE12yPchxOuuZjHvSqx0mwUG
4sVdr9qBm0eNkiEbC3oGw4PIDs2MjUCPA1ETQx3GJaOzRhJc2jE/O7yXOLrAsZj8pxyODSOzLp2x
MKrMsHzwBcqXZ0ej5lYjOPjVgILXvdAmLF0ulVO8E1y81qD1NARuAiMmZEKaXsqbYP19myPrnbyb
pq63BzqZCX4bbJWR4OSt4Ap4/DRCaa+V7SwF8/U6Dkyf9/JPKXVgK4zR792652Sn0QuqzGvWfznH
FR5JiERLIyeRz0HfXii2mnXVDWpWAPerhj9D2XuCe2YLy8hDomJflXULAdqslM1KvfxUBikaCkOw
s6Mo3LT/Dn2OhmBkIEH6skB+5c4kw8NjE6MHAxwgZyz0E9fC74seiSL3Di/woaf667sn353PNyDD
LHI0OO2qy3+9qsr+NllIjslFX7n+EvpzSlPl2Adfrhd83xaft/K0avErnEZO0B7iZ3bRnOpVmPSc
oqFAccWwMFElCqzKQLgqei+9WheHkcUahLu5rwHTZyd4F5UhUY1kTCR7bsm6sWdqzhuVngYesYJW
4lvr17zDvydjX5r0kgKm/aT0WE7b+DNnMLNtrghdhr3grPchY42iUYuD9Fl5RydQ4ebeobM53+Gs
cN6xM8yiNSjEtlcuQnoxMguimwv97Y+25l6KXMVS8cA2SgAak0GzFaE66A9BBeRc2BrY9ejfIyE7
1Mo4U6S4NhFA1O+iUv+r/u3ux5n5/ZVNyERpbWgzfiWunSJiHi+6Ts8/MARfH/mOWr9TWmpJ1s4R
SJyURiPa8Z3toa56JNi9DNBT+Djv9AOX4xKl4+aNIpuPkbfUqAzldJQ3/3VBcDyxY7brzkflg4vr
gyiZFalI/RjA1/FsI+INRAbI/e/xF/l5DZuA85F9rVQm/Qcp6i22ghdHgKQpKHD8necovgiY3OPb
yVGsen1wX9/v3LsHYsI5cswykGJRi0vpYRHMlrA6tGmj4NN2594K6McQnXQukG3TCV2Rg5DANVEx
Xh8AqRpgChn+ytCwS8i10cJbDxBRdx49ZZooGQQMP7konWZBpH2+8FX0+XLnbg8X4jc1/zwWCMHW
ly4gHBl4sBnA+qWjLna06RrgC9EMuXtFY/FcGtlsNvGhj/VpC6+rVtubBSaQYZ5Y2BUg+i9fUAeB
4uWUnTDgjBQzI8MmapGxghy9wcor3+EbCx0ZhMUA5NDLgfSj859GEOMk5nnp5CSXqP4crQPsAAAQ
w72GpwsuU/UgI9QiAXxFfYnXPb3fNJEXF/vL4VBXP22518l/JwqCpi63G6/bzZ+zWOKXh/EqZuXP
ADciXn3Craw382sdWtc+Aosm235Df6FFxpI4hgvkIT0dOU3ax2Sj9FbH/eQsxujpe7h636K7s369
UOM6RV9dyNd6YXnFAcJUMOUFFfB26VRDCs89zGIZPJIPSGbEgy/uZ7wniheO8jWjy/ky5MFs4F4t
2AVQJB8LoCJFrvJtrms5seML2e5tq50IvKnLrmt6iiYZQa++dmKPPwMEBmckryo9jxu0FScomDAe
aEIph4OLNK2/7xbk2O8AXR9GCQc6B9X9r6BCl76JFQbpyApfWLP0+xF5XSVXQ+IIwt4SKuBvJspt
+XUimasuMGG6d3PZb5jodFpeVdugYsfW7tS492EfECrlF/4zaV7kqKJqXBx6uld75t4gq/qPbO2M
Bq+2eIvf0Ra9w2ZQ11H9dDW34inGvl7WVF3f23VXb0W7VXVwkO/nMQkhGCutugBGI8hHtl9zJd6N
qjt+d7p1zKfy0uuS5k0PZYqRCXnpuY56sSFbvXxFm+oeqzImngoNbdTUC+nlMt2DFI99MV/GK7Ue
hpeP0iNK9WaH8pq0lcVNqZaV1NKEYGyu8LzECqltGD2LkVjlDuK//nnVoHxU0L9ziEQouJr5MgFl
Ax/NYJG9/X3GJMHzBuFXtW9iuRh/Y1OtNeTMPFGQncuoFiNATvE9O0drIwyi3zpTNOX8Z24JvcDp
VYIdUaSlW7OPfVKKouqsVdRcls44jdz39E3n8uFoHQ3L+GEF4Y4848GqNrSQDyws2rcVpmpV+KFd
cKL3eHeDwrb2oyb9/gGU04hOgHHNA/O8O50nuUNyXABUSZ6mSVbspaGcvY7AONrQfZnf02HMMtXt
CgZxXb8ksVNIabxn67MJ4RqgWkxXT4BW5cwpT8pANhAWI+G9+tsPKTfSY0y9Vi+GskUEfrJipSOz
RQvCHOVJ/S1vrMwq1Dcqc4HD+t72HXOAy7L+8oJcrHmqkOm6LQLfrEs+zxI2HNAVS8BOv/4XzOeU
BOM075wDOqB/46CoyVRiqITnrgVDP5ZpaAkH41FGenshzT2bQ7J/Zew+39ko6UnMI8+BiSJWXZ5w
NqKDiFlKUYq4FLyU4hKjmxO/WWzyllRqAooWpmNh0Xozx7cykFQASSYxhcpgRI6sBsN9V097PT/P
XicabRTWTCEZO2hqcDqzlXH0sE88B8l8AU7CxHbpm3uGORqv2z4EHod3qnpY1TwK3bBmeuhJizRy
4y+eyVc8yS7HbxiZJFOJiRk/92rpdJjFA0Y/JPfgtnC4QRsbv1vQcirNXdDJxYQBzgIZqxE7RIU6
+btFCY07eiwk3uSERZLT9mzN2kVRABO/NZZfTWr671LuDtcxbCy12q9QsUSzSn7Ocy/0GA9iDruP
JosNkOqLj1GTh2nXNxFfH2IF6hgzS9IaDp6stfVMv9LZRm6Z9LA/GbVdia0rpYsgyNZDzv0AAHlA
p/oKHrIzbvCK6eAXUZFpE3XvQJlxyCT9dgALbytMp7wiTbO9cxUh7l8UeZWoPdVwoOHepl/EemDP
V3l7PWConn3M8pjm1Qo/JUO9vgEinru9GZe5sR9qR4nFTvqUNzR3uO69Em9RePC8/tHtc7vd8G4g
XGhl2rGph+VexNTS+KTOk5eUVCjgdSOvGSUcIPtsvsHtodErSl7g26r2eMvp7LNpNpitK6FF/55b
xHcwwUt2qcRDWi8gSBIR/XHyEl0aGFIlVTLPODTotYP4w2zw+WtqyOnu5HG01/E2AGkEIBqE+QE5
6G7cBeMTVJBmkMxVEYo0eT9O9vkSgjqmfcNpMEgG+wQclhuzWJ7B3PZ4/qaw5T8thSxbb46ll0oJ
ERfO+J0NLiJcyASSWExEJFJUwGkiZmDW5LcmVfBTfjnCjpSDwsz0y44R62K55cxfgLEMs4grF4fT
g0joC/WDmOeXQjuCMyx2IzpVKscAvUxZY19ZE7UlTSjgCaMHrvUQKmxoloV4vELWG5qAvbzYKbnd
LGBFebE5pfPE3kVmLQjhgjQrn7Saf2Zs4MvyVf3qNj7Dax5zgyOHYEo38qRfJr3H0QrTCzUTQvMF
jFCCk6ovvAH4s83hKhtWWLinFgLU4bozf9Lraa84TtagMih/ajgPH4LubQRXCJdOnwx9F7/u5qkK
HZCkIomfnHz/6/C5C9/u/AixkPmWYOF6tsnLVnj4eneVtb3nsh0Q5P82ZYskYK9CnCOKRGe7p50q
6S++d+3iC3MFf2bcmgEJxhiPN838YKFTDpVPxyfVucflpX2hGe5z8mlAiVJEsXprXBUlZRtqPPAK
GwY5YG1jy16x+T+QjNl7J/to21WjAt4WEWZUKpextVqKS6iVvfB3xqxVgX0D9xjDFQGh5IE8hwwS
EU0Ef34Jz1buxWSezsXSt3W33l+s8mg4CAdZUga0PxSfab0eYqc1GZN3kxxD/n0VYFs4lkagcS3V
mBzS/qnB6ykLXTh7dxudRrv3UlrtL3eCvIYoK4/efWByplqrVE2rpiD1IztyBsUmyN+lPXpRD6KT
rpY7koz4f/cQTtA0ORfytF9TPqME5/O2JPGxYoTlaaDOP1X6xBNEuGfa0Ok5hcZ6DOuOBmVB8L7z
uCKhLlDIrXRtESHXsjwGySxd60uvz587CTLTgjxb6Zh8ABwRiS1++z4+25sGcw8iEtGmAsRE7aSs
X5uAsGma6lApZQpfrmnDXxoR7Q8XN/iDuYY24cBwSCgg25R3bC5om36ruZOcd9XIdtlxXRKit/9n
+5ufN8WFCC2WjPCdvr6x4bV2y2i+cjfzwoXEGprOtmQePyoOiRC3t5SwIhdXDz/h9ajEVpFUCIUr
3JvhN8SzlDU+kYli76jmSkADrXvoA/Kkwbiqq29ohwn/JUghwrYGPFLhDFemiErJDaBTSqwR+H7D
AxewGT93OM9FoFvN4p0MKf9ly4WB02NZNgATad6HruG91CYGqblFM36h3BX/vm4gW70xBPQeupCE
PgjeQDYa5F2tqFE1UwWrXmYZjC6CQi9eux/VYkR+Jd1Wa7VPTMFEFprRyUIokfkTinm7gBTQAtoU
4Xs/umxRbae9FAZ4HGvk2QAclZI7D4EAIEtbqozr8WB+4/1aPDFAnqY+a5oXrn01dz2EDaTJOkbb
xENt8HqXvjLtbxnjKPTl9zK0xqBd028xBNIfcJtG1ibAJgAMi5QQMDSndxPQc3pGiErUPrEJXPyN
YErUqUjxaZaJ4r18AijtsCAr4kEU9EqMRYv0zDXzgxEB4h+py9Ah4dOIbiGchhUkrahqVySW0Z/I
/5Y8B6xym8KXKrzhiKnHAEA5kdWCyAJmgLHgWldW4lns2H8cz9M0fUeDK9v821DmFKnoOZMeS4z2
IMdo4ssfE6tkDkjQteU9AhaNBfrpg7DgovJtn7V3oYTyjxBzQK/wBiceeMy3nxkZnUVo+LNVE9mw
5y1PZYfkldtJVqbhi0EFsZh7wZQAYu8jvNwLleyF9r8tyQAhrayNYN6aUHJ2iovfkVND9K7l2ogV
NgSWLCMr75u36Ff1FO8u3s0YvmRwvV2Cbb8iIis8uW8+1csg36fyl8WyMZ3t6hNQGJWNOBU+dbld
LFev/wc62TE3cCJTsuO2GZ0Mz8yUvuHfEZ79+OZ8uej6FQdyd2YRpFy2D6SROBDdZEhHHwoaET8n
rHjSLYjmveCnNCRgq16VbptwgJ7xOetXK7riV/OuhH68PO4AqLRQhdtaGBgkX86rIc1xtJq6NXxN
RlDD1IJWA2guHw7ywWKYZI9uR47ShOHF4gwrlrRihPm3yhpYOehcoQqOGUQ87D5mMHekKfrUJjYL
EITxHt4wXFxWXXJMpMkQJLHP0EaoeQnw2k+sl7iaUpXWZFRSd6CX0STgxub3lto2K7Ij4Fcq3wwL
qr7hpngQ1e9BsEWkGNU2GfAKDU3tfbczqR4nAPyuiQ9Y5QMEXyjg76ErEkZYYnMAEsUbczXtQhZN
4A82BTshhh+DwBJUBK2kw/RkS8lqy+W6eA3POP+EQwVb8xGIGaQlNYkEyxFBtK8KgUVigafJApAQ
fkViaUz3pp4sfboaChFGQhHuE+RIa4zk2AJ+pjLCVgaPz6AS3H+vJBivBPh1o1d26FDS9cLcHjNg
Mo+TLq9uepCs0RP9Cj57MSiZ3HW61+6rZbrc5nCv8mtdV6kJpSdt2XafdDl4Nmy4jrmH96LPjiec
JsGbI+etddFBe+SO+GsQoMDCoNHG3xL1JdO9iqsQFwtGtFzp7ms9giTqEZV0mmzMWnxO/UrJLiUV
6PgIC55ZpmuPouU6OvarJPeXMrWFEXAb+j85uWreZx2JnY501Z2wXByLb4jOF/MIXYMyULHdXH90
URbSYLrpz9WTw8Ix0aF/rMo1VTbF1QJEfGds9OjgU9srEpwIEYzMARcTpN/rymeC/7xebYLHjSVw
noUTDU98JbsXsoOyIdqRX26kIOxLxK1CqGTWMmANmEk4cu7kOQaE5aMtlhWRIhjsqMWoX+sPd7YH
erq4c86Q1qZdxUWskeydjMJpC1SD/1UR0uEjoyTqspXjTuSs6vMZi6DTFVhXrnFEbTMCAe3ynwLk
1pjSNt9u7gW9QewfnEbJGwrlLO36TU/5VkRUdZ0hQ3ChjkuJAum4aQuUmpHFRBiLn0YOLoOY5YZa
gfPVEh0rRQN6d3T9fPhe/v3N9Fm4XEvUwtpfajIN8IzQXKdKZwaX4aCSWqHlBM2X07PEXX7fwKWY
2H3La4mXBc+wxMcGPwkCJqA/kEqnlVqYytOVvGp3vV9YNylnqu9JrUC/v8gw8R6I2o6ih/aUjmy8
0Hru57rhSn3zb4yFgnzTXRtdB62AIa5vb6gx5DKSQp8uK2F77VwrYTMzVhunIY/I6istH7auDYue
jiieeX9xNB2tMkVhHqylfYtR/a/8Q9PuT8S4zeSzgGBcsQvA92ykXdnE/4AQJwHpqXN71NDKGzSj
dIZ+dlH/pB+75bU/R8JybMByoU/fqwtt/tDBy7silqd1GZzk6iJNDk9Yv1+FGcgxSzuhYlkHDn9n
i7WMZNQlv8X+eZly67c3eTjEBd6trZywWMLjaH2mZGyGAoBcJFoEh8GMv/w1C8P3HbRKBRi6oaj4
chG1q+mGDBFIMu9ZpJAKnJneICkB3rncB5pnijF0QSn6PaImqIciU+xBQGxLUe6AKNf8nE155rmI
WIhVT6ls2U7rvBY72ZFKMbucYfSBCO7IVVvk5NCBnV29u/5wZNDeLinakUdcPyDDheSzJn3GRIwl
6Do/Op9Ldmbto8B8J7Au/wnWF3Dt5lMQsjnFR1egpXHw8c/OlTLdbnFJEyO6lCSeMnTcb4zTXAnX
5t3BQbCVEnf5sQ/gHf0E4pW+Z2G385l6BPgjsrueIU4nKPub8UqtprsJ4UMlhoBGoycbSqV1Ge7j
QuAbHubr9jf4SXBxZQqYSGkJsbZejmhbajX8/5IfD8tpR+DqzaIUcOqI7vXTeEB/OOwiFMSjcnK4
+HzHgQaZIMTk5giZuI9frCk1cw1uNK/lAbR8+7tP6HgyfJJgqLeGyklxIPVG0bATCqstkTzojn2y
nDLR4viWZk/4wUnorwmS7UIMvBE6WKTlOhcx92a13hu9AX/hlVvTGsBmskZ+ykYMR1BBAJ7JmaPD
+DoeN7L7WgHKyMTafGeXOaKsuDKoP9SSj47RbgnWdZw4FD2fdYq2kvymPzRdKhLxF+mGq4vLEI10
lEhxw7VlmIBxkZrWsYd15i2Atir0UENWsmk+5weGRWhVhZ6byTYWljBTfZ7jumMhT2k4oU/e/+kL
6O6yhx6CtDzwp3sRi8m9zrL+c0pAjbo36cfE69nDTo2/hUu4Sj+xuZ5SUXYNhmbfpHL0VLZeykVn
SoQOYx6by0R7rdqczRr0rhikqaE18XujmAvSPOA3S/2y7IVPx5T8oj7gvOJvmiEuEBL12l0oKxcA
ZCe0QxCMF2Oil1DGmfEpUcQ0xmqVVK+zXVhECudkcH6WsJmo1F1K/8LZa++MJPCcM7bHlLW1EAM9
tPK6cIa6OhpNTmnZxF+JgyyD/fcn74V8ZgDuGQr0qa51b7CO3gkQ+nQ1iB3P4nRVU8/fVvCN7xBf
u2PHXr/00D25+Dw1JaFJHIOSolBVSYBgxo+3NSaiaou3jZKT/xMwPfp1vdA5sAeNDRvN3xz8kqyd
I5A6Jy+lDzo8G5xcLnQy9sJKFyGvzpy7bA/T/JHCB8tvAdIZqolEDFRzGceWpycRN4o8WI2aRJgL
xsDFJaMVSzuYbMqw07BrBQNZpdLxGltuDsd5XJaemfjUlJWbxkkc6zw0uKQVaikqMdP+lSJWydKo
79Z2eZ7J5dLnWWR0d0+llg3gfz4Sw8PDy2wWsTcV93Pp8UDLmtgQn/aN6lXUI84pjYrdSZfJOPkK
6A1QZWoNaH/gZhxCugzxj0xub2WBX1PteyoBKaIKOwrOHhWibMDEY6c1OcDpxgmH4/mA/q3s821O
7Dd0WhfjQBet3AvVoShO6Ww5MFB5uQSD3Cl6jzraIl0LlmB1zdYvHB/FV2io6qHBoRNUabDWFeA8
ZKalaGq63QpHaCZaoc+nDeUw/VtJ3TExsbvsYuQcacufs3XJ5U7H7ztn16fndwPE1UthrbKzASPg
XXCbMyzxbsrNOVACwA9SgWtx61dUX9EjI2YgNHe7qGcGqBE03W4jOpNzDh/uD/ySS9dA3mFhrtwA
DclgvZRENl5t7RyCzpVgM2JEa/YxoiLPmONErYPnRUxOPrqhh0nSZl086XyRoutQtWn5obj6pQvc
RBEJ65f8hyQFz4PHj767uMLape72nkmrlZ4fg55D4MHWlNiVLfd20Hh3qxrJ7JD6pCfCexhRiRoR
TSRlvnDw757z/DPhfdPGva+nIIimJ6YPEzDx2+EF9R3azEK0ua66BwDCjNTx3mJCNMIDd/AX4vED
rzwRug+NRIslKcS5NvXI5X51HlEnGvuRo9oUUBrXV1amKHd9JkE/IMo0IgpnL1GHGNMBIEAA6xE4
6Hq2wlu9CK9qvACnJFShZcQ0DG+aabjCg0ircupU+oDkO8Qt2LdwT9rrgJDDGOetmdx8njdwOpfB
cXryEWJReyu/niLkkfOzrRJ7RbYtMemzHU1F9OUAFFeZxRL3yXHq1YOdARUtJbziK2AYo371NWmH
rWrhKfvtkMHUgkAsAJYr2ojDQNcv2wXjMEyQIRF5EM6hBvbfxyws/EDptnILNAEFT/9TZXbj6GbP
WyLMV9lbgiHGeGjHlpcEuAga64hTf7W2kdeNXEjvmAYmVNPCYJdu0mvlTXhAWk6A3qNPGrTDfZjU
CrQaEnNyjgbjrbHGepMXOSou2hfVTi/xyhfdfjaM9xCbflVQF7KYTGR5M5a0TEbEyX/ERUn8SpIg
Ka8sxdfMm0UufjqEwFvR85rM46m0bVuLdchyWjOS3EP6yAZPfy/1wfHp0AflS6yKqemB17cwYIn0
QME8cKHNZyaL8QrQJZTl4TeoS6xlvpz3FS+rkivR8Mv3Ag4xWHKUWEL3bkvZxYwLA4FG5TYiUnDV
KLLZsuH5geAmMXr11BIT0+0SwXlyaoQw5OeezKb+ShZNPLdh34GIz5j2EuD3hH21LHH4UZqdEML+
cS9ArOa48uIrHDZWQ9ShM8KG18e689Ld9/1SHuJHGsGYOkAw51hgQDLPtVW9fiYI5Q9nMZD90t7e
DrZIPHX873QUvjZZpFmq15KaxJVZlrcNmfIPg9dSLq4z9hOLxC+uwoosuHt6vB5Fvi3dzZEx/79o
bF5howK4I0y58Z+jYTTY22WhBHO96zXczZoGO3MvAtrLUwm94Pm9i1mjbN9RIj270vHfo7eC9BNs
YN3C7fPEeyxbOJHRq5KF0ebnj6Isto4qETlvsrupgeQ26TXpEOevLub2OK8/jwUSnPWeoMh2CkQO
S063D/QdYiekPixGDIxPaOhVW/lBLwHDHE7f4PZBShRUX8pHvkNsz519UPeCWM5oPTQ9oFGSODbD
clk2RfTbYttFheiThhCr+ug47kXXisPg6PGY/0lmrg69pUHuI4qb65VGGLm+39yGw4DNty1enXNA
BJIyiddo6Pvx/zubaWCrMTXTWaryd6lADKKaf1lPOvj2B9t72/BPYCWik1+3SQj+0XzS9WrHtN1e
tNIXklZjxL7jOlVNA21IchOGbuokm/EcPXrBofkLKeGNAN2WXuTsVh4JK1iumXK3UAliPQpBQvlk
joFRyCzNNOPNJ7s4EZsGvpBGblbrMegqYGNg7r6pDyZsvqpsZlUj2eXm22umEMfE2EURfJccT/Am
hYWzy1Lwr0fRl+uIc1YpM3qqRjkbre30Od23+u788ElxYoQVrW2cdW+xez5pAyeCU8YMrX29jBj7
vbd4xuCMO7L8RMoO183I0PM+qC/mFLc0z6A5WGZlrK0RkuPsp0SSzhwTFrJuIHn9PcM+lovNxlcy
sACAGeXTskgibhuPwNqRPSxieiwtoj2c0mpEQVcuO9jBO3iqe5Hb4m7UBpTEjdFkxCmQctGVO9aj
+w9lBqpPkRp/jK3G08StNCZWzRoNirJoRqTK7YzCyrqgXwv2NNIUCb3xDOCpYn437EKmVHNlgKsJ
1IZSwgczgxksyzvGT53d7xaXRhzISU+4kGy/pU8IJD2JhUolSgNMxfB16uWRhGMjg0LAO6d9LvX8
OgVyvDunF7tQHngY+fmGgLTjComdIdORcjloCa7I19VYqsmwyhrkCn1Ta+TzIbTqbscLSKff/wae
SiFsyKptF8i5zfAesX1GIQacn8HuKtH2RsIE6Kjw+WOS/KnZOiPss3Rm1snoniICieDMshsR3x09
FsDqolxssfEFiBkQJ2PNF05q9lRPQeWe01bFjaj9U/v7vQps8KHyF7qligzcJNyj05NnSb/0o2GZ
oAk3U2o03aJsIVowaJLnTdpCy0Gdr9lPlpcCWwH9dKSbg4URqFTzqx4kup2N6ir+8z/xCaRvldCR
UjIeKdgyUApsBYbvKzM/bEKKgi5HwHqgzDxrM5O9cgR7Mokj5QCSdXWXCIZG+pCskI6yQGIH0oY5
pFsVvpNOd+8Epv8jpQz/FIReOnnTWk6qz1jRxMwpcXcpM6EHEnr8BkMHhvFWj2nWMK0SDzFqC5IZ
xFHAHUGuCJDTK0RRSSE11KEIlVkML3DM2BaPAfFxlFohA06ZbC7dZIid8y0s8Uuq3U4yDojXt/+6
4u2LbGu+rJ/BK0QE1rgnStf2dNmfhCipQmYpeij3zsNsY2c2iyedHOxMxA661Ubm1dSyjD5KItCW
Sj4cmOL8BsB+bHoUg0ohgio1DpKbYHwNmuxC75RUo/uGKTmuWnCuNy9s4yfLQwuc4Wx+3OQBPHh/
/kTUrdG9ePQ8+86n4cyoxQ3dOfeoE0zltDuAwUuJcS/PMoQD3IMKlzdYpaiiEXzNEAn0TrVQFDRK
jpZf7BvwSoTdhDCuh9zz4KVLsZ1pULTFG/FQ/BHrwD629I3pUA2RC3tVeK8xBE0fTZ2f72+8W79o
mW6pDYlvLgibwYxy07sbfuycNrOQAHLK8rAVtmy6sPuKBY9eSXQXdeb8vme941wFNYVBmtJnORpk
I0NnB7uyQAbldrUCYGRqSooXMNBb+x/J9zoKmhDsGuELeKcG5GsSvvEfHUIlRTDigII3x0iv0qoV
Zhr+ofLW/YgnXxyzuaN/bxO81jDMpMdnTCjtKrVzgEIbKB2YNRvOIo5jQytLvY9rXoBiqBH0lRir
FLQPuNMYlIUUbJKclINhKo7B82OZgdMvnlpJswMXTeiwuEq3jd5pQCsbEahvj7oi/gP6OQGhTUZS
3lmq9I96CkhzVc4gTt1u7UYcNXrrb6bKw91XYQj8UMU7ZMhmziIumLzKoM59a/bsLkmPySXe8rfN
/VESqXNlF00TZV9Gi7GbbmHTtsvqaNTcO6T0aXkAu38gm1Sk2C7yKBy5YTl7ccSNZK0VUJGZTILU
Gyn4cVqItJ9/c1uYhwlGa2qpLN1ulcm+9FlBgxdG2f2M2MbQOeuxpd0mgpnQpbM08kUCVLOcefJe
mKTE8Uw6DqTK9ZQgTPx6nFkKUryVc/oakL881gOgedJBG/rxzvEu8weBEaTBSELv95v/K8g5dO4r
ensSBCzChuRcDnFzFqCWBrgDcwNnh7xwRaiawbdf+NlKu6qyq0gPtre6QNJHg2nbrWzo6t6De1UJ
27fhABWkB3P1TRM467mgw4K6tj8jv1fGsjI9kvBUhDGZxcKwjDkF6cRisS3lRUYQyVVDNiuxheeI
fvvh/T24dOkRBe0V1OLJpGPGwPeDsmV0s0Rk52imoEvXwPdgh9oB0MFlQFI0Tb0kbuDE7wWK3rzT
GI15+oSFdYLTvB2sqeOyT0JdIkVDdBMow1GR3dT/gYn7zKhzKaX1xCZcGXOJQJf2E3hpmKRXqPLQ
LXWEwBKvp9qHD+joXt/thls5x9iFXK/SVaO8i8740KVtMBNihl5ehOi2fvl+LfaDpvgXPuwswdX4
VhB/O0+JJCAegNMtIYTREhM8DnmCyi0lkjyRCdh58cRh8d6j3LSqAFPmkL881HGFyFT3JYNquDio
50p5Qe9naZtkM0uUmv20pkV4j1JXepSqakoiYyJnvkNNmER4oAXM6+BRe7n0ylILE6hItL7spXbs
6U991YyecOjj3FiJm8fSop9x6zFplBsj81tFZGh2vvn99XcwtS+mnZM5qsT9hE0KzXGPQz939F43
U4LBbMrWpBFaffvnEirmC3LorQ43/VpBukj0eMnz5JglveS1pVT060UL30hcZrjwzZ9j4P94qSps
nV8WHojIeA7Jyk/fWQkkpw42OXoqi7MZFBwkT4Q9WccWctK2yeWftjf7+z0qqRgGA9fYLZv0pkle
BS57rl5gjne6rPynG/xzHU4GhYw2HTbZuPI0GYworf30vuJb4oSOP8sE3byN/Nv1rwIykwoCNSjO
vBfI8UN39vSXb0fE7CosKcDkVrXYc8npU9nnEqrSsynLH0fo5uP/azPGkG+DINEOxdKAccGejv2B
N7nCcmNUuqbUY8C/vZK5hRL4PrxoxxGUjJCLdEBHnJEnqZ+5qL0RLQR1oHMOsPikI8F2YMQNOAqx
lgk4FOtpzvxrGtASXD/f8r/BzMTV9a+AN5Hr8mj661d1bN7Nwn6eJQN+sVeLJdERncuLG4V2APSo
DfdnbuEfbqJqB2/5JKf17BY6jY8WdWFLDybWVwD3oZ61MBrDO6lN/Y71Dtheb1h2H0bK4v98VY6p
bZPpvoX3cKM0JvZ/0zVINCOLdVOu7aS3NUqMGzeWoo5VOYCuJy6peXjR+XZ7sdTsZVRA1XYn/ecU
aB9323a+AOa9sR3K2Dbx5hG7sW8OO02VpqUF5D4P6HyzLxke+1a48uMkekQXOUpkuJ+xNIJ8qpXO
bL3WN+xQMljBcY3CFvlbFqyGdyXJCMJqfltZKzqM7/8EIqPejWIxz4wc3VsUeXN8cw5ZvzZ0aTWb
7zdV9zmcVb62oNyZ3IGWw3vo2CeZb2FcTYcwq0oc8AJwybHcRmP8JztJWafJj2+6mIOkjoPTy8v6
8BrBoBu0/AFREpgifpJjXXBV6MTsR2MBOGPR04/wVm/hatVFGtAgVnWQkCsWG2VoAkvAqsuiy0gZ
yjjRVfvj56MQBCxQXr78D0C36VDd4Uw/whXZEZaDMryhQdew0nZaayOuZcLsq1OHDtN5+hKW96FV
47+G5fIVcDcgFsjvht3qIjE/3FU7RIJ0YBlytR94fQOrdIx7IFXtMIdHRW2c0NPTjm1RNdxZyJVY
p9DDOglREaubLdwU8hTcIsMlilcwHqa1Vk2JBIsK9suqvLsssbQq5pKjYsxwrjGkJ1CV+hbtZ5GW
y61Jq3tj1c7F5LcAujSxLKFMQZqaOMzB2vZbAlQNQGOmvppnZIzG3xTFs/WDJkkcajkNhCnFiPv+
8IXvZ81ARbEpHWhIYQSdqULWNo7RrfsSQ68dkwNqpMlQTIST8C6OQ5yjEK75rM67ndv1D2RTzQto
vAunUluYr+r+ReE1JdATE5aAtEw9u1lx+zpGltfGfTjGQgKLtzgOplFC3pgImJv2Ze6RSxPHmPU1
vRGWLbRqCNrpVw7sYfE2iKordDmkWwk/V2qRhXH0yuY69rqL+o18HR7qtSJXs8KvMvQl0c2FriH7
yxR+SfyQIj4RhqiU2XqLbcbmpeRgX5y71ymcFmbe2r0UFsBHr03He/fXB5XliSCWlQ2kQo3ng6yU
YrsgNa0py7XbdOw+IG2e8h2jgd7RDLVCAK+NvWfZlzjQEJu1S7zsLN4KCvgfIgtpRovm9hX7l2j2
S0SgHBUD7VkcTQ3as9gUoZu2C2CjWxbaNOxfEIsF+NKXxYJtlxf9x1/6986egxAbqoLzJ+Kaxl3e
uwSr5ZgRKfqa2UHq+NTWUET/mvaYcg3vajK4BzRFJGcteoDGzuPbZCncrjWmj0a8SnVO2FY6w1az
Cs0KyS2Mr+syIveda2CafwvbYlrf9sS4pCbJEbngheP9VL6wlDnBa4axVw/iERjXVJrTK3mzemMY
lZDE1KpnOqIu0HisFq/amJM7UIvSkUQPDU5XXkR3ST/N+6KK7Qu6ePU4WbjOexbeSm705znJ+VVP
xUrsjPAkMTxTDjyPuGmO40Q6jvFcpS9Sk7oBbYB+/48s3qqUD43miqKet2oQQzzR1r2K6TTko2Uw
toZZwr9GJO0tD/y2itiUVpMO/NCXHpg+sqriI+HUzSzrntErOZwwdAs12+YsxfLJ5cTMV03VfvU2
jx9U4bg9bUjfoZa+7lmJTb72f5jFnp7PFjEjm1bJjvXCxAK4iUKXIjE25VXjN7lhoc18A+w6R7VC
cFujNVNC+ySIhY4fzRMVor7cGNJIkwn+jYp8P6DBlN3ENmYAqUT5xe60LGUbqGD1qi983iNS9rDl
x5ULxgZDSNw4wOn+1J6HbJGdEPuIwm1e5I+2ld11lttIIjnbyRd0bi+S5LZGEGtkToUNympP87AJ
QZMxQar3JcVHu9RWJ/3H8eEDdXBFJZC79fSjC1O9kHeOaWh+xM4QT8YwoFmGTETmm2NVRqajvhOr
NVY+JGJOLcYnx/NtQ6hElM3d4Gq4Ebb08zNl5H1B5yciMxM7/vduNObiADKHagFJTlTmuyWgrNOh
kTshQX2j4SEgwU11bjDz/LkZAV9CCGo0w+ZLAs6JTXS0aL2aMaj1Ilsa83WVgOBKR03/AI/7ziJU
ifwelFSVCzOcH++/9wQuVA+vBaDzo51/+DXWScs5/UqB3bMumEvzGoBvoPHuRMtMxIbag7EvrRO7
gFvI6yci2fl71rL+ZpXRh+XrV1Qt4uz4gy5RgUrNx+SBBJqM1KimZB9iA1208GcooroP2ly8dTZy
lvbHyMnOVe7s8rRW5EOwq8UqBG0MPHRahzjUmfi+QrCABrQN4nlLwZ4s2H+pVEcfIkOngT5Dpliv
z8bBHQdCEdUQZR7AajKVO8AU5PzSLp8sxTO2IdASIWt1yp2vOsVuAr75tMRPFEHKQg5VwIkKXoHU
CmlByE/kpkhNjZUbXxlo9CElxnAypBRXGPY7oJUiXf+N+NZ3Efl+NqstHuYaFLfURkRpMZIy/i+r
4AzvCKx7GoVnmo777oqTvouLoMMeVeshvUZYRfkciVc24L+McNAGsWbwpxkZECmlQUaLmDwYoFH5
5HbT9poEV2OTEBkZqFnpqXHEa/htu0vPoF01M025lD5zCx/CfqoRD7fMn7zEXYqcRv3SoS0tTUV5
Hc2DqxNzYdJVZ8v+KZ5ULslIwQObrbjAkIQFIskbrLVPaGMSVsHovKqEkq5kBzjCSWbhmV35UEHD
PuzEZAtBChKFq2ueRtKAdAr/kMWl5/jkf3OI2t1WhQUGKCUqIJpXXJ5/BQB76z+OdP9ZF4uY4tAP
XduEu8+vqx1EhhHmjR4HVl48oUsf4JqTrsS9j6+JhINFrWtBqqJVb/CCg3/uefRCBSERbo6Mxu+0
H2YQZs7dMEHY7c54yHh8SM9LD2gvD9Fbyf3STbFLwwG0WeLHhkhvCS/4g/PN1sCU7EZK/TsSWWI6
aSdCaB8YNoVvfvdMyHQgwD047FgF5wsaZC0RtltasOdMlFMokQQTcWUOSAFI4KuDlvAbSnCfh6IU
oRVkERMY7ulxU/JtpA/nHxt0fW8jntqlfbotszDgioyTa7M/JvWh1h3HRdXV/Ms6ToCJps3CNum5
y3S+4SNIkv+9efy7XcctVfFjgO1B+V5CUG+YkWBKnyhZWqjCU5p2k40oj0rtD/SkR2sk/muuYZPO
DFtK0TcRfv8R9gfdhcJcU9HZGAJ8t63zeexWgS9ZRbjpM7XPf/4IIpOCgmAEmWO5ZjVaaZXunWm6
uSO3TDuR5FfOzGUvqQHafhefoIc3s1PnLgp62UwY+Z38dlSvCLcdHCRM76ayweC44wt6JCmL9Mbw
JQ7ycPblcO7OjSBHPLHqisNze5kEezyV2DFv4uM5nmQ6hW3XK5cekTcxz5LnnrDz9ShFW4hyO9nY
vouHU6YXAD68ajWTNiDjYqloBUQPYX/oL+qehq6SdJqN46eEU7b7Tiz5CLJGcQKDoKlFhFQGphIw
95TGeiMepuAYQODRSoMhamUCZVJA6fheO9roVl75JRrrNeWcxGhKTAx2SWL4OkiEA6berWoUeFkg
17t0K3Ruu3jp8itUcypJNQ21CGOA12Shsj4+YihCcKxn9/oCVUdPcgt8J3+ChrTBZcLXzCkgxrg3
O8V6xvh6qo/PvValQexi6C7NXQyXvRICiopV5TY0F13OVQz8U0vjlxK80DNZURwTskWQ8jXvUwk5
BpnqTdqa/GssfRKw8g30wPRh1IAfEOV61Ylz0W7cjeC6BJZjtMfIQV94/n4KRFnFgFcomojKQwjk
3dw3yZIAvB9Ae/yOrQPl83RLGmvk1CqGN7JfrOqBFBvWsKRZW0kO2A3tU5NzWvWTbZK14xMUwDWt
x++SBB4EdjTfk6eRifTOhuhnJfdrPn/CWhkK0GDQdKUNBusY94u0EEckyYC2VZeruQCtd+iQrW19
3oC0514KEIGiIflPB1wXbNUptOEic3G+Zyf5BYTqbrYYhPKBwlzshh9va0TDzJAxycrbgjRkH5hA
DyFQMvXzXiKWBeIMaJUoGHmVo2meUc/GHPCuOu/YDtVzBFjTaeP/j1cefS0riIXrdgOTS3TeBPop
j8GFmbPNT3rmiDSHWqkrizUp2jI2fQ1EcR5GpkaA2fKM6A+EkT+3JDfBM8lu9cNqJ7ThWshgZCpd
38Zs7gtM1gM+YA/6GmTaLbpoB1l+2av43tH0Y7ehp1ns3pce+Ssz9eBr0SNMqZ84Hh3zFeBoLpbT
gdwZWa4NggXMF98SjPz7a/PnAVG57XAnccejUX0EAAt9ua3OhDkgfoRCPABAXVxIvnee63/nPyFm
/cKGtGkIAOlH3/Pv1DkcDKsYJMv5225JODxSaLGuKvmK8Ejjry7BbyAVj+/mQ0ZtotaTVnqrgCkB
wv98D2bbmjKwFpFRA0CFgQ5cYnm9QVKltyV1kloQdE1LCJYjOlyphkF6eSpiX6rVza6HP59R8UEz
QRUP6BajvznlLGkd5T3cXuuQyTKO7kyqXeo9HrWprNO4wsGMYr56KssWS67llS5lXUqQGGkQrF24
AuGnNkgsow1T23fkyUj3reTGkq0vMeLQJlrjTvqIqUT1RWskbhTlzi1WMb5lTOYOxe2cs9neSNDG
bjF2pZV437D0UCdAiEnpJZnGiVlpjvRMp3I2+Sp3spDMbymdl4hhMBhXnC2NViW856i6hDKqiMxJ
x/ll2uXb2IE7eDhG0kU0qYescL9BQiVhRfFb1RVF2xdRlzDdvrSgUA9opw90QzUzhhqwCCwegeeX
UjyjRexYKUcqycX6zSe5EC34NhAqY9bvK0neYQA6NS84qyAvkF4su2xa9ApPWFf4IKoiJuK0bB9z
nEO9qAzhhSh1dGBBd7R3+Vux7O2us0sMNDTJWGMmBCwDgGoQxXvP4fGcQupjysiM5xuMA1zGPRL4
/eXgd2I+EyuLQVZJ5onzz2v353nvl8+poNCGNWWksl1VSNo8QOmMz9MUpWJCQo94iDMbHfr+cHQ+
SUoT9wjJiBodTioCGD9UdOA7DbYrja/JL9ua6ZZc2tYQdZJ2WuAKtKJ0yByvvl0GHW31JcN2Zvxf
WpVVS2ObChs3dj2dVpQA3gKDJ5xDTvOHAQAClK1gyxWSJeH5nXvtOkcJMDeJcQ8xrTkqGKZNlcCs
fa60UdcFcO7Nklss7U1GI0duWvxyjG7KueN0dpavGEiH315c27SzhuWxYmO1h40/91BFF2jV3KZ0
3LjleQ3f9AUuWLdE8FXj5MTgJtLmFqJafd/vIz5nwCqwjNBFhIOGLolU7nS10wUIqaP8/Tvu7hMQ
7RryZrR1RG3aN+td9MaLjbjntzcTMMIaT+eay1+9VsgHg1b/SgZ9evEpdrxczYKiVaJjPBhe/y22
XavOTkw/xDrFYB8kdtbUf/BLx/f2oCqtzRWuOgWPNR+PnyTBRQBIXMvgb1wVkKzLMVxqJKTJaov1
elOgehvAmI0BG/jvIemRgzufhuExOKhafDkY0oeXj95u1qWcW9cnih3Ier8LartA/CZRhff8F1no
hLpI9SZ8Yq02Na/E68g9R+s0ov70CtYkkDWb10IcdcyP2VfBAKTPdPeuy/hAUQ7eKSlxVNe/ArUN
km+7I9px/kZUD2cC7pRh+U2Hmn7XBqHCGsn4xMTFzCTMdFmFuo0iWhzks1o6cG2anHqI/4H4esoN
uSWg1UbbWR6AK+YnsD6DVegKhSc0oob4EV0bI2CMHr2NDwwfvipzyZ2Wd9ozDnOPSVSr
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
