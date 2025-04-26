// Barcode_Scanner_Module.v
module Barcode_Scanner_Module(
    input clk,
    input reset,
    input scan_start,
    output reg [15:0] voucher_id,
    output reg scan_done
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        voucher_id <= 16'd0;
        scan_done <= 0;
    end else if (scan_start) begin
        // Simulate barcode scanning
        voucher_id <= 16'hABCD; // Dummy voucher ID
        scan_done <= 1;
    end else begin
        scan_done <= 0;
    end
end

endmodule
