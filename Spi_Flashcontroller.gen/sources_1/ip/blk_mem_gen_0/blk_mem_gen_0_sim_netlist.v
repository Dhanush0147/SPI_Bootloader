// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Fri Jan 16 18:11:46 2026
// Host        : Dhanush running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/SIVA DHANUSH
//               REDDY/Downloads/SPI_Bootloader/Spi_Flashcontroller.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v}
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19456)
`pragma protect data_block
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
5nNy9hZocz09b2WVuxogqrFU1w==
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
