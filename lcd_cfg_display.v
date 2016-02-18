`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:28 09/28/2010 
// Design Name: 
// Module Name:    lcd_cfg_display 
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
module lcd_cfg_display(CLK,
                       RESET,
                       writeByteDone,
                       writeByteReady,
                       wait2ms,
                       doCfgDisplay,
                       resetCount,
                       doCount,
                       dataOut,
                       doWriteByte,
                       cfgDisplayDone
                       );

   input CLK;
   input RESET;
   input writeByteDone;
   input writeByteReady;
   input wait2ms;
   input doCfgDisplay;

   output       resetCount;
   output       doCount;
   output [7:0] dataOut;
   output       doWriteByte;
   output       cfgDisplayDone;

   reg          resetCount;
   reg          doCount;
   reg [7:0]    dataOut;
   reg          doWriteByte;
   reg          cfgDisplayDone;

   // state flip-flops
   reg [2:0]     current_state;
   reg [2:0]     next_state;

   // state definitions
   parameter     READY = 0;
   parameter     FUNCTION_SET = 1;
   parameter     ENTRY_SET = 2;
   parameter     SET_DISPLAY = 3;
   parameter     CLEAR_DISPLAY = 4;
   parameter     TWO_MS_START = 5;
   parameter     TWO_MS_WAIT = 6;
   parameter     DONE = 7;

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
        cfgDisplayDone = 0;
	dataOut = 8'h00;
	doWriteByte = 0;
	resetCount = 0;
	doCount = 0;
	
        case (current_state)

          READY:
            begin
            end
          
          FUNCTION_SET:
            begin
               dataOut = 8'h28;
               doWriteByte = 1;
            end
          
          ENTRY_SET:
            begin
               dataOut = 8'h06;
               doWriteByte = 1;
            end
          
          SET_DISPLAY:
            begin
               dataOut = 8'h0c;
               doWriteByte = 1;
            end
          
          CLEAR_DISPLAY:
            begin
               dataOut = 8'h01;
               doWriteByte = 1;
            end
          
          TWO_MS_START:
            begin
               resetCount = 1;
               doCount = 1;
            end
          
          TWO_MS_WAIT:
            begin
               doCount = 1;
            end
          
          DONE:
            begin
               cfgDisplayDone = 1;
            end

	  default:
	    begin
	    end

        endcase
     end

   // Next state
   always @ (current_state, doCfgDisplay, writeByteReady, writeByteDone, wait2ms)
     begin
        case (current_state)

          READY:
            begin
               if (doCfgDisplay & writeByteReady)
                 next_state = FUNCTION_SET;
               else
                 next_state = READY;
            end
          
          FUNCTION_SET:
            begin
               if (writeByteDone)
                 next_state = ENTRY_SET;
               else
                 next_state = FUNCTION_SET;
            end
          
          ENTRY_SET:
            begin
               if (writeByteDone)
                 next_state = SET_DISPLAY;
               else
                 next_state = ENTRY_SET;
            end
          
          SET_DISPLAY:
            begin
               if (writeByteDone)
                 next_state = CLEAR_DISPLAY;
               else
                 next_state = SET_DISPLAY;
            end
          
          CLEAR_DISPLAY:
            begin
               if (writeByteDone)
                 next_state = TWO_MS_START;
               else
                 next_state = CLEAR_DISPLAY;
            end
          
          TWO_MS_START:
            begin
               next_state = TWO_MS_WAIT;
            end
          
          TWO_MS_WAIT:
            begin
               if (wait2ms)
                 next_state = DONE;
               else
                 next_state = TWO_MS_WAIT;
            end
          
          DONE:
            begin
               next_state = DONE;
            end

	  default:
	    begin
               next_state = READY;
	    end

        endcase
     end
endmodule
