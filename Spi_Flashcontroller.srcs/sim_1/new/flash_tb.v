`timescale 1ns / 1ps

module tb_flash;

    reg clk;
    reg reset;
    reg miso;

    wire mosi;
    wire sclk;
    wire cs;
    wire [31:0] instruction;
    wire [31:0] dummy_pc;
    wire write_en;
    wire prg_mode;

    reg [31:0] shift_reg;
    integer bit_cnt = 0;

    parameter MAX_LINES = 256;
    integer file, status;
    integer index;

    reg [1023:0] line_buffer;
    reg [31:0] line_data [0:MAX_LINES-1];
    reg [(MAX_LINES*32)-1:0] miso_data;

   
    // Read binary file and pack into flash memory
   
    initial begin
        file = $fopen("C:\\Users\\SIVA DHANUSH REDDY\\Downloads\\postfuckupshit\\assembler\\output.bin", "r");
        if (file == 0) begin
            $display("ERROR: Cannot open output.bin");
            $finish;
        end

        for (index = 0; index < MAX_LINES; index = index + 1) begin
            status = $fgets(line_buffer, file);
            if (status != 0) begin
                $sscanf(line_buffer, "%b", line_data[index]);
                $display("Line %0d: %b", index, line_data[index]);
            end else begin
                line_data[index] = 32'h00000000;
            end
        end

        for (index = 0; index < MAX_LINES; index = index + 1) begin
            miso_data[((MAX_LINES - index)*32 - 1) -: 32] = line_data[index];
        end
    end

  
    SPI_flashcontroller dut (
        .clk(clk),
        .reset(reset),
        .miso(miso),
        .mosi(mosi),
        .sclk(sclk),
        .cs(cs),
        .instruction(instruction),
        .dummy_pc(dummy_pc),
        .write_en(write_en),
        .prg_mode(prg_mode)
    );

   
    always #5 clk = ~clk;   

   
    initial begin
        clk = 0;
        reset = 1;
        miso = 1'bz;
        shift_reg = 32'h0;

        #20;
        reset = 0;

        #5000;
        $finish;
    end

   
    always @(posedge sclk) begin
        if (!cs) begin
            shift_reg <= {shift_reg[30:0], mosi};
            bit_cnt <= bit_cnt + 1;

            if (bit_cnt >= 33) begin
                miso <= miso_data[(MAX_LINES*32)-1];
                miso_data <= {miso_data[(MAX_LINES*32)-2:0], 1'b0};
            end
        end
    end

endmodule
