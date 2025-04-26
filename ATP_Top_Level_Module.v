// ATP_Top_Level_Module.v
module ATP_Top_Level_Module(
    input clk,
    input reset,
    input user_touch,
    input scan_start,
    input [9:0] cash_inserted,
    output ack_printed
);

// Internal wires
wire prompt_display, scan_done, valid_note;
wire [15:0] voucher_id, cash_total, adjustment_amount;
wire excess_payment, short_payment;

// Module Instantiations
User_Interface_Module UIM (
    .clk(clk),
    .reset(reset),
    .user_touch(user_touch),
    .prompt_display(prompt_display)
);

Barcode_Scanner_Module BSM (
    .clk(clk),
    .reset(reset),
    .scan_start(scan_start),
    .voucher_id(voucher_id),
    .scan_done(scan_done)
);

Cash_Handling_Module CHM (
    .clk(clk),
    .reset(reset),
    .cash_inserted(cash_inserted),
    .valid_note(valid_note),
    .cash_total(cash_total)
);

Payment_Processing_Module PPM (
    .clk(clk),
    .reset(reset),
    .bill_amount(100), // Assuming fixed bill amount
    .paid_amount(cash_total),
    .excess_payment(excess_payment),
    .short_payment(short_payment),
    .adjustment_amount(adjustment_amount)
);

Acknowledgment_Module AM (
    .clk(clk),
    .reset(reset),
    .transaction_done(scan_done && valid_note),
    .ack_printed(ack_printed)
);

endmodule
