module BULK_ERASE(
    input clock,
    input MISO,
    output MOSI,
    output SS,
    output SCK,
    output hold,
    output we
);

// Command Codes
parameter [7:0] WREN = 8'b0000_0110;
parameter [7:0] DUMMY = 8'b1111_1111;
parameter [7:0] BULK_ERASE = 8'hC7;
assign hold = 1'b1;
assign we = 1'b1;
reg [14:0] counter = 15'b0;

always @ (posedge clock)
    counter <= counter + 1;

assign SCK = counter[14];

reg [31:0] curr_word = {DUMMY, WREN, DUMMY, BULK_ERASE};
reg [31:0] SS_stack = {8'b1111_1111, 8'b0000_0000, 8'b1111_1111, 8'b0000_0000};

always @(negedge SCK) begin
    curr_word <= {curr_word[30:0], 1'b1};
    SS_stack <= {SS_stack[30:0], 1'b1};
end

assign MOSI = curr_word[31];
assign SS = SS_stack[31];

endmodule