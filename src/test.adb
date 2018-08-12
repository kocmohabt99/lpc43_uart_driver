with Last_Chance_Handler;  pragma Unreferenced (Last_Chance_Handler);
--  The "last chance handler" is the user-defined routine that is called when
--  an exception is propagated. We need it in the executable, therefore it
--  must be somewhere in the closure of the context clauses.

with LPC43xx.SCU;         use LPC43xx.SCU;
with LPC43xx.GPIO_PORT;   use LPC43xx.GPIO_PORT;
with LPC43xx.CCU1;        use LPC43xx.CCU1;
with LPC43xx.CCU2;        use LPC43xx.CCU2;
with LPC43xx.USART;       use LPC43xx.USART;
with Ada.Real_Time;       use Ada.Real_Time;
with Ada.Text_IO;         use Ada.Text_IO;

with lpc43_uart_d;        use lpc43_uart_d;

procedure test is

   Period : constant Time_Span := Milliseconds (1000);  -- arbitrary

   Next_Release : Time := Clock;

   procedure Initialize_LEDs;
   --  Enables the clock and configures the GPIO pins and port connected to the
   --  LEDs on the target board so that we can drive them via GPIO commands.
   --  Note that the STM32.Board package provides a procedure (with the same
   --  name) to do this directly, for convenience, but we do not use it here
   --  for the sake of illustration.

   procedure Initialize_LEDs is
      --  Configuration : GPIO_Port_Configuration;
   begin
      --  Enable_Clock (All_LEDs);

      --  Configuration.Mode        := Mode_Out;
      --  Configuration.Output_Type := Push_Pull;
      --  Configuration.Speed       := Speed_100MHz;
      --  Configuration.Resistors   := Floating;
      --  Configure_IO (All_LEDs, Configuration);


      --  SFSP2 ranges from 0 to 2 pointing to pins 0 to 2

      SCU_Periph.SFSP2 (0).EPUN := Enable_Pull_Up;
      SCU_Periph.SFSP2 (0).EPD := Disable_Pull_Down;
      SCU_Periph.SFSP2 (0).EZI := Enable_Input_Buffer;
      SCU_Periph.SFSP2 (0).MODE := Function_4;

      SCU_Periph.SFSP2 (1).EPUN := Enable_Pull_Up;
      SCU_Periph.SFSP2 (1).EPD := Disable_Pull_Down;
      SCU_Periph.SFSP2 (1).EZI := Enable_Input_Buffer;
      SCU_Periph.SFSP2 (1).MODE := Function_4;

      SCU_Periph.SFSP2 (2).EPUN := Enable_Pull_Up;
      SCU_Periph.SFSP2 (2).EPD := Disable_Pull_Down;
      SCU_Periph.SFSP2 (2).EZI := Enable_Input_Buffer;
      SCU_Periph.SFSP2 (2).MODE := Function_4;

      GPIO_PORT_Periph.DIR (5) := (As_Array => True,
                        Arr => (0 => True, 1 => True, 2 => True, others => <>));
      GPIO_PORT_Periph.CLR (5) := (As_Array => True,
                        Arr => (0 => True, 1 => True, 2 => True, others => <>));

      --  SFSP2 ranges from 0 to 6 pointing to pins 6 to 12

      SCU_Periph.SFSP2_2 (4).EPUN := Enable_Pull_Up;
      SCU_Periph.SFSP2_2 (4).EPD := Disable_Pull_Down;
      SCU_Periph.SFSP2_2 (4).EZI := Enable_Input_Buffer;
      SCU_Periph.SFSP2_2 (4).MODE := Function_0_Default;

      GPIO_PORT_Periph.DIR (0) := (As_Array => True,
                                             Arr => (14 => True, others => <>));
      GPIO_PORT_Periph.CLR (0) := (As_Array => True,
                                   Arr => (14 => True, others => <>));

      --  SFSP2 ranges from 0 to 6 pointing to pins 6 to 12

      SCU_Periph.SFSP2_2 (5).EPUN := Enable_Pull_Up;
      SCU_Periph.SFSP2_2 (5).EPD := Disable_Pull_Down;
      SCU_Periph.SFSP2_2 (5).EZI := Enable_Input_Buffer;
      SCU_Periph.SFSP2_2 (5).MODE := Function_0_Default;

      SCU_Periph.SFSP2_2 (6).EPUN := Enable_Pull_Up;
      SCU_Periph.SFSP2_2 (6).EPD := Disable_Pull_Down;
      SCU_Periph.SFSP2_2 (6).EZI := Enable_Input_Buffer;
      SCU_Periph.SFSP2_2 (6).MODE := Function_0_Default;

      GPIO_PORT_Periph.DIR (1) := (As_Array => True,
                                 Arr => (11 => True, 12 => True, others => <>));
      GPIO_PORT_Periph.CLR (1) := (As_Array => True,
                                 Arr => (11 => True, 12 => True, others => <>));

   end Initialize_LEDs;

   procedure Initialize_UART;
   --  Enables the clock and configures the GPIO pins and port connected to the
   --  LEDs on the target board so that we can drive them via GPIO commands.
   --  Note that the STM32.Board package provides a procedure (with the same
   --  name) to do this directly, for convenience, but we do not use it here
   --  for the sake of illustration.

   procedure Initialize_UART is

   begin
      --  Initialized := True;
      SCU_Periph.SFSP7 (1).EPD := Disable_Pull_Down;
      SCU_Periph.SFSP7 (1).EPUN := Disable_Pull_Up;
      SCU_Periph.SFSP7 (1).MODE := Function_6;

      SCU_Periph.SFSP7 (2).EPD := Disable_Pull_Down;
      SCU_Periph.SFSP7 (2).EPUN := Disable_Pull_Up;
      SCU_Periph.SFSP7 (2).EZI := Enable_Input_Buffer;
      SCU_Periph.SFSP7 (2).ZIF := Disable_Input_Glitch;
      SCU_Periph.SFSP7 (2).MODE := Function_6;

      CCU1_Periph.CLK_M4_USART2_CFG.RUN := Enabled;
      CCU1_Periph.CLK_M4_USART2_CFG.AUTO := Enabled;
      CCU1_Periph.CLK_M4_USART2_CFG.WAKEUP := Enabled;

      CCU2_Periph.CLK_APB2_USART2_CFG.RUN := Enabled;
      CCU2_Periph.CLK_APB2_USART2_CFG.AUTO := Enabled;
      CCU2_Periph.CLK_APB2_USART2_CFG.WAKEUP := Enabled;

      --  FIFO Control Register (FCR)
      --  FIFO Enable (FIFOEN)
      USART2_Periph.FCR.FIFOEN := Enabled;
      --  Transmit FIFO Reset (TXFIFORES)
      USART2_Periph.FCR.TXFIFORES := Clear;
      --  Receive FIFO Reset (RXFIFORES)
      USART2_Periph.FCR.RXFIFORES := Clear;

      --  Transmit Enable Register
      --  Transmit Enable (TXEN)
      USART2_Periph.TER.TXEN := False;  --  Changed value from '0' to 'False'

      --  Interrupt Enable Register (IER)
      --  Receiver Buffer Register Interrupt Enable (RBRIE)
      USART2_Periph.IER.RBRIE := Disable;
      --  THRE Interrupt Enable (THREIE)
      USART2_Periph.IER.THREIE := Disable;
      --  Receive Interrupt Enable (RXIE)
      USART2_Periph.IER.RXIE := Disable;
      --  Auto-Baud End Of Interrupt Enable (ABEOINTEN)
      USART2_Periph.IER.ABEOINTEN := Disable;
      --  Auto-Baud Time Out Interrupt Enable (ABTOINTEN)
      USART2_Periph.IER.ABTOINTEN := Disable;

      --  Line Control Register (LCR)
      --  Word Length Select (WLS)
      USART2_Periph.LCR.WLS := Val_8_Bit_Character_Leng;
      --  Stop Bit Select (SBS)
      USART2_Periph.LCR.SBS := Val_2_Stop_Bits_1;
      --  Parity Enable (PE)
      USART2_Periph.LCR.PE := Disable_Parity_Gener;
      --  Parity Select (PS)
      USART2_Periph.LCR.PS := Odd_Parity;
      --  Break Control (BC)
      USART2_Periph.LCR.BC := Disabled;
      --  Divisor Latch Access Bit (DLAB)
      USART2_Periph.LCR.DLAB := Disabled;

      --  Auto-Baud Control Register (ACR)
      --  Start Bit
      USART2_Periph.ACR.START := Stop;
      --  Auto-Baud Mode Select Bit
      USART2_Periph.ACR.MODE := Mode_0;
      USART2_Periph.ACR.AUTORESTART := No_Restart;
      --  Auto-Baud End Of Interrupt Clear Bit
      USART2_Periph.ACR.ABEOINTCLR := No_Effect;
      --  Auto-Baud Time Out Interrupt Clear Bit
      USART2_Periph.ACR.ABTOINTCLR := No_Effect;

      --  RS485 Control
      --  Normal Multidrop Mode Enable
      USART2_Periph.RS485CTRL.NMMEN := Disabled;
      --  Receive Disable
      USART2_Periph.RS485CTRL.RXDIS := Enabled;
      --  Auto Address Detect Enable
      USART2_Periph.RS485CTRL.AADEN := Disabled;
      --  Direction Control
      USART2_Periph.RS485CTRL.DCTRL := Disabled;
      --  Direction Control Pin Polarity
      USART2_Periph.RS485CTRL.OINV := Low;

      --  RS485 Delay Value Register
      USART2_Periph.RS485DLY.DLY := 0;

      --  RS485 Address Match Register
      USART2_Periph.RS485ADRMATCH.ADRMATCH := 0;
      --  Divisor Latch Access Bit (DLAB)
      USART2_Periph.LCR.DLAB := Enabled;
      --  Divisor Latch LSB
      USART2_Periph.DLL.DLLSB := 83;
      --  Divisor Latch MSB
      USART2_Periph.DLM.DLMSB := 0;
      --  Divisor Latch Access Bit (DLAB)
      USART2_Periph.LCR.DLAB := Disabled;

      --  Fractional Divider Register (FDR)
      --  Baud Rate pre-scaler Multiplier Value

      --  Baud Rate Generation follows equation 6 on page 1135 of UM10503.
      --  Peripheral clock for USART2 is 204 MHz

      USART2_Periph.FDR.MULVAL := 15;

      USART2_Periph.FDR.DIVADDVAL := 5;
      --  Baud Rate pre-scaler Divisor Value
      USART2_Periph.TER.TXEN := True;  --  Changed value from '1' to 'True'

   end Initialize_UART;

begin
   Initialize_UART;
   Initialize_LEDs;


   loop
      --  Toggle (All_LEDs);

      --  P2_0  -> GPIO(5)[0]  -> RGB-R
      --  P2_1  -> GPIO(5)[1]  -> RGB-G
      --  P2_2  -> GPIO(5)[2]  -> RGB-B
      --  P2_10 -> GPIO(0)[14] -> LED1
      --  P2_11 -> GPIO(1)[11] -> LED2
      --  P2_12 -> GPIO(1)[12] -> LED3

      GPIO_PORT_Periph.NOT_k (5) := (As_Array => True,
                                 Arr => (0 => True, others => <>));

      Put_Line ("Hello World!");

      Next_Release := Next_Release + Period;
      delay until Next_Release;
   end loop;
end test;
