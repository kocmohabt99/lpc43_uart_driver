with Last_Chance_Handler;  pragma Unreferenced (Last_Chance_Handler);
--  The "last chance handler" is the user-defined routine that is called when
--  an exception is propagated. We need it in the executable, therefore it
--  must be somewhere in the closure of the context clauses.

with LPC43xx;             use LPC43xx;
with LPC43xx.SCU;         use LPC43xx.SCU;
with LPC43xx.GPIO_PORT;   use LPC43xx.GPIO_PORT;
with LPC43xx.CCU1;        use LPC43xx.CCU1;
with LPC43xx.CCU2;        use LPC43xx.CCU2;
with LPC43xx.USART;       use LPC43xx.USART;
with Ada.Real_Time;       use Ada.Real_Time;
--  with Ada.Text_IO;         use Ada.Text_IO;

with HAL;                 use HAL;
with HAL.UART;            use HAL.UART;
with lpc43_uart_d;        use lpc43_uart_d;

with System;              use System;

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

   procedure Initialize_UART2;

   procedure Initialize_UART2 is

   begin

      --  Start chip_uart_init

      CCU1_Periph.CLK_M4_USART2_CFG.AUTO := Enabled;
      CCU1_Periph.CLK_M4_USART2_CFG.WAKEUP := Enabled;
      CCU1_Periph.CLK_M4_USART2_CFG.RUN := Enabled;

      USART2_Periph.FCR.FIFOEN := Enabled;
      USART2_Periph.FCR.TXFIFORES := Clear;
      USART2_Periph.FCR.RXFIFORES := Clear;

      USART2_Periph.TER.TXEN := False;

      USART2_Periph.IER.RBRIE := Disable;
      USART2_Periph.IER.THREIE := Disable;
      USART2_Periph.IER.RXIE := Disable;
      USART2_Periph.IER.ABEOINTEN := Disable;
      USART2_Periph.IER.ABTOINTEN := Disable;

      USART2_Periph.LCR.WLS := Val_5_Bit_Character_Leng;
      USART2_Periph.LCR.SBS := Val_1_Stop_Bit;
      USART2_Periph.LCR.PE := Disable_Parity_Gener;
      USART2_Periph.LCR.PS := Odd_Parity;
      USART2_Periph.LCR.BC := Disabled;
      USART2_Periph.LCR.DLAB := Disabled;

      USART2_Periph.RS485CTRL.NMMEN := Disabled;
      USART2_Periph.RS485CTRL.RXDIS := Enabled;
      USART2_Periph.RS485CTRL.AADEN := Disabled;
      USART2_Periph.RS485CTRL.DCTRL := Disabled;
      USART2_Periph.RS485CTRL.OINV := Low;

      USART2_Periph.RS485DLY.DLY := 0;
      USART2_Periph.RS485ADRMATCH.ADRMATCH := 0;


      USART2_Periph.LCR.WLS := Val_8_Bit_Character_Leng;
      USART2_Periph.LCR.SBS := Val_1_Stop_Bit;
      --  USART2_Periph.LCR.SBS := Val_2_Stop_Bits_1;
      USART2_Periph.LCR.PE := Disable_Parity_Gener;

      USART2_Periph.FDR.DIVADDVAL := 0;  --  Modified to 5 instead of 0
      USART2_Periph.FDR.MULVAL := 1;  --  Modified to 15 instead of 1

      --  end chip_uart_init

      --  start chip_uart_setbaud

      USART2_Periph.LCR.DLAB := Enabled;
      USART2_Periph.DLL.DLLSB := 111;  --  Modified to 83 from 111
      USART2_Periph.DLM.DLMSB := 0;
      USART2_Periph.LCR.DLAB := Disabled;

      --  end chip_uart_setbaud


      USART2_Periph.FCR.FIFOEN := Enabled;
      USART2_Periph.FCR.RXTRIGLVL := Level_0;

      USART2_Periph.TER.TXEN := True;

      SCU_Periph.SFSP7 (1).EPD := Enable_Pull_Down;
      SCU_Periph.SFSP7 (1).EPUN := Disable_Pull_Up;
      SCU_Periph.SFSP7 (1).MODE := Function_6;

      SCU_Periph.SFSP7 (2).EPD := Disable_Pull_Down;
      SCU_Periph.SFSP7 (2).EPUN := Disable_Pull_Up;
      SCU_Periph.SFSP7 (2).EZI := Enable_Input_Buffer;
      SCU_Periph.SFSP7 (2).ZIF := Disable_Input_Glitch;
      SCU_Periph.SFSP7 (2).MODE := Function_6;

   end Initialize_UART2;

   procedure dummy (pUART : in out pUSART);

   procedure dummy (pUART : in out pUSART) is
      pragma Unreferenced (pUART);
   begin
      USART2_Periph.SCR.PAD := Character'Pos ('b');
   end dummy;

   USART2_Base : constant System.Address :=
     System'To_Address (16#400C1000#);  --  Comes from lpc43xx.svd

   Internal_USART2 : aliased Internal_USART
     with Import, Volatile, Address => USART2_Base;
   --  Belongs in lpc43xx.device (NOT IMPLEMENTED)

   USART_2 : aliased pUSART (Internal_USART2'Access);
   --  Belongs in lpc43xx.device (NOT IMPLEMENTED)


   --  pragma Unreferenced (USART_2, A, A_status);

   B : UART_Data_8b (0 .. 7);
   --  LEDs : array (0 .. 5) of Boolean := (others => False);
   A : constant UART_Data_8b (0 .. 7) := (0, 1, 2, 3, 4, 5, 6, 7);
   --  A : UART_Data_8b (0 .. 1) := (64, 64);
   --  A : UART_Data_8b (0 .. 0);
   --  B : constant UART_Data_8b (0 .. 3) := (84, 82, 85, 69);
   --  C : constant UART_Data_8b (0 .. 4) := (70, 65, 76, 83, 69);
   --  C : constant UART_Data_8b (0 .. 2) := (78, 79, 33);
   A_status : UART_Status := Ok;
   --  current_status : Boolean;

begin

   Initialize_UART2;
   Initialize_LEDs;
   Transmit (USART_2, A, A_status, 100);
   --  current_status := USART_2.RX_Ready;
   loop
      --  Toggle (All_LEDs);

      --  P2_0  -> GPIO(5)[0]  -> RGB-R
      --  P2_1  -> GPIO(5)[1]  -> RGB-G
      --  P2_2  -> GPIO(5)[2]  -> RGB-B
      --  P2_10 -> GPIO(0)[14] -> LED1
      --  P2_11 -> GPIO(1)[11] -> LED2
      --  P2_12 -> GPIO(1)[12] -> LED3

      --  A := (109, 97, 114, 116, 105, 110, 99, 97, 114, 97, 100, 101, 99, 104,
      --        111, 114, 108, 105, 116, 111);

      if USART_2.RX_Ready then
         B := (others => 00);
         Receive (USART_2, B, A_status, 500);
         Transmit (USART_2, B, A_status, 500);
      end if;

      Next_Release := Next_Release + Period;
      delay until Next_Release;
   end loop;
end test;
