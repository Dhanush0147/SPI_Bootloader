`timescale 1ns / 1ps

module tb_SPI_Driver;

    // --- Signals ---
    reg clk;
    reg rst_n;
    reg start_write;
    reg miso;
    reg [31:0] data_in;
    
    wire mosi;
    wire ss;
    wire sck;
    wire [31:0] data_out;
    wire wea;
    wire [31:0] address;
    wire prog_done;

    // --- Instantiate UUT ---
    SPI_Driver uut (
        .clk(clk),
        .rst_n(rst_n),
        .start_write(start_write),
        .miso(miso),
        .data_in(data_in),
        .mosi(mosi),
        .ss(ss),
        .sck(sck),
        .data_out(data_out),
        .wea(wea),
        .address(address),
        .prog_done(prog_done)
    );

    // --- Clock Generation ---
    always #5 clk = ~clk; // 100MHz Clock (10ns period)

    // --- Flash Simulation Vars ---
    integer i;

    // --- Main Test Process ---
    initial begin
        // 1. Initialize
        clk = 0;
        rst_n = 0;
        start_write = 0; // Mode: Bootload (Read)
        miso = 0;
        data_in = 0;

        $display("--- Simulation Start ---");
        
        // 2. Reset System
        #20 rst_n = 1;
        
        // 3. Wait for Driver to Select Flash (SS Low)
        wait(ss == 0);
        $display("Flash Selected. Receiving Command...");

        // 4. Consume Command (8 bits)
        consume_bits(8); 
        $display("Command Received.");

        // 5. Consume Address (24 bits)
        consume_bits(24);
        $display("Address Received.");

        // 6. Wait Cycle (Turnaround)
        @(posedge sck);

        // 7. Send STOP COUNT (First Word = 9)
        $display("Sending Stop Count: 9");
        send_spi_word(32'd9);

        // 8. Send Instructions (1 to 9)
        // Since Stop Count is 9, we expect the driver to read 9 more words.
        for (i = 1; i <= 9; i = i + 1) begin
            $display("Sending Instruction: %0d", i);
            send_spi_word(i);
        end
        
        // 9. Wait and Check
        #50;
        if (prog_done) 
            $display("SUCCESS: prog_done went HIGH. Bootloading Complete.");
        else 
            $display("FAILURE: prog_done is LOW. Timeout or Error.");
            
        $finish;
    end

    // --- Helper Task: Mimic Flash Sending Data ---
    // Flash outputs data on Falling Edge of SCK
    task send_spi_word(input [31:0] word);
        integer b;
        begin
            for (b = 31; b >= 0; b = b - 1) begin
                @(negedge sck); 
                miso = word[b];
            end
        end
    endtask

    // --- Helper Task: Mimic Flash Receiving Data ---
    task consume_bits(input integer count);
        integer k;
        begin
            for (k = 0; k < count; k = k + 1) begin
                @(posedge sck); 
                // In a real model, we would store 'mosi' here
            end
        end
    endtask

    // --- Monitor Output ---
    initial begin
        // Only print when a Write to SRAM happens
        $monitor("Time: %t | State: %d | WEA: %b | SRAM Addr: %h | Data Written: %h", 
                 $time, uut.state, wea, address, data_out);
    end

endmodule