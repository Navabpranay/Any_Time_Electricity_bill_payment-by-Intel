// Acknowledgment_Module.v
module Acknowledgment_Module(
    input clk,
    input reset,
    input transaction_done,
    output reg ack_printed
);

always @(posedge clk or posedge reset) begin
    if (reset)
        ack_printed <= 0;
    else if (transaction_done)
        ack_printed <= 1;
    else
        ack_printed <= 0;
end

endmodule
