`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:28 09/28/2010 
// Design Name: 
// Module Name:    lcd_pwr_on_init 
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
module lcd_pwr_on_init(CLK,
                       RESET,
                       wait240ns,
                       wait40us,
                       wait100us,
                       wait4ms,
                       wait15ms,
                       doPwrOnInit,
                       resetCount,
                       doCount,
                       lcdEnable,
                       dataOut,
                       initDone
                       );

   input CLK;
   input RESET;
   input wait240ns;
   input wait40us;
   input wait100us;
   input wait4ms;
   input wait15ms;
   input doPwrOnInit;

   output       resetCount;
   output       doCount;
   output       lcdEnable;
   output [3:0] dataOut;
   output       initDone;

   reg          resetCount;
   reg          doCount;
   reg          lcdEnable;
   reg [3:0]    dataOut;
   reg          initDone;
   
   // state flip-flops
   reg [4:0]     current_state;
   reg [4:0]     next_state;

   // state definitions
   parameter     READY = 0;
   parameter     FIFTEEN_MS_START = 1;
   parameter     FIFTEEN_MS_WAIT = 2;
   parameter     ONE_START = 3;
   parameter     ONE_WAIT = 4;
   parameter     TWO_START = 5;
   parameter     TWO_WAIT = 6;
   parameter     THREE_START = 7;
   parameter     THREE_WAIT = 8;
   parameter     FOUR_START = 9;
   parameter     FOUR_WAIT = 10;
   parameter     FIVE_START = 11;
   parameter     FIVE_WAIT = 12;
   parameter     SIX_START = 13;
   parameter     SIX_WAIT = 14;
   parameter     SEVEN_START = 15;
   parameter     SEVEN_WAIT = 16;
   parameter     EIGHT_START = 17;
   parameter     EIGHT_WAIT = 18;
   parameter     DONE = 19;

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
        initDone = 0;
	dataOut = 4'b0000;

        case (current_state)

          READY:
            begin
               doCount = 0;
            end
          
          FIFTEEN_MS_START:
            begin
               resetCount = 1;
               doCount = 1;
            end
          
          FIFTEEN_MS_WAIT:
            begin
               doCount = 1;
            end
          
          ONE_START:
            begin
               resetCount = 1;
               doCount = 1;
               lcdEnable = 1;
               dataOut = 4'b0011;
            end
          
          ONE_WAIT:
            begin
               doCount = 1;
               lcdEnable = 1;
               dataOut = 4'b0011;
            end
          
          TWO_START:
            begin
               resetCount = 1;
               doCount = 1;
               lcdEnable = 0;
            end
          
          TWO_WAIT:
            begin
               doCount = 1;
               lcdEnable = 0;
            end
          
          THREE_START:
            begin
               resetCount = 1;
               doCount = 1;
               lcdEnable = 1;
               dataOut = 4'b0011;
            end
          
          THREE_WAIT:
            begin
               doCount = 1;
               lcdEnable = 1;
               dataOut = 4'b0011;
            end
          
          FOUR_START:
            begin
               resetCount = 1;
               doCount = 1;
               lcdEnable = 0;
            end
          
          FOUR_WAIT:
            begin
               doCount = 1;
               lcdEnable = 0;
            end
          
          FIVE_START:
            begin
               resetCount = 1;
               doCount = 1;
               lcdEnable = 1;
               dataOut = 4'b0011;
            end
          
          FIVE_WAIT:
            begin
               doCount = 1;
               lcdEnable = 1;
               dataOut = 4'b0011;
            end
          
          SIX_START:
            begin
               resetCount = 1;
               doCount = 1;
               lcdEnable = 0;
            end
          
          SIX_WAIT:
            begin
               doCount = 1;
               lcdEnable = 0;
            end
          
          SEVEN_START:
            begin
               resetCount = 1;
               doCount = 1;
               lcdEnable = 1;
               dataOut = 4'b0010;
            end
          
          SEVEN_WAIT:
            begin
               doCount = 1;
               lcdEnable = 1;
               dataOut = 4'b0010;
            end
          
          EIGHT_START:
            begin
               resetCount = 1;
               doCount = 1;
               lcdEnable = 0;
            end
          
          EIGHT_WAIT:
            begin
               doCount = 1;
               lcdEnable = 0;
            end
          
          DONE:
            begin
               initDone = 1;
            end

	  default:
	    begin
	    end
	  
        endcase
     end

   // Next state
   always @ (current_state, doPwrOnInit, wait15ms, wait4ms, wait100us, wait40us, wait240ns)
     begin
        case (current_state)

          READY:
            begin
               if (doPwrOnInit)
                 next_state = FIFTEEN_MS_START;
               else
                 next_state = READY;
            end
          
          FIFTEEN_MS_START:
            begin
               next_state = FIFTEEN_MS_WAIT;
            end
          
          FIFTEEN_MS_WAIT:
            begin
               if (wait15ms)
                 next_state =  ONE_START;
               else
                 next_state = FIFTEEN_MS_WAIT;
            end
          
          ONE_START:
            begin
               next_state = ONE_WAIT;
            end
          
          ONE_WAIT:
            begin
               if (wait240ns)
                 next_state = TWO_START;
               else
                 next_state = ONE_WAIT;
            end
          
          TWO_START:
            begin
               next_state = TWO_WAIT;
            end
          
          TWO_WAIT:
            begin
               if (wait4ms)
                 next_state = THREE_START;
               else
                 next_state = TWO_WAIT;
            end
          
          THREE_START:
            begin
               next_state = THREE_WAIT;
            end
          
          THREE_WAIT:
            begin
               if (wait240ns)
                 next_state = FOUR_START;
               else
                 next_state = THREE_WAIT;
            end
          
          FOUR_START:
            begin
               next_state = FOUR_WAIT;
            end
          
          FOUR_WAIT:
            begin
               if (wait100us)
                 next_state = FIVE_START;
               else
                 next_state = FOUR_WAIT;
            end
          
          FIVE_START:
            begin
               next_state = FIVE_WAIT;
            end
          
          FIVE_WAIT:
            begin
               if (wait240ns)
                 next_state = SIX_START;
               else
                 next_state = FIVE_WAIT;
            end
          
          SIX_START:
	    begin
               next_state = SIX_WAIT;
	    end
          
          SIX_WAIT:
            begin
               if (wait40us)
                 next_state = SEVEN_START;
               else
                 next_state = SIX_WAIT;
            end
          
          SEVEN_START:
            begin
               next_state = SEVEN_WAIT;
            end
          
          SEVEN_WAIT:
            begin
               if (wait240ns)
                 next_state = EIGHT_START;
               else
                 next_state = SEVEN_WAIT;
            end
          
          EIGHT_START:
            begin
               next_state = EIGHT_WAIT;
            end
          
          EIGHT_WAIT:
            begin
               if (wait40us)
                 next_state = DONE;
               else
                 next_state = EIGHT_WAIT;
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
