`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:28 09/28/2010 
// Design Name: 
// Module Name:    lcd_write_byte 
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
module lcd_write_byte(CLK,
                      RESET,
                      wait240ns,
                      wait1us,
                      wait40us,
                      doWriteByte,
                      resetCount,
                      doCount,
                      lcdEnable,
                      nibbleSel,
                      writeByteDone,
                      writeByteReady
                      );

   input CLK;
   input RESET;
   input wait240ns;
   input wait1us;
   input wait40us;
   input doWriteByte;
   
   output resetCount;
   output doCount;
   output lcdEnable;
   output nibbleSel;
   output writeByteDone;
   output writeByteReady;

   reg resetCount;
   reg doCount;
   reg lcdEnable;
   reg nibbleSel;
   reg writeByteDone; 
   reg writeByteReady;
  
   // state flip-flops
   reg [3:0]     current_state;
   reg [3:0]     next_state;

   // state definitions
   parameter     READY = 0;
   parameter     HIGH_SETUP_START = 1;
   parameter     HIGH_SETUP_DONE = 2;
   parameter     HIGH_HOLD_START = 3;
   parameter     HIGH_HOLD_WAIT = 4;
   parameter     ONE_US_START = 5;
   parameter     ONE_US_WAIT = 6;
   parameter     LOW_SETUP_START = 7;
   parameter     LOW_SETUP_DONE = 8;
   parameter     LOW_HOLD_START = 9;
   parameter     LOW_HOLD_WAIT = 10;
   parameter     FORTY_US_START = 11;
   parameter     FORTY_US_WAIT = 12;
   parameter     DONE = 13;

   // update current state
   always @ (posedge CLK, posedge RESET)
     begin
        if (RESET)
          current_state = READY;
        else
          current_state = next_state;
     end

   // Output signals
   always @ (current_state)
     begin
        resetCount = 0;
        doCount = 0;
        lcdEnable = 0;
        writeByteDone = 0;
        writeByteReady = 0;
        nibbleSel = 0;

        case (current_state)

          READY:
            begin
               writeByteReady = 1;
            end

          HIGH_SETUP_START:
            begin
               lcdEnable = 0;
               nibbleSel = 1;
            end

          HIGH_SETUP_DONE:
            begin
               lcdEnable = 0;
               nibbleSel = 1;
            end

          HIGH_HOLD_START:
            begin
               resetCount = 1;
               doCount = 1;
               lcdEnable = 1;
               nibbleSel = 1;
            end

          HIGH_HOLD_WAIT:
            begin
               doCount = 1;
               lcdEnable = 1;
               nibbleSel = 1;
            end

          ONE_US_START:
            begin
               resetCount = 1;
               doCount = 1;
            end

          ONE_US_WAIT:
            begin
               doCount = 1;
            end

          LOW_SETUP_START:
            begin
               lcdEnable = 0;
               nibbleSel = 0;
            end

          LOW_SETUP_DONE:
            begin
               lcdEnable = 0;
               nibbleSel = 0;
            end

          LOW_HOLD_START:
            begin
               resetCount = 1;
               doCount = 1;
               lcdEnable = 1;
               nibbleSel = 0;
            end

          LOW_HOLD_WAIT:
            begin
               doCount = 1;
               lcdEnable = 1;
               nibbleSel = 0;
            end

          FORTY_US_START:
            begin
               resetCount = 1;
               doCount = 1;
            end

          FORTY_US_WAIT:
            begin
               doCount = 1;
            end

          DONE:
            begin
               writeByteDone = 1;
            end

          default:
            begin
            end

        endcase
     end

   // Next state
   always @ (current_state, doWriteByte, wait240ns, wait1us, wait40us)
     begin
        case (current_state)

          READY:
            begin
               if (doWriteByte)
                 next_state = HIGH_SETUP_START;
               else
                 next_state = READY;
            end

          HIGH_SETUP_START:
            begin
               next_state = HIGH_SETUP_DONE;
            end

          HIGH_SETUP_DONE:
            begin
               next_state = HIGH_HOLD_START;
            end

          HIGH_HOLD_START:
            begin
               next_state = HIGH_HOLD_WAIT;
            end

          HIGH_HOLD_WAIT:
            begin
               if (wait240ns)
                 next_state = ONE_US_START;
               else
                 next_state = HIGH_HOLD_WAIT;
            end

          ONE_US_START:
            begin
               next_state = ONE_US_WAIT;
            end

          ONE_US_WAIT:
            begin
               if (wait1us)
                 next_state = LOW_SETUP_START;
               else
                 next_state = ONE_US_WAIT;
            end

          LOW_SETUP_START:
            begin
               next_state = LOW_SETUP_DONE;
            end

          LOW_SETUP_DONE:
            begin
               next_state = LOW_HOLD_START;
            end

          LOW_HOLD_START:
            begin
               next_state = LOW_HOLD_WAIT;
            end

          LOW_HOLD_WAIT:
            begin
               if (wait240ns)
                 next_state = FORTY_US_START;
               else
                 next_state = LOW_HOLD_WAIT;
            end

          FORTY_US_START:
            begin
               next_state = FORTY_US_WAIT;
            end

          FORTY_US_WAIT:
            begin
               if (wait40us)
                 next_state = DONE;
               else
                 next_state = FORTY_US_WAIT;
            end

          DONE:
            begin
               next_state = READY;
            end

          default:
            begin
               next_state = READY;
            end

        endcase
     end
endmodule
