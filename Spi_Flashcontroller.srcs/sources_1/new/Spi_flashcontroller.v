`timescale 1ns / 1ps

module Spi_flash_controller (
    input  wire        clk,
    input  wire        reset,
    input  wire        miso,
    output wire        mosi,
    output wire        sclk,
    output reg         cs,
    output reg [31:0]  instruction,
    output reg [31:0]  dummy_pc,
    output reg [31:0]  dummy_data,
    output reg         write_en,
    output reg         prg_mode,
    output reg         cs_en,
    output[31:0] register
);

   
    reg phase;        // 1 = posedge-equivalent, 0 = negedge-equivalent

    always @(posedge clk or posedge reset) begin
        if (reset)
            phase <= 1'b0;
        else
            phase <= ~phase;
    end

       reg sclk_reg;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            sclk_reg <= 1'b0;
        end else begin
            if (cs == 1'b0) begin
                if (phase == 1'b1)
                    sclk_reg <= 1'b1;   
                else
                    sclk_reg <= 1'b0;   
            end else begin
                sclk_reg <= 1'b0;       
            end
        end
    end

    assign sclk = sclk_reg;
    localparam [2:0]
        IDLE       = 3'd0,
        SEND_CMD   = 3'd1,
        SEND_ADDR  = 3'd2,
        WAIT_READ  = 3'd3,
        READ_DATA  = 3'd4,
        END_STATE  = 3'd5;
    (*KEEP = "true"*)
    reg [2:0]  state;
    (*KEEP = "true"*)
    reg [31:0] shift_reg;
     (*KEEP = "true"*)
    reg [5:0]  bit_cnt;
    reg        wait_flag;
    reg [31:0] pc_counter;
    reg        mosi_reg;

     always @(posedge clk ) begin
        if (reset) begin
            state       <= IDLE;
            cs_en       <= 1'b0;
            bit_cnt     <= 6'd0;
            write_en    <= 1'b0;
            prg_mode    <= 1'b0;
            wait_flag   <= 1'b0;
            pc_counter  <= 32'd0;
            shift_reg   <= 32'h03000000;
            instruction <= 32'd0;
            dummy_pc    <= 32'd0;
            dummy_data  <= 32'd0;
        end
        else if (phase == 1'b1) begin   // posedge-eq
            write_en <= 1'b0;

            case (state)
                IDLE: begin
                    cs_en      <= 1'b0;
                    bit_cnt    <= 6'd33;
                    pc_counter <= 32'd0;
                    prg_mode   <= 1'b0;
                    state      <= SEND_CMD;
                end

                SEND_CMD: begin
                    cs_en   <= 1'b1;
                    bit_cnt <= bit_cnt - 1'b1;
                    if (bit_cnt == 6'd24)
                        state <= SEND_ADDR;
                end

                SEND_ADDR: begin
                    bit_cnt <= bit_cnt - 1'b1;
                    if (bit_cnt == 6'd1) begin
                        wait_flag <= 1'b0;
                        state     <= WAIT_READ;
                    end
                end

                WAIT_READ: begin
                    if (!wait_flag) begin
                        wait_flag <= 1'b1;
                        bit_cnt   <= 6'd31;
                        state     <= READ_DATA;
                    end
                end

                READ_DATA: begin
                    shift_reg <= {shift_reg[30:0], miso};
                    bit_cnt   <= bit_cnt - 1'b1;

                    if (bit_cnt == 6'd0) begin
                        dummy_data  <= shift_reg;
                        dummy_pc    <= pc_counter;
                        instruction <= shift_reg;
                        write_en    <= 1'b1;
                        pc_counter  <= pc_counter + 1;

                        if (shift_reg == 32'hFFFFFFFF)
                            state <= END_STATE;
                        else
                            bit_cnt <= 6'd31;
                    end
                end

                END_STATE: begin
                    cs_en    <= 1'b0;
                    prg_mode <= 1'b1;
                end
                default : state <=IDLE;
            endcase

            // command/address shifting
            if ((state == SEND_CMD || state == SEND_ADDR) && !cs)
                shift_reg <= {shift_reg[30:0], 1'b1};
        end
    end

       always @(posedge clk ) begin
        if (reset) begin
            cs       <= 1'b1;
            mosi_reg <= 1'b0;
        end
        else if (phase == 1'b0) begin   // negedge-eq
            if (cs_en) begin
                cs       <= 1'b0;
                mosi_reg <= shift_reg[31];
            end else begin
                cs <= 1'b1;
            end
        end
    end

    assign mosi = (~cs) ? mosi_reg : 1'b1;
    assign register = shift_reg;
endmodule
