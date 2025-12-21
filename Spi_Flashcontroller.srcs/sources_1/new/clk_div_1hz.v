module clk_div_1hz (
    input  wire clk_in,   // 50 MHz
    input  wire rst,
    output reg  clk_out    // 1 Hz
);

    // 50 MHz / (2 * 25_000_000) = 1 Hz
    reg [25:0] cnt;

    always @(posedge clk_in or posedge rst) begin
        if (rst) begin
            cnt     <= 0;
            clk_out <= 0;
        end else if (cnt == 25_000_000 - 1) begin
            cnt     <= 0;
            clk_out <= ~clk_out;
        end else begin
            cnt <= cnt + 1;
        end
    end
endmodule
