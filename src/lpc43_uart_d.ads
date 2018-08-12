
with HAL.UART;        use HAL.UART;
with LPC43xx.USART;   use LPC43xx.USART;

package lpc43_uart_d is

   type iUSART is limited new HAL.UART.UART_Port with private;

   overriding
   function Data_Size (This : iUSART) return HAL.UART.UART_Data_Size;

   overriding
   procedure Transmit
     (This    : in out iUSART;
      Data    : UART_Data_8b;
      Status  : out UART_Status;
      Timeout : Natural := 1000)
     with
       Pre'Class => Data_Size (This) = Data_Size_8b;

   overriding
   procedure Transmit
     (This    : in out iUSART;
      Data    : UART_Data_9b;
      Status  : out UART_Status;
      Timeout : Natural := 1000)
     with
       Pre'Class => Data_Size (This) = Data_Size_9b;

   overriding
   procedure Receive
     (This    : in out iUSART;
      Data    : out UART_Data_8b;
      Status  : out UART_Status;
      Timeout : Natural := 1000)
     with
       Pre'Class => Data_Size (This) = Data_Size_8b;

   overriding
   procedure Receive
     (This    : in out iUSART;
      Data    : out UART_Data_9b;
      Status  : out UART_Status;
      Timeout : Natural := 1000)
     with
       Pre'Class => Data_Size (This) = Data_Size_9b;


private

   type iUSART is limited new HAL.UART.UART_Port with null record;

end lpc43_uart_d;
