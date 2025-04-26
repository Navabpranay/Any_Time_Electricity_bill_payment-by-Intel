# Anytime Electricity Bill Payment (ATP)

## Team Details
- **Team Name:** Intelligent Insights
- **Team Size:** 3
- **College:** Malla Reddy College of Engineering and Technology

## Project Description
Anytime Electricity Bill Payment (ATP) is a system designed to allow customers to pay electricity bills 24/7 using various payment modes (Cash / DD / Cheque). The system captures the bill/voucher data, displays it to the user, handles cash in different denominations, validates notes, processes payments, and provides acknowledgment after successful transactions.

## Key Features
- Supports cash, DD, and cheque payments.
- Captures bill/voucher details using barcode scanning.
- Accepts only valid notes (₹10, ₹20, ₹50, ₹100, ₹200, ₹500).
- Rejects soiled, torn, wet, or oiled notes and coins.
- Handles excess payments (adjusted in future bills) and short payments (may lead to disconnection).
- Issues a transaction acknowledgment to customers.

## State Machine (FSM)
ATP follows a 5-state FSM:
1. **Idle State** – Waiting for user interaction.
2. **Prompt State** – Prompting for input on the touchscreen.
3. **Scan State** – Scanning voucher barcodes.
4. **Payment State** – Handling cash insertion and payment confirmation.
5. **Acknowledgment State** – Issuing acknowledgment after successful payment.

## Modules Implemented
- **User Interface Module:** Handles touchscreen and button interactions.
- **Barcode Scanner Module:** Captures barcode/voucher data.
- **Cash Handling Module:** Validates and accepts inserted cash.
- **Payment Processing Module:** Calculates bill adjustment, detects excess or short payments.
- **Acknowledgment Module:** Issues acknowledgment after successful transactions.
- **ATP System Module:** Top-level system integration of all modules.

## Approach
1. Basic understanding of ATP functionality.
2. Learned Verilog HDL language.
3. Created a block diagram and FSM.
4. Developed and tested code modules.
5. Created a complete Testbench for simulation.
6. Compiled and validated the design.
7. Documented the project thoroughly.
8. Uploaded the project to GitHub.

## Technologies Used
- **Language:** Verilog HDL
- **Tools:** ModelSim / Xilinx / Vivado (or any preferred FPGA simulation tool)

## Block Diagram
![image](https://github.com/user-attachments/assets/870a18cb-16d7-44ba-8b5b-95bed43af318)


## FSM Diagram
![image](https://github.com/user-attachments/assets/575f7dd3-aeb3-4bca-b9d1-58e1c8471267)


## Repository Link
🔗 [GitHub Repository](https://github.com/Navabpranay/Any_Time_Electricity_bill_payment-by-Intel)

## Screenshots
![image](https://github.com/user-attachments/assets/7fdee21b-91d5-4d3d-86fc-e16561dfb7a9)


## Output
![image](https://github.com/user-attachments/assets/1198230b-5f61-4cd4-8806-e10e70abf2fd)


## Results
- **Logic utilization:** Less than 1%
- **Number of Pins:** 177

---

*Built with ❤️ by Team Intelligent Insights*
