module top_flash (
    input  wire clk_top,   // 50 MHz
    input  wire rst,

    input  wire miso_spi,
    output wire mosi_spi,
    output wire sclk_spi,
    output wire cs_spi,

    output wire [7:0] AN,
    output wire CA, CB, CC, CD, CE, CF, CG
);

    // -------------------------
    // SPI controller outputs
    // -------------------------
    wire [31:0] dummy_pc;
    wire [31:0] dummy_data;
    wire        write_en;
    wire        prg_mode;
    wire [31:0] register;

    // -------------------------
    // PC outputs
    // -------------------------
    wire [31:0] pc_rd;
    wire        pc_en;

    // -------------------------
    // BRAM signals
    // -------------------------
    wire [3:0]  bram_addr;      // depth = 16
    wire        bram_we;
    wire [31:0] bram_rdata;

    // -------------------------
    // SPI Flash Controller
    // -------------------------
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
        .prg_mode(prg_mode),
        .register(register)
    );

    // -------------------------
    // PC Reader
    // -------------------------
    pc_reader pc_unit (
        .clk(clk_top),
        .reset(rst),
        .enable(prg_mode),
        .pc(pc_rd),
        .en(prg_mode)
    );

    // -------------------------
    // Address & write control
    // -------------------------
    // Program mode  : use dummy_pc, write enabled
    // Execute mode  : use pc_rd, read only
    assign bram_addr = (prg_mode) ? pc_rd[3:0]   : dummy_pc[3:0];
    assign bram_we   = (~prg_mode) & write_en;

    // -------------------------
    // Instruction Memory (BRAM)
    // -------------------------
    blk_mem_gen_0 instr_mem (
        .clka   (clk_top),
        .ena    (1'b1),
        .wea    (bram_we),
        .addra  (bram_addr),
        .dina   (dummy_data),
        .douta  (bram_rdata)
    );

    // -------------------------
    // 7-Segment Display
    // Show instruction during execution
    // -------------------------
    led_driver led (
        .clock(clk_top),
        .data(prg_mode ? bram_rdata : register),
        .AN(AN),
        .CA(CA), .CB(CB), .CC(CC),
        .CD(CD), .CE(CE), .CF(CF), .CG(CG)
    );

endmodule
