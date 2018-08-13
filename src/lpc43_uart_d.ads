
with HAL;             use HAL;
with HAL.UART;        use HAL.UART;
with LPC43xx.USART;   use LPC43xx.USART;

package lpc43_uart_d is

   type pUSART (peripheral : not null access LPC43xx.USART.USART_Peripheral)
     is limited new HAL.UART.UART_Port with private;

   type Baud_Rate_Presets is record
      DLM       : Natural range 0 .. 255;
      DLL       : Natural range 0 .. 255;
      DivAddVal : Natural range 0 .. 14;
      MulVal    : Natural range 1 .. 15;
   end record;

   BR1200 : constant Baud_Rate_Presets
     := (DLM => 34, DLL => 46, DivAddVal => 3, MulVal => 14);

   BR2400 : constant Baud_Rate_Presets
     := (DLM => 17, DLL => 23, DivAddVal => 3, MulVal => 14);

   BR4800 : constant Baud_Rate_Presets
     := (DLM => 8, DLL => 77, DivAddVal => 1, MulVal => 4);

   BR9600 : constant Baud_Rate_Presets
     := (DLM => 4, DLL => 9, DivAddVal => 2, MulVal => 7);

   BR19200 : constant Baud_Rate_Presets
     := (DLM => 2, DLL => 101, DivAddVal => 1, MulVal => 12);

   BR57600 : constant Baud_Rate_Presets
     := (DLM => 0, DLL => 161, DivAddVal => 3, MulVal => 8);

   BR115200 : constant Baud_Rate_Presets
     := (DLM => 0, DLL => 83, DivAddVal => 5, MulVal => 15);

   procedure Enable (This : pUSART) with Inline;

   procedure Disable (This : pUSART) with Inline;

   function Enabled (This : pUSART) return Boolean with Inline;

   procedure Put (This : in out pUSART; Data : out UInt8) with Inline;

   procedure Get (This : pUSART; Data : out UInt8) with Inline;

   function TX_Ready (This : pUSART) return Boolean with Inline;

   function RX_Ready (This : pUSART) return Boolean with Inline;


   procedure Set_Stop_Bits (This : in out pUSART; SBS : LCR_ENUM_1)
     with Inline;

   procedure Set_Word_Length (This : in out pUSART; WLS : LCR_ENUM)
     with Inline;

   procedure Set_Parity (This : in out pUSART; PS : LCR_ENUM_3)
     with Inline;

   procedure Set_Baud_Rate (This : in out pUSART; BRS : Baud_Rate_Presets)
     with Inline;

   function Status (This : in pUSART) return HAL.UART.UART_Status with Inline;

   procedure Clear_Status (This : in out pUSART; status_flag :
                           HAL.UART.UART_Status) with Inline;


   overriding
   function Data_Size (This : pUSART) return HAL.UART.UART_Data_Size;

   overriding
   procedure Transmit
     (This    : in out pUSART;
      Data    : UART_Data_8b;
      Status  : out UART_Status;
      Timeout : Natural := 1000)
     with
       Pre'Class => Data_Size (This) = Data_Size_8b;

   overriding
   procedure Transmit
     (This    : in out pUSART;
      Data    : UART_Data_9b;
      Status  : out UART_Status;
      Timeout : Natural := 1000)
     with
       Pre'Class => Data_Size (This) = Data_Size_9b;

   overriding
   procedure Receive
     (This    : in out pUSART;
      Data    : out UART_Data_8b;
      Status  : out UART_Status;
      Timeout : Natural := 1000)
     with
       Pre'Class => Data_Size (This) = Data_Size_8b;

   overriding
   procedure Receive
     (This    : in out pUSART;
      Data    : out UART_Data_9b;
      Status  : out UART_Status;
      Timeout : Natural := 1000)
     with
       Pre'Class => Data_Size (This) = Data_Size_9b;

private

   type pUSART (peripheral : not null access LPC43xx.USART.USART_Peripheral)
     is limited new HAL.UART.UART_Port with null record;

end lpc43_uart_d;
