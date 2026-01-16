`timescale 1ns / 1ps

module tb_flash;

    reg clk;
    reg reset;
    reg miso;

    wire mosi;
    wire sclk;
    wire cs;
    wire [31:0] instruction;
    wire write_en;
    wire prg_mode;

    // --------------------------------------------------
    // FLASH MEMORY ARRAY
    // --------------------------------------------------
    parameter MAX_LINES = 256;
    reg [31:0] flash_mem [0:MAX_LINES-1];

    initial begin
        $readmemb("C:\\Users\\SIVA DHANUSH REDDY\\Downloads\\postfuckupshit\\assembler\\output.bin", flash_mem);
    end

    // --------------------------------------------------
    // DUT
    // --------------------------------------------------
    Spi_flash_controller dut (
        .clk(clk),
        .reset(reset),
        .miso(miso),
        .mosi(mosi),
        .sclk(sclk),
        .cs(cs),
        .instruction(instruction),
        .write_en(write_en),
        .prg_mode(prg_mode)
    );

    // --------------------------------------------------
    // SYSTEM CLOCK
    // --------------------------------------------------
    always #5 clk = ~clk;

    initial begin
        clk   = 0;
        reset = 1;
        miso  = 1'bz;
        #30 reset = 0;
    end

    // --------------------------------------------------
    // FLASH SPI INTERNAL STATE
    // --------------------------------------------------
    integer bit_cnt;          // counts SCK posedges
    integer word_ptr;         // word index in flash
    reg wait_pending;         // WAIT state flag
    reg [31:0] current_reg;   // output shift register
    integer bit_idx;          // bit pointer inside word

    // --------------------------------------------------
    // CS ASSERTION → RESET FLASH STATE
    // --------------------------------------------------
    always @(negedge cs) begin
        bit_cnt      = 0;
        word_ptr     = 0;
        wait_pending = 0;
        bit_idx      = 31;
        miso         = 1'bz;
    end

    // --------------------------------------------------
    // SAMPLE MOSI / ADVANCE STATE (posedge SCK)
    // --------------------------------------------------
    always @(posedge sclk) begin
        if (!cs) begin
            bit_cnt = bit_cnt + 1;

            // CMD(8) + ADDR(24) completed
            if (bit_cnt == 32) begin
                wait_pending <= 1'b1;     // start WAIT
            end
            // WAIT completes AFTER one full SCK
            else if (wait_pending) begin
                wait_pending <= 1'b0;
                current_reg  <= flash_mem[word_ptr];
                bit_idx      <= 31;
            end
        end
    end

    // --------------------------------------------------
    // DRIVE MISO (negedge SCK)
    // --------------------------------------------------
    always @(negedge sclk) begin
        if (!cs) begin
            if (!wait_pending && bit_cnt > 32) begin
                miso <= current_reg[bit_idx];
                bit_idx <= bit_idx - 1;

                // End of 32-bit word
                if (bit_idx == 0) begin
                    word_ptr <= word_ptr + 1;
                    current_reg <= flash_mem[word_ptr + 1];
                    bit_idx <= 31;
                end
            end else begin
                miso <= 1'bz;  // during WAIT or before DATA
            end
        end
    end

    // --------------------------------------------------
    // MONITOR
    // --------------------------------------------------
    always @(posedge clk) begin
        if (write_en)
            $display("[%0t] READ WORD = %h", $time, instruction);

        if (prg_mode) begin
            $display("[%0t] PROGRAM LOAD COMPLETE", $time);
            $finish;
        end
    end

endmodule
