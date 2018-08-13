

package body lpc43_uart_d is

   overriding
   function Data_Size (This : pUSART) return HAL.UART.UART_Data_Size
   is
      pragma Unreferenced (This);
   begin
      --  LPC only allows for 8 bit data packets or smaller (5,6, and 7)
      return HAL.UART.Data_Size_8b;
   end Data_Size;


   --------------
   -- Transmit --
   --------------

   overriding
   procedure Transmit
     (This    : in out pUSART;
      Data    : HAL.UART.UART_Data_8b;
      Status  : out HAL.UART.UART_Status;
      Timeout : Natural := 1000)
   is
      pragma Unreferenced (Data, Status, Timeout);
   begin
      USART2_Periph.SCR.PAD := Character'Pos ('f');
   end Transmit;

   --------------
   -- Transmit --
   --------------

   overriding
   procedure Transmit
     (This    : in out pUSART;
      Data    : HAL.UART.UART_Data_9b;
      Status  : out HAL.UART.UART_Status;
      Timeout : Natural := 1000)
   is
      pragma Unreferenced (Data, Status, Timeout);
   begin
      Status := HAL.UART.Err_Error;
   end Transmit;

   -------------
   -- Receive --
   -------------

   overriding
   procedure Receive
     (This    : in out pUSART;
      Data    : out HAL.UART.UART_Data_8b;
      Status  : out HAL.UART.UART_Status;
      Timeout : Natural := 1000)
   is
      pragma Unreferenced (Data, Status, Timeout);
   begin
      Status := HAL.UART.Err_Error;
   end Receive;

   -------------
   -- Receive --
   -------------

   overriding
   procedure Receive
     (This    : in out pUSART;
      Data    : out HAL.UART.UART_Data_9b;
      Status  : out HAL.UART.UART_Status;
      Timeout : Natural := 1000)
   is
      pragma Unreferenced (Data, Status, Timeout);
   begin
      Status := HAL.UART.Err_Error;

   end Receive;

   --  iUSART2 : aliased pUSART (LPC43xx.USART.USART2_Periph'Access);

end lpc43_uart_d;
