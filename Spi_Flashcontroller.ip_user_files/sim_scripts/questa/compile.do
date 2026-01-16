vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/blk_mem_gen_v8_4_9
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap blk_mem_gen_v8_4_9 questa_lib/msim/blk_mem_gen_v8_4_9
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_9  -incr -mfcu  \
"../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../Spi_Flashcontroller.gen/sources_1/ip/blk_mem_gen_0/sim/blk_mem_gen_0.v" \
"../../../Spi_Flashcontroller.srcs/sources_1/new/SPI_Test.v" \
"../../../Spi_Flashcontroller.srcs/sources_1/new/Spi_flashcontroller.v" \
"../../../Spi_Flashcontroller.srcs/sources_1/new/Bulkerase.v" \
"../../../Spi_Flashcontroller.srcs/sources_1/new/LED_DRIVER.v" \
"../../../Spi_Flashcontroller.srcs/sources_1/new/pc_reader.v" \
"../../../../Spi_Flashcontroller/Spi_Flashcontroller.srcs/sim_1/new/Tb_pi.v" \
"../../../Spi_Flashcontroller.srcs/sim_1/new/flash_tb.v" \
"../../../Spi_Flashcontroller.srcs/sim_1/new/tb_practice.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv \
"../../../Spi_Flashcontroller.srcs/sim_1/new/tb_pct.sv" \

vlog -work xil_defaultlib \
"glbl.v"

