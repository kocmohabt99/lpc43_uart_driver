
package body lpc43_uart_d is

   overriding
   function Data_Size (This : iUSART) return HAL.UART.UART_Data_Size
   is
   begin
      --  LPC only allows for 8 bit data packets or smaller (5,6, and 7)
      return HAL.UART.Data_Size_8b;
   end Data_Size;

end lpc43_uart_d;
