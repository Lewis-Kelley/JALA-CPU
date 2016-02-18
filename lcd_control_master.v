`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:28 09/28/2010 
// Design Name: 
// Module Name:    lcd_control_master 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module lcd_control_master(CLK,
                          RESET,
                          CLEAR,
                          initDone,
                          cfgDisplayDone,
                          writeByteDone,
                          Write,
                          startAddress,
                          Count,
                          row,
                          doPwrOnInit,
                          doCfgDisplay,
                          doWriteByte,
                          lcdRegSel,
                          currentAddress,
                          dataSel,
                          commandOut,
                          lcdReady
                          );

   input       CLK;
   input       RESET;
   input       CLEAR;
   input       initDone;
   input       cfgDisplayDone;
   input       writeByteDone;
   input       Write;
   input [3:0] startAddress;
   input [3:0] Count;
   input       row;
   

   output       doPwrOnInit;
   output       doCfgDisplay;
   output       doWriteByte;
   output       lcdRegSel;
   output [3:0] currentAddress;
   output [1:0] dataSel;
   output [7:0] commandOut;
   output       lcdReady;
   
   reg          doPwrOnInit;
   reg          doCfgDisplay;
   reg          doWriteByte;
   reg          lcdRegSel;
   reg [3:0]    currentAddress;
   reg [1:0]    dataSel;
   reg [7:0]    commandOut;
   reg          lcdReady;

   // state flip-flops
   reg [2:0]     current_state;
   reg [2:0]     next_state;
   reg [3:0]     n;
   reg [3:0]     next_n;
   reg [3:0]     next_address;

   // state definitions
   parameter     WAIT = 0;
   parameter     PWR_ON_INIT = 1;
   parameter     CFG_DISPLAY = 2;
   parameter     DISPATCH = 3;
   parameter     SET_ADDR = 4;
   parameter     WRITE_BYTE = 5;
   parameter     NEXT_BYTE = 6;

   // update current state
   always @ (posedge CLK, posedge RESET, posedge CLEAR)
     begin
        if (RESET)
          begin
             current_state = PWR_ON_INIT;
             currentAddress = 4'b0000;
             n = 4'b0000;
          end
        else if (CLEAR)
          begin
             current_state = CFG_DISPLAY;
             currentAddress = 4'b0000;
             n = 4'b0000;
          end
        else
          begin
             current_state = next_state;
             currentAddress = next_address;
             n = next_n;
          end
     end

   // Output signals
   always @ (current_state, startAddress, currentAddress, n, row)
     begin
        doPwrOnInit = 0;
        doCfgDisplay = 0;
        doWriteByte = 0;
        lcdReady = 0;
        dataSel = 2'b00;
        lcdRegSel = 0;
        next_address = currentAddress;
        next_n = n;
        commandOut = 8'b00000000;

        case (current_state)

          WAIT:
            begin
               next_address = 4'b0000;
            end

          PWR_ON_INIT:
            begin
               doPwrOnInit = 1;
               dataSel = 2'b00;
            end

          CFG_DISPLAY:
            begin
               doCfgDisplay = 1;
               dataSel = 2'b01;
            end

          DISPATCH:
            begin
               lcdReady = 1;
            end

          SET_ADDR:
            begin
               doWriteByte = 1;
               lcdRegSel = 0;
               next_address = startAddress;
               next_n = 0;
               dataSel = 2'b10;
               commandOut = {1'b1, row, 2'b00, startAddress};
            end

          WRITE_BYTE:
            begin
               doWriteByte = 1;
               lcdRegSel = 1;
               dataSel = 2'b11;
            end
          
          NEXT_BYTE:
            begin
               next_address = currentAddress+1;
               next_n = n+1;
            end
          
          default:
            begin
            end

        endcase
     end

   // Next state
   always @ (current_state, initDone, cfgDisplayDone, Write, writeByteDone, n, Count)
     begin
        case (current_state)

          WAIT:
            begin
                 next_state = WAIT;
            end

          PWR_ON_INIT:
            begin
               if (initDone)
                 next_state = CFG_DISPLAY;
               else
                 next_state = PWR_ON_INIT;
            end

          CFG_DISPLAY:
            begin
               if (cfgDisplayDone)
                 next_state = DISPATCH;
               else
                 next_state = CFG_DISPLAY;
            end

          DISPATCH:
            begin
               if (Write)
                 next_state = SET_ADDR;
               else
                 next_state = DISPATCH;
            end

          SET_ADDR:
            begin
               if (writeByteDone)
                 next_state = WRITE_BYTE;
               else
                 next_state = SET_ADDR;
            end

          WRITE_BYTE:
            begin
               if (writeByteDone)
                 next_state = NEXT_BYTE;
               else
                 next_state = WRITE_BYTE;
            end
          
          NEXT_BYTE:
            begin
               if (n >= Count)
                 next_state = DISPATCH;
               else
                 next_state = WRITE_BYTE;
            end
          
          default:
            begin
                 next_state = WAIT;
            end

        endcase
     end
endmodule
