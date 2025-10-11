`timescale 1ns / 1ps

module SPI_Driver (
    input wire clk,             // System Clock (e.g., 100MHz)
    input wire rst_n,           // Active Low Reset
    input wire start_write,     // 1 = Program Flash, 0 = Bootload from Flash
    input wire miso,            // Master In Slave Out (Data from Flash)
    input wire [31:0] data_in,  // Data to write to Flash
    
    output reg mosi,            // Master Out Slave In (Cmd/Addr/Data to Flash)
    output reg ss,              // Slave Select (Active Low)
    output wire sck,            // Serial Clock
    output reg [31:0] data_out, // Data read from Flash -> SRAM
    output reg wea,             // Write Enable for SRAM
    output reg [31:0] address,  // Current Address
    output reg prog_done        // Flag: Bootloading finished
);

    // --- State Encoding ---
    localparam S_IDLE       = 4'd0;
    localparam S_WREN       = 4'd1;  // Write Enable Command
    localparam S_WAIT       = 4'd2;  // Wait 50ns
    localparam S_PP         = 4'd3;  // Page Program Command
    localparam S_ADDR3      = 4'd4;  // Write Addr [23:16]
    localparam S_ADDR2      = 4'd5;  // Write Addr [15:8]
    localparam S_ADDR1      = 4'd6;  // Write Addr [7:0]
    localparam S_WRITE_DATA = 4'd7;  // Write Data
    
    localparam S_READ_CMD   = 4'd8;  // Read Command
    localparam S_ADDR3_R    = 4'd9;  // Read Addr [23:16]
    localparam S_ADDR2_R    = 4'd10; // Read Addr [15:8]
    localparam S_ADDR1_R    = 4'd11; // Read Addr [7:0]
    localparam S_WAIT_READ  = 4'd12; // 1 Cycle Turnaround
    localparam S_READ_DATA  = 4'd13; // Read Data loop

    // --- Commands ---
    localparam CMD_WREN = 8'h06;
    localparam CMD_PP   = 8'h02;
    localparam CMD_READ = 8'h03;

    // --- Internal Registers ---
    reg [3:0] state;
    reg [2:0] bit_cnt;          // Bit counter (7 downto 0)
    reg [31:0] shift_reg;       // Shift register for data
    reg [31:0] stop_count;      // Total instructions to read
    reg [31:0] word_cnt;        // Instructions read so far
    reg [4:0] byte_pass_cnt;    // Byte counter (3 downto 0 for 32-bit word)

    // Drive SCK directly from system clock (Mode 0)
    assign sck = clk; 

    always @(negedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= S_IDLE;
            mosi <= 0;
            ss <= 1;        // Deselected (High)
            wea <= 0;
            address <= 0;
            prog_done <= 0;
            bit_cnt <= 0;
            stop_count <= 32'hFFFF_FFFF;
            word_cnt <= 0;
            byte_pass_cnt <= 0;
            data_out <= 0;
            shift_reg <= 0;
        end else begin
            // Pulse Write Enable only for one cycle
            if (wea) wea <= 0;

            case (state)
                // --------------------------------------------------------
                // IDLE STATE
                // --------------------------------------------------------
                S_IDLE: begin
                    ss <= 1;
                    bit_cnt <= 7;
                    if (start_write) begin
                        state <= S_WREN;
                    end else begin
                        // If not writing and not done, start bootloading
                        if (!prog_done) state <= S_READ_CMD;
                    end
                end

                // --------------------------------------------------------
                // WRITE SEQUENCE
                // --------------------------------------------------------
                S_WREN: begin
                    ss <= 0;
                    mosi <= CMD_WREN[bit_cnt];
                    if (bit_cnt == 0) begin
                        state <= S_WAIT;
                        bit_cnt <= 7;
                        ss <= 1; // Must toggle SS high to latch WREN
                    end else bit_cnt <= bit_cnt - 1;
                end

                S_WAIT: begin
                    // Simple delay logic. In real HW, verify 100MHz * 8 cycles > 50ns
                    if (bit_cnt == 0) begin
                        state <= S_PP;
                        bit_cnt <= 7;
                    end else bit_cnt <= bit_cnt - 1;
                end

                S_PP: begin
                    ss <= 0;
                    mosi <= CMD_PP[bit_cnt];
                    if (bit_cnt == 0) begin
                        state <= S_ADDR3;
                        bit_cnt <= 7;
                    end else bit_cnt <= bit_cnt - 1;
                end

                S_ADDR3: begin
                    mosi <= address[23:16] >> bit_cnt;
                    if (bit_cnt == 0) begin state <= S_ADDR2; bit_cnt <= 7; end
                    else bit_cnt <= bit_cnt - 1;
                end
                S_ADDR2: begin
                    mosi <= address[15:8] >> bit_cnt;
                    if (bit_cnt == 0) begin state <= S_ADDR1; bit_cnt <= 7; end
                    else bit_cnt <= bit_cnt - 1;
                end
                S_ADDR1: begin
                    mosi <= address[7:0] >> bit_cnt;
                    if (bit_cnt == 0) begin 
                        state <= S_WRITE_DATA; 
                        bit_cnt <= 7; 
                        shift_reg <= data_in; // Load data to shift out
                    end else bit_cnt <= bit_cnt - 1;
                end

                S_WRITE_DATA: begin
                    mosi <= shift_reg[31];
                    shift_reg <= {shift_reg[30:0], 1'b0};
                    if (bit_cnt == 0) begin
                        // Single word write demo -> return IDLE
                        state <= S_IDLE;
                        ss <= 1;
                    end else bit_cnt <= bit_cnt - 1;
                end

                // --------------------------------------------------------
                // READ SEQUENCE (The Bootloader)
                // --------------------------------------------------------
                S_READ_CMD: begin
                    ss <= 0;
                    mosi <= CMD_READ[bit_cnt];
                    if (bit_cnt == 0) begin
                        state <= S_ADDR3_R;
                        bit_cnt <= 7;
                    end else bit_cnt <= bit_cnt - 1;
                end

                // -- ADDED READ ADDRESS STATES --
                S_ADDR3_R: begin
                    mosi <= address[23:16] >> bit_cnt; // Send Bits [23:16]
                    if (bit_cnt == 0) begin 
                        state <= S_ADDR2_R; 
                        bit_cnt <= 7; 
                    end else bit_cnt <= bit_cnt - 1;
                end

                S_ADDR2_R: begin
                    mosi <= address[15:8] >> bit_cnt;  // Send Bits [15:8]
                    if (bit_cnt == 0) begin 
                        state <= S_ADDR1_R; 
                        bit_cnt <= 7; 
                    end else bit_cnt <= bit_cnt - 1;
                end

                S_ADDR1_R: begin
                    mosi <= address[7:0] >> bit_cnt;   // Send Bits [7:0]
                    if (bit_cnt == 0) begin 
                        state <= S_WAIT_READ; 
                        bit_cnt <= 7; // Reset for wait/data
                    end else bit_cnt <= bit_cnt - 1;
                end

                S_WAIT_READ: begin
                    // 1 Cycle Turnaround (High-Z / Dummy cycle)
                    // Flash needs this time to take control of MISO
                    state <= S_READ_DATA;
                    bit_cnt <= 7;
                    byte_pass_cnt <= 3; // We want 4 bytes (32 bits)
                    shift_reg <= 0;
                end

                S_READ_DATA: begin
                    // Sample MISO on negedge clk logic (here we use shift reg)
                    shift_reg <= {shift_reg[30:0], miso};
                    
                    if (bit_cnt == 0) begin
                        // One Byte received
                        if (byte_pass_cnt == 0) begin
                            // --- 32-bit Word Complete ---
                            data_out <= {shift_reg[30:0], miso};
                            wea <= 1; // Trigger SRAM Write
                            
                            // Handling Stop Count Logic
                            if (address == 0) begin
                                // First word is the count (9)
                                stop_count <= {shift_reg[30:0], miso};
                                word_cnt <= 0;
                            end else begin
                                word_cnt <= word_cnt + 1;
                            end

                            // Check termination condition
                            if ((address != 0) && (word_cnt >= stop_count)) begin
                                prog_done <= 1;
                                state <= S_IDLE;
                                ss <= 1;
                            end else begin
                                // Continue reading next word (Address increments)
                                address <= address + 4;
                                bit_cnt <= 7;
                                byte_pass_cnt <= 3;
                            end
                        end else begin
                            // Move to next byte in the word
                            byte_pass_cnt <= byte_pass_cnt - 1;
                            bit_cnt <= 7;
                        end
                    end else begin
                        bit_cnt <= bit_cnt - 1;
                    end
                end
                
                default: state <= S_IDLE;
            endcase
        end
    end
endmodule