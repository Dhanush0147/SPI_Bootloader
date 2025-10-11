## SPI Flash Controller – Nexys4 DDR

## Clock
set_property PACKAGE_PIN E3 IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 -name spi_clk -waveform {0.000 5.000} [get_ports clk]

## Reset
set_property PACKAGE_PIN J15 IOSTANDARD LVCMOS33 [get_ports reset]
set_false_path -from [get_ports reset]

## SPI Flash

set_property PACKAGE_PIN G17 IOSTANDARD LVCMOS33 [get_ports mosi]
set_property PACKAGE_PIN M13 IOSTANDARD LVCMOS33 [get_ports miso]
set_property PACKAGE_PIN D17 IOSTANDARD LVCMOS33 [get_ports cs]
set_property PACKAGE_PIN F18 IOSTANDARD LVCMOS33 [get_ports sclk]

## SPI Timing
set_output_delay -clock spi_clk 2.5 [get_ports {mosi cs sclk}]
set_input_delay  -clock spi_clk 2.5 [get_ports miso]

## Internal Signals
set_property IOSTANDARD LVCMOS33 [get_ports {instruction[*] dummy_pc[*] write_en prg_mode}]

## Configuration
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
