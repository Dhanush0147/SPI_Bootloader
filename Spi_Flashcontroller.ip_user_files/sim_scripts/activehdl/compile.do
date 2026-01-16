transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/blk_mem_gen_v8_4_9
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap blk_mem_gen_v8_4_9 activehdl/blk_mem_gen_v8_4_9
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_9  -v2k5 -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib \
"../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib \
"../../../Spi_Flashcontroller.gen/sources_1/ip/blk_mem_gen_0/sim/blk_mem_gen_0.v" \
"../../../Spi_Flashcontroller.srcs/sources_1/new/SPI_Test.v" \
"../../../Spi_Flashcontroller.srcs/sources_1/new/Spi_flashcontroller.v" \
"../../../Spi_Flashcontroller.srcs/sources_1/new/Bulkerase.v" \
"../../../Spi_Flashcontroller.srcs/sources_1/new/LED_DRIVER.v" \
"../../../Spi_Flashcontroller.srcs/sources_1/new/pc_reader.v" \
"../../../../Spi_Flashcontroller/Spi_Flashcontroller.srcs/sim_1/new/Tb_pi.v" \
"../../../Spi_Flashcontroller.srcs/sim_1/new/flash_tb.v" \
"../../../Spi_Flashcontroller.srcs/sim_1/new/tb_practice.v" \

vlog -work xil_defaultlib  -sv2k12 -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib \
"../../../Spi_Flashcontroller.srcs/sim_1/new/tb_pct.sv" \

vlog -work xil_defaultlib \
"glbl.v"

