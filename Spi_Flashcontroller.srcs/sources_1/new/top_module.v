module top_flash (
    input  wire clk_top,
    input  wire rst,

    input  wire miso_spi,
    output wire mosi_spi,
    output wire sclk_spi,
    output wire cs_spi,

    output wire [7:0] AN,
    output wire CA, CB, CC, CD, CE, CF, CG
);

    wire [31:0] dummy_pc;
    wire [31:0] dummy_data;
    wire write_en;
    wire prg_mode;

    wire [31:0] bram_rdata;
    wire [31:0] pc_rd;
    wire        pc_en;

    Spi_flash_controller spi_ctrl (
        .clk(clk_top),
        .reset(rst),
        .miso(miso_spi),
        .mosi(mosi_spi),
        .sclk(sclk_spi),
        .cs(cs_spi),
        .instruction(),
        .dummy_pc(dummy_pc),
        .dummy_data(dummy_data),
        .write_en(write_en),
        .prg_mode(prg_mode)
    );

    blk_mem_gen_0 instr_mem (
        .clka(clk_top),
        .ena(1'b1),
        .wea(write_en),
        .addra(dummy_pc),
        .dina(dummy_data),
        .douta(bram_rdata)
    );

    pc_reader pc_unit (
        .clk(clk_top),
        .reset(rst),
        .enable(prg_mode),
        .pc(pc_rd),
        .en(pc_en)
    );

    led_driver led (
        .clock(clk_top),
        .data(bram_rdata),
        .AN(AN),
        .CA(CA), .CB(CB), .CC(CC),
        .CD(CD), .CE(CE), .CF(CF), .CG(CG)
    );

endmodule
