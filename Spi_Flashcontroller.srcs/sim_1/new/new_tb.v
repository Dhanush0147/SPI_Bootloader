`timescale 1ns/1ps

module tb_spi_flash_read_correct_edges;

    // =================================================
    // Clock & Reset
    // =================================================
    reg clk;
    reg reset;

    initial clk = 0;
    always #5 clk = ~clk;   // 100 MHz

    // =================================================
    // DUT signals
    // =================================================
    wire mosi;
    wire miso;
    wire sclk;
    wire cs;

    wire [31:0] instruction;
    wire [31:0] dummy_pc;
    wire [31:0] dummy_data;
    wire write_en;
    wire prg_mode;

    // =================================================
    // DUT
    // =================================================
    Spi_flash_controller dut (
        .clk(clk),
        .reset(reset),
        .miso(miso),
        .mosi(mosi),
        .sclk(sclk),
        .cs(cs),
        .instruction(instruction),
        .dummy_pc(dummy_pc),
        .dummy_data(dummy_data),
        .write_en(write_en),
        .prg_mode(prg_mode)
    );

    // =================================================
    // FLASH MODEL (READ 0x03, MODE-0 CORRECT)
    // =================================================
    reg [31:0] flash_mem [0:3];
    initial begin
        flash_mem[0] = 32'hAAAA1111;
        flash_mem[1] = 32'hBBBB2222;
        flash_mem[2] = 32'hCCCC3333;
        flash_mem[3] = 32'hFFFFFFFF; // termination
    end

    reg [7:0]  opcode;
    reg [23:0] address;
    reg [31:0] tx_shift;
    reg [16:0]  bit_cnt;
    reg [1:0]  word_ptr;

    reg miso_r;
    assign miso = miso_r;

    // Reset flash logic on CS high
    always @(posedge cs) begin
        bit_cnt  <= 0;
        opcode   <= 0;
        address  <= 0;
        word_ptr <= 0;
        tx_shift <= 0;
        miso_r   <= 1'bZ;
    end

    // -------------------------------------------------
    // FLASH SAMPLES MOSI ON POSEDGE SCLK
    // -------------------------------------------------
    always @(posedge sclk) begin
        if (!cs) begin
            bit_cnt <= bit_cnt + 1;

            // Opcode
            if (bit_cnt < 8)
                opcode <= {opcode[6:0], mosi};

            // Address
            else if (bit_cnt < 32) begin
                address <= {address[22:0], mosi};

                // Address complete → preload data
                if (bit_cnt == 31) begin
                    word_ptr <= address[3:2];
                    tx_shift <= flash_mem[address[3:2]];
                end
            end
        end
    end

    // -------------------------------------------------
    // FLASH DRIVES MISO ON NEGEDGE SCLK
    // -------------------------------------------------
    always @(negedge sclk) begin
        if (!cs && bit_cnt >= 32) begin
            miso_r   <= tx_shift[31];
            tx_shift <= {tx_shift[30:0], 1'b0};

            // Move to next word every 32 bits
            if ((bit_cnt - 32) % 32 == 31) begin
                word_ptr <= word_ptr + 1;
                tx_shift <= flash_mem[word_ptr + 1];
               
            end
        end
    end

    // =================================================
    // SELF-CHECKING SCOREBOARD
    // =================================================
    integer rx_count;
    initial rx_count = 0;

    // Check opcode & address
    always @(posedge cs) begin
        if (bit_cnt >= 32) begin
            if (opcode !== 8'h03)
                $error(" WRONG OPCODE: %h (expected 03)", opcode);
            else
                $display(" OPCODE OK: %h", opcode);

            $display("ADDRESS OK: %h", address);
        end
    end

    // Check received data
    always @(posedge write_en) begin
        $display(" RX DATA[%0d] = %h", dummy_pc, instruction);

        case (rx_count)
            0: if (instruction !== 32'hAAAA1111) $error(" DATA MISMATCH 0");
            1: if (instruction !== 32'hBBBB2222) $error(" DATA MISMATCH 1");
            2: if (instruction !== 32'hCCCC3333) $error(" DATA MISMATCH 2");
        endcase

        rx_count = rx_count + 1;
    end

    // Protocol rule
    always @(posedge sclk)
        if (cs) $error(" SCLK toggled while CS HIGH");

    // =================================================
    // TEST SEQUENCE
    // =================================================
    initial begin
        reset = 1'b1;
        #40;
        reset = 1'b0;

        #5000;

        if (rx_count == 4)
            $display("✅ PASS: 3 READS + TERMINATION");
        else
            $error(" FAIL: wrong transaction count");

        $finish;
    end

endmodule
