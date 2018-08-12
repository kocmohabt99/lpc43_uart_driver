--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package LPC43xx.SCU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Select pin function.
   type SFSP0_ENUM is
     (
      --  Function 0 (default)
      Function_0_Default,
      --  Function 1
      Function_1,
      --  Function 2
      Function_2,
      --  Function 3
      Function_3,
      --  Function 4
      Function_4,
      --  Function 5
      Function_5,
      --  Function 6
      Function_6,
      --  Function 7
      Function_7)
     with Size => 3;
   for SFSP0_ENUM use
     (Function_0_Default => 0,
      Function_1 => 1,
      Function_2 => 2,
      Function_3 => 3,
      Function_4 => 4,
      Function_5 => 5,
      Function_6 => 6,
      Function_7 => 7);

   --  Enable pull-down resistor at pad.
   type SFSP0_ENUM_1 is
     (
      --  Disable pull-down.
      Disable_Pull_Down,
      --  Enable pull-down.Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Down)
     with Size => 1;
   for SFSP0_ENUM_1 use
     (Disable_Pull_Down => 0,
      Enable_Pull_Down => 1);

   --  Disable pull-up resistor at pad. By default, the pull-up resistor is
   --  enabled at reset.
   type SFSP0_ENUM_2 is
     (
      --  Enable pull-up. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Up,
      --  Disable pull-up.
      Disable_Pull_Up)
     with Size => 1;
   for SFSP0_ENUM_2 use
     (Enable_Pull_Up => 0,
      Disable_Pull_Up => 1);

   --  Select Slew rate.
   type SFSP0_ENUM_3 is
     (
      --  Slow (low noise with medium speed)
      Slow_Low_Noise_With,
      --  Fast (medium noise with fast speed)
      Fast_Medium_Noise_W)
     with Size => 1;
   for SFSP0_ENUM_3 use
     (Slow_Low_Noise_With => 0,
      Fast_Medium_Noise_W => 1);

   --  Input buffer enable. The input buffer is disabled by default at reset
   --  and must be enabled for receiving.
   type SFSP0_ENUM_4 is
     (
      --  Disable input buffer
      Disable_Input_Buffer,
      --  Enable input buffer
      Enable_Input_Buffer)
     with Size => 1;
   for SFSP0_ENUM_4 use
     (Disable_Input_Buffer => 0,
      Enable_Input_Buffer => 1);

   --  Input glitch filter. Disable the input glitch filter for clocking
   --  signals higher than 30 MHz.
   type SFSP0_ENUM_5 is
     (
      --  Enable input glitch filter
      Enable_Input_Glitch,
      --  Disable input glitch filter
      Disable_Input_Glitch)
     with Size => 1;
   for SFSP0_ENUM_5 use
     (Enable_Input_Glitch => 0,
      Disable_Input_Glitch => 1);

   subtype SFSP0_RESERVED_Field is HAL.UInt24;

   --  Pin configuration register for pins P0
   type SFSP0_Register is record
      --  Select pin function.
      MODE     : SFSP0_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : SFSP0_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : SFSP0_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : SFSP0_ENUM_3 := LPC43xx.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : SFSP0_ENUM_4 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : SFSP0_ENUM_5 := LPC43xx.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSP0_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP0_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins P0
   type SFSP0_Registers is array (0 .. 1) of SFSP0_Register
     with Volatile;

   --  Select pin function.
   type SFSP1_ENUM is
     (
      --  Function 0 (default)
      Function_0_Default,
      --  Function 1
      Function_1,
      --  Function 2
      Function_2,
      --  Function 3
      Function_3,
      --  Function 4
      Function_4,
      --  Function 5
      Function_5,
      --  Function 6
      Function_6,
      --  Function 7
      Function_7)
     with Size => 3;
   for SFSP1_ENUM use
     (Function_0_Default => 0,
      Function_1 => 1,
      Function_2 => 2,
      Function_3 => 3,
      Function_4 => 4,
      Function_5 => 5,
      Function_6 => 6,
      Function_7 => 7);

   --  Enable pull-down resistor at pad.
   type SFSP1_ENUM_1 is
     (
      --  Disable pull-down.
      Disable_Pull_Down,
      --  Enable pull-down.Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Down)
     with Size => 1;
   for SFSP1_ENUM_1 use
     (Disable_Pull_Down => 0,
      Enable_Pull_Down => 1);

   --  Disable pull-up resistor at pad. By default, the pull-up resistor is
   --  enabled at reset.
   type SFSP1_ENUM_2 is
     (
      --  Enable pull-up. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Up,
      --  Disable pull-up.
      Disable_Pull_Up)
     with Size => 1;
   for SFSP1_ENUM_2 use
     (Enable_Pull_Up => 0,
      Disable_Pull_Up => 1);

   --  Select Slew rate.
   type SFSP1_ENUM_3 is
     (
      --  Slow (low noise with medium speed)
      Slow_Low_Noise_With,
      --  Fast (medium noise with fast speed)
      Fast_Medium_Noise_W)
     with Size => 1;
   for SFSP1_ENUM_3 use
     (Slow_Low_Noise_With => 0,
      Fast_Medium_Noise_W => 1);

   --  Input buffer enable. The input buffer is disabled by default at reset
   --  and must be enabled for receiving.
   type SFSP1_ENUM_4 is
     (
      --  Disable input buffer
      Disable_Input_Buffer,
      --  Enable input buffer
      Enable_Input_Buffer)
     with Size => 1;
   for SFSP1_ENUM_4 use
     (Disable_Input_Buffer => 0,
      Enable_Input_Buffer => 1);

   --  Input glitch filter. Disable the input glitch filter for clocking
   --  signals higher than 30 MHz.
   type SFSP1_ENUM_5 is
     (
      --  Enable input glitch filter
      Enable_Input_Glitch,
      --  Disable input glitch filter
      Disable_Input_Glitch)
     with Size => 1;
   for SFSP1_ENUM_5 use
     (Enable_Input_Glitch => 0,
      Disable_Input_Glitch => 1);

   subtype SFSP1_RESERVED_Field is HAL.UInt24;

   --  Pin configuration register for pins P1
   type SFSP1_Register is record
      --  Select pin function.
      MODE     : SFSP1_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : SFSP1_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : SFSP1_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : SFSP1_ENUM_3 := LPC43xx.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : SFSP1_ENUM_4 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : SFSP1_ENUM_5 := LPC43xx.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSP1_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP1_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins P1
   type SFSP1_Registers is array (0 .. 16) of SFSP1_Register
     with Volatile;

   --  Select pin function.
   type SFSP1_17_ENUM is
     (
      --  Function 0 (default)
      Function_0_Default,
      --  Function 1
      Function_1,
      --  Function 2
      Function_2,
      --  Function 3
      Function_3,
      --  Function 4
      Function_4,
      --  Function 5
      Function_5,
      --  Function 6
      Function_6,
      --  Function 7
      Function_7)
     with Size => 3;
   for SFSP1_17_ENUM use
     (Function_0_Default => 0,
      Function_1 => 1,
      Function_2 => 2,
      Function_3 => 3,
      Function_4 => 4,
      Function_5 => 5,
      Function_6 => 6,
      Function_7 => 7);

   --  Enable pull-down resistor at pad.
   type SFSP1_17_ENUM_1 is
     (
      --  Disable pull-down.
      Disable_Pull_Down,
      --  Enable pull-down. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Down)
     with Size => 1;
   for SFSP1_17_ENUM_1 use
     (Disable_Pull_Down => 0,
      Enable_Pull_Down => 1);

   --  Disable pull-up resistor at pad. By default, the pull-up resistor is
   --  enabled at reset.
   type SFSP1_17_ENUM_2 is
     (
      --  Enable pull-up. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Up,
      --  Disable pull-up
      Disable_Pull_Up)
     with Size => 1;
   for SFSP1_17_ENUM_2 use
     (Enable_Pull_Up => 0,
      Disable_Pull_Up => 1);

   --  Input buffer enable. The input buffer is disabled by default at reset
   --  but must be enabled to transfer data from the I/O buffer to the pad.
   type SFSP1_17_ENUM_3 is
     (
      --  Disable input buffer
      Disable_Input_Buffer,
      --  Enable input buffer
      Enable_Input_Buffer)
     with Size => 1;
   for SFSP1_17_ENUM_3 use
     (Disable_Input_Buffer => 0,
      Enable_Input_Buffer => 1);

   --  Input glitch filter. Disable the input glitch filter for clocking
   --  signals higher than 30 MHz.
   type SFSP1_17_ENUM_4 is
     (
      --  Enable input glitch filter
      Enable_Input_Glitch,
      --  Disable input glitch filter
      Disable_Input_Glitch)
     with Size => 1;
   for SFSP1_17_ENUM_4 use
     (Enable_Input_Glitch => 0,
      Disable_Input_Glitch => 1);

   --  Select drive strength.
   type SFSP1_17_ENUM_5 is
     (
      --  Normal-drive: 4 mA drive strength
      Normal_Drive_4_Ma_D,
      --  Medium-drive: 8 mA drive strength
      Medium_Drive_8_Ma_D,
      --  High-drive: 14 mA drive strength
      High_Drive_14_Ma_Dr,
      --  Ultra high-drive: 20 mA drive strength
      Ultra_High_Drive_20)
     with Size => 2;
   for SFSP1_17_ENUM_5 use
     (Normal_Drive_4_Ma_D => 0,
      Medium_Drive_8_Ma_D => 1,
      High_Drive_14_Ma_Dr => 2,
      Ultra_High_Drive_20 => 3);

   subtype SFSP1_17_RESERVED_Field is HAL.UInt22;

   --  Pin configuration register for pins P1_17
   type SFSP1_17_Register is record
      --  Select pin function.
      MODE       : SFSP1_17_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD        : SFSP1_17_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN       : SFSP1_17_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Reserved
      RESERVED   : Boolean := False;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  but must be enabled to transfer data from the I/O buffer to the pad.
      EZI        : SFSP1_17_ENUM_3 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF        : SFSP1_17_ENUM_4 := LPC43xx.SCU.Enable_Input_Glitch;
      --  Select drive strength.
      EHD        : SFSP1_17_ENUM_5 := LPC43xx.SCU.Normal_Drive_4_Ma_D;
      --  Reserved
      RESERVED_1 : SFSP1_17_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP1_17_Register use record
      MODE       at 0 range 0 .. 2;
      EPD        at 0 range 3 .. 3;
      EPUN       at 0 range 4 .. 4;
      RESERVED   at 0 range 5 .. 5;
      EZI        at 0 range 6 .. 6;
      ZIF        at 0 range 7 .. 7;
      EHD        at 0 range 8 .. 9;
      RESERVED_1 at 0 range 10 .. 31;
   end record;

   subtype SFSP_RESERVED_Field is HAL.UInt24;

   --  Pin configuration register for pins P1
   type SFSP_Register is record
      --  Select pin function.
      MODE     : SFSP1_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : SFSP1_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : SFSP1_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : SFSP1_ENUM_3 := LPC43xx.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : SFSP1_ENUM_4 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : SFSP1_ENUM_5 := LPC43xx.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSP_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins P1
   type SFSP_Registers is array (0 .. 2) of SFSP_Register
     with Volatile;

   --  Select pin function.
   type SFSP2_ENUM is
     (
      --  Function 0 (default)
      Function_0_Default,
      --  Function 1
      Function_1,
      --  Function 2
      Function_2,
      --  Function 3
      Function_3,
      --  Function 4
      Function_4,
      --  Function 5
      Function_5,
      --  Function 6
      Function_6,
      --  Function 7
      Function_7)
     with Size => 3;
   for SFSP2_ENUM use
     (Function_0_Default => 0,
      Function_1 => 1,
      Function_2 => 2,
      Function_3 => 3,
      Function_4 => 4,
      Function_5 => 5,
      Function_6 => 6,
      Function_7 => 7);

   --  Enable pull-down resistor at pad.
   type SFSP2_ENUM_1 is
     (
      --  Disable pull-down.
      Disable_Pull_Down,
      --  Enable pull-down. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Down)
     with Size => 1;
   for SFSP2_ENUM_1 use
     (Disable_Pull_Down => 0,
      Enable_Pull_Down => 1);

   --  Disable pull-up resistor at pad. By default, the pull-up resistor is
   --  enabled at reset.
   type SFSP2_ENUM_2 is
     (
      --  Enable pull-up. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Up,
      --  Disable pull-up
      Disable_Pull_Up)
     with Size => 1;
   for SFSP2_ENUM_2 use
     (Enable_Pull_Up => 0,
      Disable_Pull_Up => 1);

   --  Input buffer enable. The input buffer is disabled by default at reset
   --  but must be enabled to transfer data from the I/O buffer to the pad.
   type SFSP2_ENUM_3 is
     (
      --  Disable input buffer
      Disable_Input_Buffer,
      --  Enable input buffer
      Enable_Input_Buffer)
     with Size => 1;
   for SFSP2_ENUM_3 use
     (Disable_Input_Buffer => 0,
      Enable_Input_Buffer => 1);

   --  Input glitch filter. Disable the input glitch filter for clocking
   --  signals higher than 30 MHz.
   type SFSP2_ENUM_4 is
     (
      --  Enable input glitch filter
      Enable_Input_Glitch,
      --  Disable input glitch filter
      Disable_Input_Glitch)
     with Size => 1;
   for SFSP2_ENUM_4 use
     (Enable_Input_Glitch => 0,
      Disable_Input_Glitch => 1);

   --  Select drive strength.
   type SFSP2_ENUM_5 is
     (
      --  Normal-drive: 4 mA drive strength
      Normal_Drive_4_Ma_D,
      --  Medium-drive: 8 mA drive strength
      Medium_Drive_8_Ma_D,
      --  High-drive: 14 mA drive strength
      High_Drive_14_Ma_Dr,
      --  Ultra high-drive: 20 mA drive strength
      Ultra_High_Drive_20)
     with Size => 2;
   for SFSP2_ENUM_5 use
     (Normal_Drive_4_Ma_D => 0,
      Medium_Drive_8_Ma_D => 1,
      High_Drive_14_Ma_Dr => 2,
      Ultra_High_Drive_20 => 3);

   subtype SFSP2_RESERVED_Field is HAL.UInt22;

   --  Pin configuration register for pins P2
   type SFSP2_Register is record
      --  Select pin function.
      MODE       : SFSP2_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD        : SFSP2_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN       : SFSP2_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Reserved
      RESERVED   : Boolean := False;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  but must be enabled to transfer data from the I/O buffer to the pad.
      EZI        : SFSP2_ENUM_3 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF        : SFSP2_ENUM_4 := LPC43xx.SCU.Enable_Input_Glitch;
      --  Select drive strength.
      EHD        : SFSP2_ENUM_5 := LPC43xx.SCU.Normal_Drive_4_Ma_D;
      --  Reserved
      RESERVED_1 : SFSP2_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP2_Register use record
      MODE       at 0 range 0 .. 2;
      EPD        at 0 range 3 .. 3;
      EPUN       at 0 range 4 .. 4;
      RESERVED   at 0 range 5 .. 5;
      EZI        at 0 range 6 .. 6;
      ZIF        at 0 range 7 .. 7;
      EHD        at 0 range 8 .. 9;
      RESERVED_1 at 0 range 10 .. 31;
   end record;

   --  Pin configuration register for pins P2
   type SFSP2_Registers is array (0 .. 2) of SFSP2_Register
     with Volatile;

   --  Select Slew rate.
   type SFSP2_ENUM_6 is
     (
      --  Slow (low noise with medium speed)
      Slow_Low_Noise_With,
      --  Fast (medium noise with fast speed)
      Fast_Medium_Noise_W)
     with Size => 1;
   for SFSP2_ENUM_6 use
     (Slow_Low_Noise_With => 0,
      Fast_Medium_Noise_W => 1);

   subtype SFSP2_RESERVED_Field_1 is HAL.UInt24;

   --  Pin configuration register for pins P2
   type SFSP2_Register_1 is record
      --  Select pin function.
      MODE     : SFSP2_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : SFSP2_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : SFSP2_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : SFSP2_ENUM_6 := LPC43xx.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : SFSP2_ENUM_3 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : SFSP2_ENUM_4 := LPC43xx.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSP2_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP2_Register_1 use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins P2
   type SFSP2_Registers_1 is array (0 .. 6) of SFSP2_Register_1
     with Volatile;

   --  Select pin function.
   type SFSP3_3_ENUM is
     (
      --  Function 0 (default)
      Function_0_Default,
      --  Function 1
      Function_1,
      --  Function 2
      Function_2,
      --  Function 3
      Function_3,
      --  Function 4
      Function_4,
      --  Function 5
      Function_5,
      --  Function 6
      Function_6,
      --  Function 7
      Function_7)
     with Size => 3;
   for SFSP3_3_ENUM use
     (Function_0_Default => 0,
      Function_1 => 1,
      Function_2 => 2,
      Function_3 => 3,
      Function_4 => 4,
      Function_5 => 5,
      Function_6 => 6,
      Function_7 => 7);

   --  Enable pull-down resistor at pad.
   type SFSP3_3_ENUM_1 is
     (
      --  Disable pull-down.
      Disable_Pull_Down,
      --  Enable pull-down. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Down)
     with Size => 1;
   for SFSP3_3_ENUM_1 use
     (Disable_Pull_Down => 0,
      Enable_Pull_Down => 1);

   --  Disable pull-up resistor at pad. By default, the pull-up resistor is
   --  enabled at reset.
   type SFSP3_3_ENUM_2 is
     (
      --  Enable pull-up. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Up,
      --  Disable pull-up.
      Disable_Pull_Up)
     with Size => 1;
   for SFSP3_3_ENUM_2 use
     (Enable_Pull_Up => 0,
      Disable_Pull_Up => 1);

   --  Slew rate
   type SFSP3_3_ENUM_3 is
     (
      --  Fast (low noise with fast speed)
      Fast_Low_Noise_With,
      --  High-speed (medium noise with high speed)
      High_Speed_Medium_N)
     with Size => 1;
   for SFSP3_3_ENUM_3 use
     (Fast_Low_Noise_With => 0,
      High_Speed_Medium_N => 1);

   --  Input buffer enable. The input buffer is disabled by default at reset
   --  and must be enabled for receiving.
   type SFSP3_3_ENUM_4 is
     (
      --  Disable input buffer
      Disable_Input_Buffer,
      --  Enable input buffer
      Enable_Input_Buffer)
     with Size => 1;
   for SFSP3_3_ENUM_4 use
     (Disable_Input_Buffer => 0,
      Enable_Input_Buffer => 1);

   --  Input glitch filter. Disable the input glitch filter for clocking
   --  signals higher than 30 MHz.
   type SFSP3_3_ENUM_5 is
     (
      --  Enable input filter
      Enable_Input_Filter,
      --  Disable input filter
      Disable_Input_Filter)
     with Size => 1;
   for SFSP3_3_ENUM_5 use
     (Enable_Input_Filter => 0,
      Disable_Input_Filter => 1);

   subtype SFSP3_3_RESERVED_Field is HAL.UInt24;

   --  Pin configuration register for pins P3
   type SFSP3_3_Register is record
      --  Select pin function.
      MODE     : SFSP3_3_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : SFSP3_3_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : SFSP3_3_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Slew rate
      EHS      : SFSP3_3_ENUM_3 := LPC43xx.SCU.Fast_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : SFSP3_3_ENUM_4 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : SFSP3_3_ENUM_5 := LPC43xx.SCU.Enable_Input_Filter;
      --  Reserved
      RESERVED : SFSP3_3_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP3_3_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Select pin function.
   type SFSP3_ENUM is
     (
      --  Function 0 (default)
      Function_0_Default,
      --  Function 1
      Function_1,
      --  Function 2
      Function_2,
      --  Function 3
      Function_3,
      --  Function 4
      Function_4,
      --  Function 5
      Function_5,
      --  Function 6
      Function_6,
      --  Function 7
      Function_7)
     with Size => 3;
   for SFSP3_ENUM use
     (Function_0_Default => 0,
      Function_1 => 1,
      Function_2 => 2,
      Function_3 => 3,
      Function_4 => 4,
      Function_5 => 5,
      Function_6 => 6,
      Function_7 => 7);

   --  Enable pull-down resistor at pad.
   type SFSP3_ENUM_1 is
     (
      --  Disable pull-down.
      Disable_Pull_Down,
      --  Enable pull-down.Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Down)
     with Size => 1;
   for SFSP3_ENUM_1 use
     (Disable_Pull_Down => 0,
      Enable_Pull_Down => 1);

   --  Disable pull-up resistor at pad. By default, the pull-up resistor is
   --  enabled at reset.
   type SFSP3_ENUM_2 is
     (
      --  Enable pull-up. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Up,
      --  Disable pull-up.
      Disable_Pull_Up)
     with Size => 1;
   for SFSP3_ENUM_2 use
     (Enable_Pull_Up => 0,
      Disable_Pull_Up => 1);

   --  Select Slew rate.
   type SFSP3_ENUM_3 is
     (
      --  Slow (low noise with medium speed)
      Slow_Low_Noise_With,
      --  Fast (medium noise with fast speed)
      Fast_Medium_Noise_W)
     with Size => 1;
   for SFSP3_ENUM_3 use
     (Slow_Low_Noise_With => 0,
      Fast_Medium_Noise_W => 1);

   --  Input buffer enable. The input buffer is disabled by default at reset
   --  and must be enabled for receiving.
   type SFSP3_ENUM_4 is
     (
      --  Disable input buffer
      Disable_Input_Buffer,
      --  Enable input buffer
      Enable_Input_Buffer)
     with Size => 1;
   for SFSP3_ENUM_4 use
     (Disable_Input_Buffer => 0,
      Enable_Input_Buffer => 1);

   --  Input glitch filter. Disable the input glitch filter for clocking
   --  signals higher than 30 MHz.
   type SFSP3_ENUM_5 is
     (
      --  Enable input glitch filter
      Enable_Input_Glitch,
      --  Disable input glitch filter
      Disable_Input_Glitch)
     with Size => 1;
   for SFSP3_ENUM_5 use
     (Enable_Input_Glitch => 0,
      Disable_Input_Glitch => 1);

   subtype SFSP3_RESERVED_Field is HAL.UInt24;

   --  Pin configuration register for pins P3
   type SFSP3_Register is record
      --  Select pin function.
      MODE     : SFSP3_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : SFSP3_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : SFSP3_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : SFSP3_ENUM_3 := LPC43xx.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : SFSP3_ENUM_4 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : SFSP3_ENUM_5 := LPC43xx.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSP3_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP3_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins P3
   type SFSP3_Registers is array (0 .. 4) of SFSP3_Register
     with Volatile;

   --  Select pin function.
   type SFSP4_ENUM is
     (
      --  Function 0 (default)
      Function_0_Default,
      --  Function 1
      Function_1,
      --  Function 2
      Function_2,
      --  Function 3
      Function_3,
      --  Function 4
      Function_4,
      --  Function 5
      Function_5,
      --  Function 6
      Function_6,
      --  Function 7
      Function_7)
     with Size => 3;
   for SFSP4_ENUM use
     (Function_0_Default => 0,
      Function_1 => 1,
      Function_2 => 2,
      Function_3 => 3,
      Function_4 => 4,
      Function_5 => 5,
      Function_6 => 6,
      Function_7 => 7);

   --  Enable pull-down resistor at pad.
   type SFSP4_ENUM_1 is
     (
      --  Disable pull-down.
      Disable_Pull_Down,
      --  Enable pull-down.Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Down)
     with Size => 1;
   for SFSP4_ENUM_1 use
     (Disable_Pull_Down => 0,
      Enable_Pull_Down => 1);

   --  Disable pull-up resistor at pad. By default, the pull-up resistor is
   --  enabled at reset.
   type SFSP4_ENUM_2 is
     (
      --  Enable pull-up. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Up,
      --  Disable pull-up.
      Disable_Pull_Up)
     with Size => 1;
   for SFSP4_ENUM_2 use
     (Enable_Pull_Up => 0,
      Disable_Pull_Up => 1);

   --  Select Slew rate.
   type SFSP4_ENUM_3 is
     (
      --  Slow (low noise with medium speed)
      Slow_Low_Noise_With,
      --  Fast (medium noise with fast speed)
      Fast_Medium_Noise_W)
     with Size => 1;
   for SFSP4_ENUM_3 use
     (Slow_Low_Noise_With => 0,
      Fast_Medium_Noise_W => 1);

   --  Input buffer enable. The input buffer is disabled by default at reset
   --  and must be enabled for receiving.
   type SFSP4_ENUM_4 is
     (
      --  Disable input buffer
      Disable_Input_Buffer,
      --  Enable input buffer
      Enable_Input_Buffer)
     with Size => 1;
   for SFSP4_ENUM_4 use
     (Disable_Input_Buffer => 0,
      Enable_Input_Buffer => 1);

   --  Input glitch filter. Disable the input glitch filter for clocking
   --  signals higher than 30 MHz.
   type SFSP4_ENUM_5 is
     (
      --  Enable input glitch filter
      Enable_Input_Glitch,
      --  Disable input glitch filter
      Disable_Input_Glitch)
     with Size => 1;
   for SFSP4_ENUM_5 use
     (Enable_Input_Glitch => 0,
      Disable_Input_Glitch => 1);

   subtype SFSP4_RESERVED_Field is HAL.UInt24;

   --  Pin configuration register for pins P4
   type SFSP4_Register is record
      --  Select pin function.
      MODE     : SFSP4_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : SFSP4_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : SFSP4_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : SFSP4_ENUM_3 := LPC43xx.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : SFSP4_ENUM_4 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : SFSP4_ENUM_5 := LPC43xx.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSP4_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP4_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins P4
   type SFSP4_Registers is array (0 .. 10) of SFSP4_Register
     with Volatile;

   --  Select pin function.
   type SFSP5_ENUM is
     (
      --  Function 0 (default)
      Function_0_Default,
      --  Function 1
      Function_1,
      --  Function 2
      Function_2,
      --  Function 3
      Function_3,
      --  Function 4
      Function_4,
      --  Function 5
      Function_5,
      --  Function 6
      Function_6,
      --  Function 7
      Function_7)
     with Size => 3;
   for SFSP5_ENUM use
     (Function_0_Default => 0,
      Function_1 => 1,
      Function_2 => 2,
      Function_3 => 3,
      Function_4 => 4,
      Function_5 => 5,
      Function_6 => 6,
      Function_7 => 7);

   --  Enable pull-down resistor at pad.
   type SFSP5_ENUM_1 is
     (
      --  Disable pull-down.
      Disable_Pull_Down,
      --  Enable pull-down.Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Down)
     with Size => 1;
   for SFSP5_ENUM_1 use
     (Disable_Pull_Down => 0,
      Enable_Pull_Down => 1);

   --  Disable pull-up resistor at pad. By default, the pull-up resistor is
   --  enabled at reset.
   type SFSP5_ENUM_2 is
     (
      --  Enable pull-up. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Up,
      --  Disable pull-up.
      Disable_Pull_Up)
     with Size => 1;
   for SFSP5_ENUM_2 use
     (Enable_Pull_Up => 0,
      Disable_Pull_Up => 1);

   --  Select Slew rate.
   type SFSP5_ENUM_3 is
     (
      --  Slow (low noise with medium speed)
      Slow_Low_Noise_With,
      --  Fast (medium noise with fast speed)
      Fast_Medium_Noise_W)
     with Size => 1;
   for SFSP5_ENUM_3 use
     (Slow_Low_Noise_With => 0,
      Fast_Medium_Noise_W => 1);

   --  Input buffer enable. The input buffer is disabled by default at reset
   --  and must be enabled for receiving.
   type SFSP5_ENUM_4 is
     (
      --  Disable input buffer
      Disable_Input_Buffer,
      --  Enable input buffer
      Enable_Input_Buffer)
     with Size => 1;
   for SFSP5_ENUM_4 use
     (Disable_Input_Buffer => 0,
      Enable_Input_Buffer => 1);

   --  Input glitch filter. Disable the input glitch filter for clocking
   --  signals higher than 30 MHz.
   type SFSP5_ENUM_5 is
     (
      --  Enable input glitch filter
      Enable_Input_Glitch,
      --  Disable input glitch filter
      Disable_Input_Glitch)
     with Size => 1;
   for SFSP5_ENUM_5 use
     (Enable_Input_Glitch => 0,
      Disable_Input_Glitch => 1);

   --  Pin configuration register for pins P5
   type SFSP_Register_1 is record
      --  Select pin function.
      MODE     : SFSP5_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : SFSP5_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : SFSP5_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : SFSP5_ENUM_3 := LPC43xx.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : SFSP5_ENUM_4 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : SFSP5_ENUM_5 := LPC43xx.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSP_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP_Register_1 use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins P5
   type SFSP_Registers_1 is array (0 .. 7) of SFSP_Register_1
     with Volatile;

   --  Select pin function.
   type SFSP6_ENUM is
     (
      --  Function 0 (default)
      Function_0_Default,
      --  Function 1
      Function_1,
      --  Function 2
      Function_2,
      --  Function 3
      Function_3,
      --  Function 4
      Function_4,
      --  Function 5
      Function_5,
      --  Function 6
      Function_6,
      --  Function 7
      Function_7)
     with Size => 3;
   for SFSP6_ENUM use
     (Function_0_Default => 0,
      Function_1 => 1,
      Function_2 => 2,
      Function_3 => 3,
      Function_4 => 4,
      Function_5 => 5,
      Function_6 => 6,
      Function_7 => 7);

   --  Enable pull-down resistor at pad.
   type SFSP6_ENUM_1 is
     (
      --  Disable pull-down.
      Disable_Pull_Down,
      --  Enable pull-down.Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Down)
     with Size => 1;
   for SFSP6_ENUM_1 use
     (Disable_Pull_Down => 0,
      Enable_Pull_Down => 1);

   --  Disable pull-up resistor at pad. By default, the pull-up resistor is
   --  enabled at reset.
   type SFSP6_ENUM_2 is
     (
      --  Enable pull-up. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Up,
      --  Disable pull-up.
      Disable_Pull_Up)
     with Size => 1;
   for SFSP6_ENUM_2 use
     (Enable_Pull_Up => 0,
      Disable_Pull_Up => 1);

   --  Select Slew rate.
   type SFSP6_ENUM_3 is
     (
      --  Slow (low noise with medium speed)
      Slow_Low_Noise_With,
      --  Fast (medium noise with fast speed)
      Fast_Medium_Noise_W)
     with Size => 1;
   for SFSP6_ENUM_3 use
     (Slow_Low_Noise_With => 0,
      Fast_Medium_Noise_W => 1);

   --  Input buffer enable. The input buffer is disabled by default at reset
   --  and must be enabled for receiving.
   type SFSP6_ENUM_4 is
     (
      --  Disable input buffer
      Disable_Input_Buffer,
      --  Enable input buffer
      Enable_Input_Buffer)
     with Size => 1;
   for SFSP6_ENUM_4 use
     (Disable_Input_Buffer => 0,
      Enable_Input_Buffer => 1);

   --  Input glitch filter. Disable the input glitch filter for clocking
   --  signals higher than 30 MHz.
   type SFSP6_ENUM_5 is
     (
      --  Enable input glitch filter
      Enable_Input_Glitch,
      --  Disable input glitch filter
      Disable_Input_Glitch)
     with Size => 1;
   for SFSP6_ENUM_5 use
     (Enable_Input_Glitch => 0,
      Disable_Input_Glitch => 1);

   subtype SFSP6_RESERVED_Field is HAL.UInt24;

   --  Pin configuration register for pins P6
   type SFSP6_Register is record
      --  Select pin function.
      MODE     : SFSP6_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : SFSP6_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : SFSP6_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : SFSP6_ENUM_3 := LPC43xx.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : SFSP6_ENUM_4 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : SFSP6_ENUM_5 := LPC43xx.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSP6_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP6_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins P6
   type SFSP6_Registers is array (0 .. 12) of SFSP6_Register
     with Volatile;

   --  Select pin function.
   type SFSP8_ENUM is
     (
      --  Function 0 (default)
      Function_0_Default,
      --  Function 1
      Function_1,
      --  Function 2
      Function_2,
      --  Function 3
      Function_3,
      --  Function 4
      Function_4,
      --  Function 5
      Function_5,
      --  Function 6
      Function_6,
      --  Function 7
      Function_7)
     with Size => 3;
   for SFSP8_ENUM use
     (Function_0_Default => 0,
      Function_1 => 1,
      Function_2 => 2,
      Function_3 => 3,
      Function_4 => 4,
      Function_5 => 5,
      Function_6 => 6,
      Function_7 => 7);

   --  Enable pull-down resistor at pad.
   type SFSP8_ENUM_1 is
     (
      --  Disable pull-down.
      Disable_Pull_Down,
      --  Enable pull-down.Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Down)
     with Size => 1;
   for SFSP8_ENUM_1 use
     (Disable_Pull_Down => 0,
      Enable_Pull_Down => 1);

   --  Disable pull-up resistor at pad. By default, the pull-up resistor is
   --  enabled at reset.
   type SFSP8_ENUM_2 is
     (
      --  Enable pull-up. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Up,
      --  Disable pull-up.
      Disable_Pull_Up)
     with Size => 1;
   for SFSP8_ENUM_2 use
     (Enable_Pull_Up => 0,
      Disable_Pull_Up => 1);

   --  Select Slew rate.
   type SFSP8_ENUM_3 is
     (
      --  Slow (low noise with medium speed)
      Slow_Low_Noise_With,
      --  Fast (medium noise with fast speed)
      Fast_Medium_Noise_W)
     with Size => 1;
   for SFSP8_ENUM_3 use
     (Slow_Low_Noise_With => 0,
      Fast_Medium_Noise_W => 1);

   --  Input buffer enable. The input buffer is disabled by default at reset
   --  and must be enabled for receiving.
   type SFSP8_ENUM_4 is
     (
      --  Disable input buffer
      Disable_Input_Buffer,
      --  Enable input buffer
      Enable_Input_Buffer)
     with Size => 1;
   for SFSP8_ENUM_4 use
     (Disable_Input_Buffer => 0,
      Enable_Input_Buffer => 1);

   --  Input glitch filter. Disable the input glitch filter for clocking
   --  signals higher than 30 MHz.
   type SFSP8_ENUM_5 is
     (
      --  Enable input glitch filter
      Enable_Input_Glitch,
      --  Disable input glitch filter
      Disable_Input_Glitch)
     with Size => 1;
   for SFSP8_ENUM_5 use
     (Enable_Input_Glitch => 0,
      Disable_Input_Glitch => 1);

   subtype SFSP8_RESERVED_Field is HAL.UInt24;

   --  Pin configuration register for pins P8
   type SFSP8_Register is record
      --  Select pin function.
      MODE     : SFSP8_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : SFSP8_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : SFSP8_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : SFSP8_ENUM_3 := LPC43xx.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : SFSP8_ENUM_4 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : SFSP8_ENUM_5 := LPC43xx.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSP8_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP8_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins P8
   type SFSP8_Registers is array (0 .. 5) of SFSP8_Register
     with Volatile;

   --  Select pin function
   type SFSP9_ENUM is
     (
      --  Function 0 (default)
      Function_0_Default,
      --  Function 1
      Function_1,
      --  Function 2
      Function_2,
      --  Function 3
      Function_3,
      --  Function 4
      Function_4,
      --  Function 5
      Function_5,
      --  Function 6
      Function_6,
      --  Function 7
      Function_7)
     with Size => 3;
   for SFSP9_ENUM use
     (Function_0_Default => 0,
      Function_1 => 1,
      Function_2 => 2,
      Function_3 => 3,
      Function_4 => 4,
      Function_5 => 5,
      Function_6 => 6,
      Function_7 => 7);

   --  Enable pull-down resistor at pad
   type SFSP9_ENUM_1 is
     (
      --  Disable pull-down.
      Disable_Pull_Down,
      --  Enable pull-down.
      Enable_Pull_Down)
     with Size => 1;
   for SFSP9_ENUM_1 use
     (Disable_Pull_Down => 0,
      Enable_Pull_Down => 1);

   --  Disable pull-up resistor at pad. By default, the pull-up resistor is
   --  enabled at reset.
   type SFSP9_ENUM_2 is
     (
      --  Enable pull-up
      Enable_Pull_Up,
      --  Disable pull-up
      Disable_Pull_Up)
     with Size => 1;
   for SFSP9_ENUM_2 use
     (Enable_Pull_Up => 0,
      Disable_Pull_Up => 1);

   --  Slew rate
   type SFSP9_ENUM_3 is
     (
      --  Slow
      Slow,
      --  Fast
      Fast)
     with Size => 1;
   for SFSP9_ENUM_3 use
     (Slow => 0,
      Fast => 1);

   --  Input buffer enable. The input buffer is disabled by default at reset
   --  but must be enabled to transfer data from the I/O buffer to the pad.
   type SFSP9_ENUM_4 is
     (
      --  Disable input buffer
      Disable_Input_Buffer,
      --  Enable input buffer
      Enable_Input_Buffer)
     with Size => 1;
   for SFSP9_ENUM_4 use
     (Disable_Input_Buffer => 0,
      Enable_Input_Buffer => 1);

   --  Select drive strength
   type SFSP9_ENUM_5 is
     (
      --  Standard drive: 4 mA drive strength
      Standard_Drive_4_Ma,
      --  Medium drive: 8 mA drive strength
      Medium_Drive_8_Ma_D,
      --  High drive: 14 mA drive strength
      High_Drive_14_Ma_Dr,
      --  Ultra-high drive: 20 mA drive strength
      Ultra_High_Drive_20)
     with Size => 2;
   for SFSP9_ENUM_5 use
     (Standard_Drive_4_Ma => 0,
      Medium_Drive_8_Ma_D => 1,
      High_Drive_14_Ma_Dr => 2,
      Ultra_High_Drive_20 => 3);

   subtype SFSP9_RESERVED_Field is HAL.UInt22;

   --  Pin configuration register for pins P9
   type SFSP9_Register is record
      --  Select pin function
      MODE       : SFSP9_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad
      EPD        : SFSP9_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN       : SFSP9_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Slew rate
      EHS        : SFSP9_ENUM_3 := LPC43xx.SCU.Slow;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  but must be enabled to transfer data from the I/O buffer to the pad.
      EZI        : SFSP9_ENUM_4 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Reserved
      RESERVED   : Boolean := False;
      --  Select drive strength
      EHD        : SFSP9_ENUM_5 := LPC43xx.SCU.Standard_Drive_4_Ma;
      --  Reserved
      RESERVED_1 : SFSP9_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSP9_Register use record
      MODE       at 0 range 0 .. 2;
      EPD        at 0 range 3 .. 3;
      EPUN       at 0 range 4 .. 4;
      EHS        at 0 range 5 .. 5;
      EZI        at 0 range 6 .. 6;
      RESERVED   at 0 range 7 .. 7;
      EHD        at 0 range 8 .. 9;
      RESERVED_1 at 0 range 10 .. 31;
   end record;

   --  Pin configuration register for pins P9
   type SFSP9_Registers is array (0 .. 6) of SFSP9_Register
     with Volatile;

   --  Select pin function.
   type SFSPA_0_ENUM is
     (
      --  Function 0 (default)
      Function_0_Default,
      --  Function 1
      Function_1,
      --  Function 2
      Function_2,
      --  Function 3
      Function_3,
      --  Function 4
      Function_4,
      --  Function 5
      Function_5,
      --  Function 6
      Function_6,
      --  Function 7
      Function_7)
     with Size => 3;
   for SFSPA_0_ENUM use
     (Function_0_Default => 0,
      Function_1 => 1,
      Function_2 => 2,
      Function_3 => 3,
      Function_4 => 4,
      Function_5 => 5,
      Function_6 => 6,
      Function_7 => 7);

   --  Enable pull-down resistor at pad.
   type SFSPA_0_ENUM_1 is
     (
      --  Disable pull-down.
      Disable_Pull_Down,
      --  Enable pull-down.Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Down)
     with Size => 1;
   for SFSPA_0_ENUM_1 use
     (Disable_Pull_Down => 0,
      Enable_Pull_Down => 1);

   --  Disable pull-up resistor at pad. By default, the pull-up resistor is
   --  enabled at reset.
   type SFSPA_0_ENUM_2 is
     (
      --  Enable pull-up. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Up,
      --  Disable pull-up.
      Disable_Pull_Up)
     with Size => 1;
   for SFSPA_0_ENUM_2 use
     (Enable_Pull_Up => 0,
      Disable_Pull_Up => 1);

   --  Select Slew rate.
   type SFSPA_0_ENUM_3 is
     (
      --  Slow (low noise with medium speed)
      Slow_Low_Noise_With,
      --  Fast (medium noise with fast speed)
      Fast_Medium_Noise_W)
     with Size => 1;
   for SFSPA_0_ENUM_3 use
     (Slow_Low_Noise_With => 0,
      Fast_Medium_Noise_W => 1);

   --  Input buffer enable. The input buffer is disabled by default at reset
   --  and must be enabled for receiving.
   type SFSPA_0_ENUM_4 is
     (
      --  Disable input buffer
      Disable_Input_Buffer,
      --  Enable input buffer
      Enable_Input_Buffer)
     with Size => 1;
   for SFSPA_0_ENUM_4 use
     (Disable_Input_Buffer => 0,
      Enable_Input_Buffer => 1);

   --  Input glitch filter. Disable the input glitch filter for clocking
   --  signals higher than 30 MHz.
   type SFSPA_0_ENUM_5 is
     (
      --  Enable input glitch filter
      Enable_Input_Glitch,
      --  Disable input glitch filter
      Disable_Input_Glitch)
     with Size => 1;
   for SFSPA_0_ENUM_5 use
     (Enable_Input_Glitch => 0,
      Disable_Input_Glitch => 1);

   subtype SFSPA_0_RESERVED_Field is HAL.UInt24;

   --  Pin configuration register for pins PA
   type SFSPA_0_Register is record
      --  Select pin function.
      MODE     : SFSPA_0_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : SFSPA_0_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : SFSPA_0_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : SFSPA_0_ENUM_3 := LPC43xx.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : SFSPA_0_ENUM_4 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : SFSPA_0_ENUM_5 := LPC43xx.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSPA_0_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSPA_0_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Select pin function.
   type SFSPA_ENUM is
     (
      --  Function 0 (default)
      Function_0_Default,
      --  Function 1
      Function_1,
      --  Function 2
      Function_2,
      --  Function 3
      Function_3,
      --  Function 4
      Function_4,
      --  Function 5
      Function_5,
      --  Function 6
      Function_6,
      --  Function 7
      Function_7)
     with Size => 3;
   for SFSPA_ENUM use
     (Function_0_Default => 0,
      Function_1 => 1,
      Function_2 => 2,
      Function_3 => 3,
      Function_4 => 4,
      Function_5 => 5,
      Function_6 => 6,
      Function_7 => 7);

   --  Enable pull-down resistor at pad.
   type SFSPA_ENUM_1 is
     (
      --  Disable pull-down.
      Disable_Pull_Down,
      --  Enable pull-down. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Down)
     with Size => 1;
   for SFSPA_ENUM_1 use
     (Disable_Pull_Down => 0,
      Enable_Pull_Down => 1);

   --  Disable pull-up resistor at pad. By default, the pull-up resistor is
   --  enabled at reset.
   type SFSPA_ENUM_2 is
     (
      --  Enable pull-up. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Up,
      --  Disable pull-up
      Disable_Pull_Up)
     with Size => 1;
   for SFSPA_ENUM_2 use
     (Enable_Pull_Up => 0,
      Disable_Pull_Up => 1);

   --  Input buffer enable. The input buffer is disabled by default at reset
   --  but must be enabled to transfer data from the I/O buffer to the pad.
   type SFSPA_ENUM_3 is
     (
      --  Disable input buffer
      Disable_Input_Buffer,
      --  Enable input buffer
      Enable_Input_Buffer)
     with Size => 1;
   for SFSPA_ENUM_3 use
     (Disable_Input_Buffer => 0,
      Enable_Input_Buffer => 1);

   --  Input glitch filter. Disable the input glitch filter for clocking
   --  signals higher than 30 MHz.
   type SFSPA_ENUM_4 is
     (
      --  Enable input glitch filter
      Enable_Input_Glitch,
      --  Disable input glitch filter
      Disable_Input_Glitch)
     with Size => 1;
   for SFSPA_ENUM_4 use
     (Enable_Input_Glitch => 0,
      Disable_Input_Glitch => 1);

   --  Select drive strength.
   type SFSPA_ENUM_5 is
     (
      --  Normal-drive: 4 mA drive strength
      Normal_Drive_4_Ma_D,
      --  Medium-drive: 8 mA drive strength
      Medium_Drive_8_Ma_D,
      --  High-drive: 14 mA drive strength
      High_Drive_14_Ma_Dr,
      --  Ultra high-drive: 20 mA drive strength
      Ultra_High_Drive_20)
     with Size => 2;
   for SFSPA_ENUM_5 use
     (Normal_Drive_4_Ma_D => 0,
      Medium_Drive_8_Ma_D => 1,
      High_Drive_14_Ma_Dr => 2,
      Ultra_High_Drive_20 => 3);

   subtype SFSPA_RESERVED_Field is HAL.UInt22;

   --  Pin configuration register for pins PA
   type SFSPA_Register is record
      --  Select pin function.
      MODE       : SFSPA_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD        : SFSPA_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN       : SFSPA_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Reserved
      RESERVED   : Boolean := False;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  but must be enabled to transfer data from the I/O buffer to the pad.
      EZI        : SFSPA_ENUM_3 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF        : SFSPA_ENUM_4 := LPC43xx.SCU.Enable_Input_Glitch;
      --  Select drive strength.
      EHD        : SFSPA_ENUM_5 := LPC43xx.SCU.Normal_Drive_4_Ma_D;
      --  Reserved
      RESERVED_1 : SFSPA_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSPA_Register use record
      MODE       at 0 range 0 .. 2;
      EPD        at 0 range 3 .. 3;
      EPUN       at 0 range 4 .. 4;
      RESERVED   at 0 range 5 .. 5;
      EZI        at 0 range 6 .. 6;
      ZIF        at 0 range 7 .. 7;
      EHD        at 0 range 8 .. 9;
      RESERVED_1 at 0 range 10 .. 31;
   end record;

   --  Pin configuration register for pins PA
   type SFSPA_Registers is array (0 .. 2) of SFSPA_Register
     with Volatile;

   --  Select pin function.
   type SFSPA_4_ENUM is
     (
      --  Function 0 (default)
      Function_0_Default,
      --  Function 1
      Function_1,
      --  Function 2
      Function_2,
      --  Function 3
      Function_3,
      --  Function 4
      Function_4,
      --  Function 5
      Function_5,
      --  Function 6
      Function_6,
      --  Function 7
      Function_7)
     with Size => 3;
   for SFSPA_4_ENUM use
     (Function_0_Default => 0,
      Function_1 => 1,
      Function_2 => 2,
      Function_3 => 3,
      Function_4 => 4,
      Function_5 => 5,
      Function_6 => 6,
      Function_7 => 7);

   --  Enable pull-down resistor at pad.
   type SFSPA_4_ENUM_1 is
     (
      --  Disable pull-down.
      Disable_Pull_Down,
      --  Enable pull-down.Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Down)
     with Size => 1;
   for SFSPA_4_ENUM_1 use
     (Disable_Pull_Down => 0,
      Enable_Pull_Down => 1);

   --  Disable pull-up resistor at pad. By default, the pull-up resistor is
   --  enabled at reset.
   type SFSPA_4_ENUM_2 is
     (
      --  Enable pull-up. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Up,
      --  Disable pull-up.
      Disable_Pull_Up)
     with Size => 1;
   for SFSPA_4_ENUM_2 use
     (Enable_Pull_Up => 0,
      Disable_Pull_Up => 1);

   --  Select Slew rate.
   type SFSPA_4_ENUM_3 is
     (
      --  Slow (low noise with medium speed)
      Slow_Low_Noise_With,
      --  Fast (medium noise with fast speed)
      Fast_Medium_Noise_W)
     with Size => 1;
   for SFSPA_4_ENUM_3 use
     (Slow_Low_Noise_With => 0,
      Fast_Medium_Noise_W => 1);

   --  Input buffer enable. The input buffer is disabled by default at reset
   --  and must be enabled for receiving.
   type SFSPA_4_ENUM_4 is
     (
      --  Disable input buffer
      Disable_Input_Buffer,
      --  Enable input buffer
      Enable_Input_Buffer)
     with Size => 1;
   for SFSPA_4_ENUM_4 use
     (Disable_Input_Buffer => 0,
      Enable_Input_Buffer => 1);

   --  Input glitch filter. Disable the input glitch filter for clocking
   --  signals higher than 30 MHz.
   type SFSPA_4_ENUM_5 is
     (
      --  Enable input glitch filter
      Enable_Input_Glitch,
      --  Disable input glitch filter
      Disable_Input_Glitch)
     with Size => 1;
   for SFSPA_4_ENUM_5 use
     (Enable_Input_Glitch => 0,
      Disable_Input_Glitch => 1);

   subtype SFSPA_4_RESERVED_Field is HAL.UInt24;

   --  Pin configuration register for pins PA
   type SFSPA_4_Register is record
      --  Select pin function.
      MODE     : SFSPA_4_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : SFSPA_4_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : SFSPA_4_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : SFSPA_4_ENUM_3 := LPC43xx.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : SFSPA_4_ENUM_4 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : SFSPA_4_ENUM_5 := LPC43xx.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSPA_4_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSPA_4_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Select pin function.
   type SFSPB_ENUM is
     (
      --  Function 0 (default)
      Function_0_Default,
      --  Function 1
      Function_1,
      --  Function 2
      Function_2,
      --  Function 3
      Function_3,
      --  Function 4
      Function_4,
      --  Function 5
      Function_5,
      --  Function 6
      Function_6,
      --  Function 7
      Function_7)
     with Size => 3;
   for SFSPB_ENUM use
     (Function_0_Default => 0,
      Function_1 => 1,
      Function_2 => 2,
      Function_3 => 3,
      Function_4 => 4,
      Function_5 => 5,
      Function_6 => 6,
      Function_7 => 7);

   --  Enable pull-down resistor at pad.
   type SFSPB_ENUM_1 is
     (
      --  Disable pull-down.
      Disable_Pull_Down,
      --  Enable pull-down.Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Down)
     with Size => 1;
   for SFSPB_ENUM_1 use
     (Disable_Pull_Down => 0,
      Enable_Pull_Down => 1);

   --  Disable pull-up resistor at pad. By default, the pull-up resistor is
   --  enabled at reset.
   type SFSPB_ENUM_2 is
     (
      --  Enable pull-up. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Up,
      --  Disable pull-up.
      Disable_Pull_Up)
     with Size => 1;
   for SFSPB_ENUM_2 use
     (Enable_Pull_Up => 0,
      Disable_Pull_Up => 1);

   --  Select Slew rate.
   type SFSPB_ENUM_3 is
     (
      --  Slow (low noise with medium speed)
      Slow_Low_Noise_With,
      --  Fast (medium noise with fast speed)
      Fast_Medium_Noise_W)
     with Size => 1;
   for SFSPB_ENUM_3 use
     (Slow_Low_Noise_With => 0,
      Fast_Medium_Noise_W => 1);

   --  Input buffer enable. The input buffer is disabled by default at reset
   --  and must be enabled for receiving.
   type SFSPB_ENUM_4 is
     (
      --  Disable input buffer
      Disable_Input_Buffer,
      --  Enable input buffer
      Enable_Input_Buffer)
     with Size => 1;
   for SFSPB_ENUM_4 use
     (Disable_Input_Buffer => 0,
      Enable_Input_Buffer => 1);

   --  Input glitch filter. Disable the input glitch filter for clocking
   --  signals higher than 30 MHz.
   type SFSPB_ENUM_5 is
     (
      --  Enable input glitch filter
      Enable_Input_Glitch,
      --  Disable input glitch filter
      Disable_Input_Glitch)
     with Size => 1;
   for SFSPB_ENUM_5 use
     (Enable_Input_Glitch => 0,
      Disable_Input_Glitch => 1);

   subtype SFSPB_RESERVED_Field is HAL.UInt24;

   --  Pin configuration register for pins PB
   type SFSPB_Register is record
      --  Select pin function.
      MODE     : SFSPB_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : SFSPB_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : SFSPB_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : SFSPB_ENUM_3 := LPC43xx.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : SFSPB_ENUM_4 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : SFSPB_ENUM_5 := LPC43xx.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSPB_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSPB_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins PB
   type SFSPB_Registers is array (0 .. 6) of SFSPB_Register
     with Volatile;

   --  Select pin function.
   type SFSPC_ENUM is
     (
      --  Function 0 (default)
      Function_0_Default,
      --  Function 1
      Function_1,
      --  Function 2
      Function_2,
      --  Function 3
      Function_3,
      --  Function 4
      Function_4,
      --  Function 5
      Function_5,
      --  Function 6
      Function_6,
      --  Function 7
      Function_7)
     with Size => 3;
   for SFSPC_ENUM use
     (Function_0_Default => 0,
      Function_1 => 1,
      Function_2 => 2,
      Function_3 => 3,
      Function_4 => 4,
      Function_5 => 5,
      Function_6 => 6,
      Function_7 => 7);

   --  Enable pull-down resistor at pad.
   type SFSPC_ENUM_1 is
     (
      --  Disable pull-down.
      Disable_Pull_Down,
      --  Enable pull-down.Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Down)
     with Size => 1;
   for SFSPC_ENUM_1 use
     (Disable_Pull_Down => 0,
      Enable_Pull_Down => 1);

   --  Disable pull-up resistor at pad. By default, the pull-up resistor is
   --  enabled at reset.
   type SFSPC_ENUM_2 is
     (
      --  Enable pull-up. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Up,
      --  Disable pull-up.
      Disable_Pull_Up)
     with Size => 1;
   for SFSPC_ENUM_2 use
     (Enable_Pull_Up => 0,
      Disable_Pull_Up => 1);

   --  Select Slew rate.
   type SFSPC_ENUM_3 is
     (
      --  Slow (low noise with medium speed)
      Slow_Low_Noise_With,
      --  Fast (medium noise with fast speed)
      Fast_Medium_Noise_W)
     with Size => 1;
   for SFSPC_ENUM_3 use
     (Slow_Low_Noise_With => 0,
      Fast_Medium_Noise_W => 1);

   --  Input buffer enable. The input buffer is disabled by default at reset
   --  and must be enabled for receiving.
   type SFSPC_ENUM_4 is
     (
      --  Disable input buffer
      Disable_Input_Buffer,
      --  Enable input buffer
      Enable_Input_Buffer)
     with Size => 1;
   for SFSPC_ENUM_4 use
     (Disable_Input_Buffer => 0,
      Enable_Input_Buffer => 1);

   --  Input glitch filter. Disable the input glitch filter for clocking
   --  signals higher than 30 MHz.
   type SFSPC_ENUM_5 is
     (
      --  Enable input glitch filter
      Enable_Input_Glitch,
      --  Disable input glitch filter
      Disable_Input_Glitch)
     with Size => 1;
   for SFSPC_ENUM_5 use
     (Enable_Input_Glitch => 0,
      Disable_Input_Glitch => 1);

   subtype SFSPC_RESERVED_Field is HAL.UInt24;

   --  Pin configuration register for pins PC
   type SFSPC_Register is record
      --  Select pin function.
      MODE     : SFSPC_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : SFSPC_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : SFSPC_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : SFSPC_ENUM_3 := LPC43xx.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : SFSPC_ENUM_4 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : SFSPC_ENUM_5 := LPC43xx.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSPC_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSPC_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins PC
   type SFSPC_Registers is array (0 .. 14) of SFSPC_Register
     with Volatile;

   --  Select pin function.
   type SFSPD_ENUM is
     (
      --  Function 0 (default)
      Function_0_Default,
      --  Function 1
      Function_1,
      --  Function 2
      Function_2,
      --  Function 3
      Function_3,
      --  Function 4
      Function_4,
      --  Function 5
      Function_5,
      --  Function 6
      Function_6,
      --  Function 7
      Function_7)
     with Size => 3;
   for SFSPD_ENUM use
     (Function_0_Default => 0,
      Function_1 => 1,
      Function_2 => 2,
      Function_3 => 3,
      Function_4 => 4,
      Function_5 => 5,
      Function_6 => 6,
      Function_7 => 7);

   --  Enable pull-down resistor at pad.
   type SFSPD_ENUM_1 is
     (
      --  Disable pull-down.
      Disable_Pull_Down,
      --  Enable pull-down.Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Down)
     with Size => 1;
   for SFSPD_ENUM_1 use
     (Disable_Pull_Down => 0,
      Enable_Pull_Down => 1);

   --  Disable pull-up resistor at pad. By default, the pull-up resistor is
   --  enabled at reset.
   type SFSPD_ENUM_2 is
     (
      --  Enable pull-up. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Up,
      --  Disable pull-up.
      Disable_Pull_Up)
     with Size => 1;
   for SFSPD_ENUM_2 use
     (Enable_Pull_Up => 0,
      Disable_Pull_Up => 1);

   --  Select Slew rate.
   type SFSPD_ENUM_3 is
     (
      --  Slow (low noise with medium speed)
      Slow_Low_Noise_With,
      --  Fast (medium noise with fast speed)
      Fast_Medium_Noise_W)
     with Size => 1;
   for SFSPD_ENUM_3 use
     (Slow_Low_Noise_With => 0,
      Fast_Medium_Noise_W => 1);

   --  Input buffer enable. The input buffer is disabled by default at reset
   --  and must be enabled for receiving.
   type SFSPD_ENUM_4 is
     (
      --  Disable input buffer
      Disable_Input_Buffer,
      --  Enable input buffer
      Enable_Input_Buffer)
     with Size => 1;
   for SFSPD_ENUM_4 use
     (Disable_Input_Buffer => 0,
      Enable_Input_Buffer => 1);

   --  Input glitch filter. Disable the input glitch filter for clocking
   --  signals higher than 30 MHz.
   type SFSPD_ENUM_5 is
     (
      --  Enable input glitch filter
      Enable_Input_Glitch,
      --  Disable input glitch filter
      Disable_Input_Glitch)
     with Size => 1;
   for SFSPD_ENUM_5 use
     (Enable_Input_Glitch => 0,
      Disable_Input_Glitch => 1);

   subtype SFSPD_RESERVED_Field is HAL.UInt24;

   --  Pin configuration register for pins PD
   type SFSPD_Register is record
      --  Select pin function.
      MODE     : SFSPD_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : SFSPD_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : SFSPD_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : SFSPD_ENUM_3 := LPC43xx.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : SFSPD_ENUM_4 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : SFSPD_ENUM_5 := LPC43xx.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSPD_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSPD_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins PD
   type SFSPD_Registers is array (0 .. 16) of SFSPD_Register
     with Volatile;

   --  Select pin function.
   type SFSPE_ENUM is
     (
      --  Function 0 (default)
      Function_0_Default,
      --  Function 1
      Function_1,
      --  Function 2
      Function_2,
      --  Function 3
      Function_3,
      --  Function 4
      Function_4,
      --  Function 5
      Function_5,
      --  Function 6
      Function_6,
      --  Function 7
      Function_7)
     with Size => 3;
   for SFSPE_ENUM use
     (Function_0_Default => 0,
      Function_1 => 1,
      Function_2 => 2,
      Function_3 => 3,
      Function_4 => 4,
      Function_5 => 5,
      Function_6 => 6,
      Function_7 => 7);

   --  Enable pull-down resistor at pad.
   type SFSPE_ENUM_1 is
     (
      --  Disable pull-down.
      Disable_Pull_Down,
      --  Enable pull-down.Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Down)
     with Size => 1;
   for SFSPE_ENUM_1 use
     (Disable_Pull_Down => 0,
      Enable_Pull_Down => 1);

   --  Disable pull-up resistor at pad. By default, the pull-up resistor is
   --  enabled at reset.
   type SFSPE_ENUM_2 is
     (
      --  Enable pull-up. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Up,
      --  Disable pull-up.
      Disable_Pull_Up)
     with Size => 1;
   for SFSPE_ENUM_2 use
     (Enable_Pull_Up => 0,
      Disable_Pull_Up => 1);

   --  Select Slew rate.
   type SFSPE_ENUM_3 is
     (
      --  Slow (low noise with medium speed)
      Slow_Low_Noise_With,
      --  Fast (medium noise with fast speed)
      Fast_Medium_Noise_W)
     with Size => 1;
   for SFSPE_ENUM_3 use
     (Slow_Low_Noise_With => 0,
      Fast_Medium_Noise_W => 1);

   --  Input buffer enable. The input buffer is disabled by default at reset
   --  and must be enabled for receiving.
   type SFSPE_ENUM_4 is
     (
      --  Disable input buffer
      Disable_Input_Buffer,
      --  Enable input buffer
      Enable_Input_Buffer)
     with Size => 1;
   for SFSPE_ENUM_4 use
     (Disable_Input_Buffer => 0,
      Enable_Input_Buffer => 1);

   --  Input glitch filter. Disable the input glitch filter for clocking
   --  signals higher than 30 MHz.
   type SFSPE_ENUM_5 is
     (
      --  Enable input glitch filter
      Enable_Input_Glitch,
      --  Disable input glitch filter
      Disable_Input_Glitch)
     with Size => 1;
   for SFSPE_ENUM_5 use
     (Enable_Input_Glitch => 0,
      Disable_Input_Glitch => 1);

   subtype SFSPE_RESERVED_Field is HAL.UInt24;

   --  Pin configuration register for pins PE
   type SFSPE_Register is record
      --  Select pin function.
      MODE     : SFSPE_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : SFSPE_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : SFSPE_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : SFSPE_ENUM_3 := LPC43xx.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : SFSPE_ENUM_4 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : SFSPE_ENUM_5 := LPC43xx.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSPE_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSPE_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins PE
   type SFSPE_Registers is array (0 .. 15) of SFSPE_Register
     with Volatile;

   --  Select pin function.
   type SFSPF_ENUM is
     (
      --  Function 0 (default)
      Function_0_Default,
      --  Function 1
      Function_1,
      --  Function 2
      Function_2,
      --  Function 3
      Function_3,
      --  Function 4
      Function_4,
      --  Function 5
      Function_5,
      --  Function 6
      Function_6,
      --  Function 7
      Function_7)
     with Size => 3;
   for SFSPF_ENUM use
     (Function_0_Default => 0,
      Function_1 => 1,
      Function_2 => 2,
      Function_3 => 3,
      Function_4 => 4,
      Function_5 => 5,
      Function_6 => 6,
      Function_7 => 7);

   --  Enable pull-down resistor at pad.
   type SFSPF_ENUM_1 is
     (
      --  Disable pull-down.
      Disable_Pull_Down,
      --  Enable pull-down.Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Down)
     with Size => 1;
   for SFSPF_ENUM_1 use
     (Disable_Pull_Down => 0,
      Enable_Pull_Down => 1);

   --  Disable pull-up resistor at pad. By default, the pull-up resistor is
   --  enabled at reset.
   type SFSPF_ENUM_2 is
     (
      --  Enable pull-up. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Up,
      --  Disable pull-up.
      Disable_Pull_Up)
     with Size => 1;
   for SFSPF_ENUM_2 use
     (Enable_Pull_Up => 0,
      Disable_Pull_Up => 1);

   --  Select Slew rate.
   type SFSPF_ENUM_3 is
     (
      --  Slow (low noise with medium speed)
      Slow_Low_Noise_With,
      --  Fast (medium noise with fast speed)
      Fast_Medium_Noise_W)
     with Size => 1;
   for SFSPF_ENUM_3 use
     (Slow_Low_Noise_With => 0,
      Fast_Medium_Noise_W => 1);

   --  Input buffer enable. The input buffer is disabled by default at reset
   --  and must be enabled for receiving.
   type SFSPF_ENUM_4 is
     (
      --  Disable input buffer
      Disable_Input_Buffer,
      --  Enable input buffer
      Enable_Input_Buffer)
     with Size => 1;
   for SFSPF_ENUM_4 use
     (Disable_Input_Buffer => 0,
      Enable_Input_Buffer => 1);

   --  Input glitch filter. Disable the input glitch filter for clocking
   --  signals higher than 30 MHz.
   type SFSPF_ENUM_5 is
     (
      --  Enable input glitch filter
      Enable_Input_Glitch,
      --  Disable input glitch filter
      Disable_Input_Glitch)
     with Size => 1;
   for SFSPF_ENUM_5 use
     (Enable_Input_Glitch => 0,
      Disable_Input_Glitch => 1);

   subtype SFSPF_RESERVED_Field is HAL.UInt24;

   --  Pin configuration register for pins PF
   type SFSPF_Register is record
      --  Select pin function.
      MODE     : SFSPF_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : SFSPF_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : SFSPF_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Select Slew rate.
      EHS      : SFSPF_ENUM_3 := LPC43xx.SCU.Slow_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : SFSPF_ENUM_4 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : SFSPF_ENUM_5 := LPC43xx.SCU.Enable_Input_Glitch;
      --  Reserved
      RESERVED : SFSPF_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSPF_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins PF
   type SFSPF_Registers is array (0 .. 11) of SFSPF_Register
     with Volatile;

   --  Select pin function.
   type SFSCLK_ENUM is
     (
      --  Function 0 (default)
      Function_0_Default,
      --  Function 1
      Function_1,
      --  Function 2
      Function_2,
      --  Function 3
      Function_3,
      --  Function 4
      Function_4,
      --  Function 5
      Function_5,
      --  Function 6
      Function_6,
      --  Function 7
      Function_7)
     with Size => 3;
   for SFSCLK_ENUM use
     (Function_0_Default => 0,
      Function_1 => 1,
      Function_2 => 2,
      Function_3 => 3,
      Function_4 => 4,
      Function_5 => 5,
      Function_6 => 6,
      Function_7 => 7);

   --  Enable pull-down resistor at pad.
   type SFSCLK_ENUM_1 is
     (
      --  Disable pull-down.
      Disable_Pull_Down,
      --  Enable pull-down. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Down)
     with Size => 1;
   for SFSCLK_ENUM_1 use
     (Disable_Pull_Down => 0,
      Enable_Pull_Down => 1);

   --  Disable pull-up resistor at pad. By default, the pull-up resistor is
   --  enabled at reset.
   type SFSCLK_ENUM_2 is
     (
      --  Enable pull-up. Enable both pull-down resistor and pull-up resistor
      --  for repeater mode.
      Enable_Pull_Up,
      --  Disable pull-up.
      Disable_Pull_Up)
     with Size => 1;
   for SFSCLK_ENUM_2 use
     (Enable_Pull_Up => 0,
      Disable_Pull_Up => 1);

   --  Slew rate
   type SFSCLK_ENUM_3 is
     (
      --  Fast (low noise with fast speed)
      Fast_Low_Noise_With,
      --  High-speed (medium noise with high speed)
      High_Speed_Medium_N)
     with Size => 1;
   for SFSCLK_ENUM_3 use
     (Fast_Low_Noise_With => 0,
      High_Speed_Medium_N => 1);

   --  Input buffer enable. The input buffer is disabled by default at reset
   --  and must be enabled for receiving.
   type SFSCLK_ENUM_4 is
     (
      --  Disable input buffer
      Disable_Input_Buffer,
      --  Enable input buffer
      Enable_Input_Buffer)
     with Size => 1;
   for SFSCLK_ENUM_4 use
     (Disable_Input_Buffer => 0,
      Enable_Input_Buffer => 1);

   --  Input glitch filter. Disable the input glitch filter for clocking
   --  signals higher than 30 MHz.
   type SFSCLK_ENUM_5 is
     (
      --  Enable input filter
      Enable_Input_Filter,
      --  Disable input filter
      Disable_Input_Filter)
     with Size => 1;
   for SFSCLK_ENUM_5 use
     (Enable_Input_Filter => 0,
      Disable_Input_Filter => 1);

   subtype SFSCLK_RESERVED_Field is HAL.UInt24;

   --  Pin configuration register for pins CLK
   type SFSCLK_Register is record
      --  Select pin function.
      MODE     : SFSCLK_ENUM := LPC43xx.SCU.Function_0_Default;
      --  Enable pull-down resistor at pad.
      EPD      : SFSCLK_ENUM_1 := LPC43xx.SCU.Disable_Pull_Down;
      --  Disable pull-up resistor at pad. By default, the pull-up resistor is
      --  enabled at reset.
      EPUN     : SFSCLK_ENUM_2 := LPC43xx.SCU.Enable_Pull_Up;
      --  Slew rate
      EHS      : SFSCLK_ENUM_3 := LPC43xx.SCU.Fast_Low_Noise_With;
      --  Input buffer enable. The input buffer is disabled by default at reset
      --  and must be enabled for receiving.
      EZI      : SFSCLK_ENUM_4 := LPC43xx.SCU.Disable_Input_Buffer;
      --  Input glitch filter. Disable the input glitch filter for clocking
      --  signals higher than 30 MHz.
      ZIF      : SFSCLK_ENUM_5 := LPC43xx.SCU.Enable_Input_Filter;
      --  Reserved
      RESERVED : SFSCLK_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSCLK_Register use record
      MODE     at 0 range 0 .. 2;
      EPD      at 0 range 3 .. 3;
      EPUN     at 0 range 4 .. 4;
      EHS      at 0 range 5 .. 5;
      EZI      at 0 range 6 .. 6;
      ZIF      at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Pin configuration register for pins CLK
   type SFSCLK_Registers is array (0 .. 3) of SFSCLK_Register
     with Volatile;

   --  Differential data input AIP/AIM.
   type SFSUSB_ENUM is
     (
      --  Going LOW with full speed edge rate
      Going_Low_With_Full,
      --  Going HIGH with full speed edge rate
      Going_High_With_Full)
     with Size => 1;
   for SFSUSB_ENUM use
     (Going_Low_With_Full => 0,
      Going_High_With_Full => 1);

   --  Control signal for differential input or single input.
   type SFSUSB_ENUM_1 is
     (
      --  Reserved. Do not use.
      Reserved,
      --  Single input. Enables USB1. Use with the on-chip full-speed PHY.
      Single_Input)
     with Size => 1;
   for SFSUSB_ENUM_1 use
     (Reserved => 0,
      Single_Input => 1);

   --  Enable pull-down connect.
   type SFSUSB_ENUM_2 is
     (
      --  Pull-down disconnected
      Pull_Down_Disconnect,
      --  Pull-down connected
      Pull_Down_Connected)
     with Size => 1;
   for SFSUSB_ENUM_2 use
     (Pull_Down_Disconnect => 0,
      Pull_Down_Connected => 1);

   --  Power mode.
   type SFSUSB_ENUM_3 is
     (
      --  Power saving mode (Suspend mode)
      Power_Saving_Mode_S,
      --  Normal mode
      Normal_Mode)
     with Size => 1;
   for SFSUSB_ENUM_3 use
     (Power_Saving_Mode_S => 0,
      Normal_Mode => 1);

   --  Enable the vbus_valid signal. This signal is monitored by the USB1
   --  block. Use this bit for software de-bouncing of the VBUS sense signal or
   --  to indicate the VBUS state to the USB1 controller when the VBUS signal
   --  is present but the USB1_VBUS function is not connected in the SFSP2_5
   --  register. The setting of this bit has no effect if the USB1_VBUS
   --  function of pin P2_5 is enabled through the SFSP2_5 register.
   type SFSUSB_ENUM_4 is
     (
      --  VBUS signal LOW or inactive
      Vbus_Signal_Low_Or_I,
      --  VBUS signal HIGH or active
      Vbus_Signal_High_Or)
     with Size => 1;
   for SFSUSB_ENUM_4 use
     (Vbus_Signal_Low_Or_I => 0,
      Vbus_Signal_High_Or => 1);

   subtype SFSUSB_RESERVED_Field is HAL.UInt26;

   --  Pin configuration register for pins USB1_DM and USB1_DP
   type SFSUSB_Register is record
      --  Differential data input AIP/AIM.
      USB_AIM    : SFSUSB_ENUM := LPC43xx.SCU.Going_Low_With_Full;
      --  Control signal for differential input or single input.
      USB_ESEA   : SFSUSB_ENUM_1 := LPC43xx.SCU.Single_Input;
      --  Enable pull-down connect.
      USB_EPD    : SFSUSB_ENUM_2 := LPC43xx.SCU.Pull_Down_Disconnect;
      --  Reserved
      RESERVED   : Boolean := False;
      --  Power mode.
      USB_EPWR   : SFSUSB_ENUM_3 := LPC43xx.SCU.Power_Saving_Mode_S;
      --  Enable the vbus_valid signal. This signal is monitored by the USB1
      --  block. Use this bit for software de-bouncing of the VBUS sense signal
      --  or to indicate the VBUS state to the USB1 controller when the VBUS
      --  signal is present but the USB1_VBUS function is not connected in the
      --  SFSP2_5 register. The setting of this bit has no effect if the
      --  USB1_VBUS function of pin P2_5 is enabled through the SFSP2_5
      --  register.
      USB_VBUS   : SFSUSB_ENUM_4 := LPC43xx.SCU.Vbus_Signal_Low_Or_I;
      --  Reserved
      RESERVED_1 : SFSUSB_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSUSB_Register use record
      USB_AIM    at 0 range 0 .. 0;
      USB_ESEA   at 0 range 1 .. 1;
      USB_EPD    at 0 range 2 .. 2;
      RESERVED   at 0 range 3 .. 3;
      USB_EPWR   at 0 range 4 .. 4;
      USB_VBUS   at 0 range 5 .. 5;
      RESERVED_1 at 0 range 6 .. 31;
   end record;

   --  Select input glitch filter time constant for the SCL pin.
   type SFSI2C0_ENUM is
     (
      --  50 ns glitch filter
      Val_50_Ns_Glitch_Filter,
      --  3 ns glitch filter
      Val_3_Ns_Glitch_Filter)
     with Size => 1;
   for SFSI2C0_ENUM use
     (Val_50_Ns_Glitch_Filter => 0,
      Val_3_Ns_Glitch_Filter => 1);

   --  Select I2C mode for the SCL pin.
   type SFSI2C0_ENUM_1 is
     (
      --  Standard/Fast mode transmit
      Standardfast_Mode,
      --  Fast-mode Plus transmit
      Fast_Mode_Plus_Trans)
     with Size => 1;
   for SFSI2C0_ENUM_1 use
     (Standardfast_Mode => 0,
      Fast_Mode_Plus_Trans => 1);

   --  Enable the input receiver for the SCL pin. Always write a 1 to this bit
   --  when using the I2C0.
   type SFSI2C0_ENUM_2 is
     (
      --  Disabled
      Disabled,
      --  Enabled
      Enabled)
     with Size => 1;
   for SFSI2C0_ENUM_2 use
     (Disabled => 0,
      Enabled => 1);

   subtype SFSI2C0_RESERVED_Field is HAL.UInt3;

   --  Enable or disable input glitch filter for the SCL pin. The filter time
   --  constant is determined by bit EFP.
   type SFSI2C0_ENUM_3 is
     (
      --  Enable input filter
      Enable_Input_Filter,
      --  Disable input filter
      Disable_Input_Filter)
     with Size => 1;
   for SFSI2C0_ENUM_3 use
     (Enable_Input_Filter => 0,
      Disable_Input_Filter => 1);

   subtype SFSI2C0_RESERVED_Field_1 is HAL.UInt16;

   --  Pin configuration register for I2C0-bus pins
   type SFSI2C0_Register is record
      --  Select input glitch filter time constant for the SCL pin.
      SCL_EFP    : SFSI2C0_ENUM := LPC43xx.SCU.Val_50_Ns_Glitch_Filter;
      --  Reserved. Always write a 0 to this bit.
      RESERVED   : Boolean := False;
      --  Select I2C mode for the SCL pin.
      SCL_EHD    : SFSI2C0_ENUM_1 := LPC43xx.SCU.Standardfast_Mode;
      --  Enable the input receiver for the SCL pin. Always write a 1 to this
      --  bit when using the I2C0.
      SCL_EZI    : SFSI2C0_ENUM_2 := LPC43xx.SCU.Disabled;
      --  Reserved
      RESERVED_1 : SFSI2C0_RESERVED_Field := 16#0#;
      --  Enable or disable input glitch filter for the SCL pin. The filter
      --  time constant is determined by bit EFP.
      SCL_ZIF    : SFSI2C0_ENUM_3 := LPC43xx.SCU.Enable_Input_Filter;
      --  Select input glitch filter time constant for the SDA pin.
      SDA_EFP    : SFSI2C0_ENUM := LPC43xx.SCU.Val_50_Ns_Glitch_Filter;
      --  Reserved. Always write a 0 to this bit.
      RESERVED_2 : Boolean := False;
      --  Select I2C mode for the SDA pin.
      SDA_EHD    : SFSI2C0_ENUM_1 := LPC43xx.SCU.Standardfast_Mode;
      --  Enable the input receiver for the SDA pin. Always write a 1 to this
      --  bit when using the I2C0.
      SDA_EZI    : SFSI2C0_ENUM_2 := LPC43xx.SCU.Disabled;
      --  Reserved
      RESERVED_3 : SFSI2C0_RESERVED_Field := 16#0#;
      --  Enable or disable input glitch filter for the SDA pin. The filter
      --  time constant is determined by bit SDA_EFP.
      SDA_ZIF    : SFSI2C0_ENUM_3 := LPC43xx.SCU.Enable_Input_Filter;
      --  Reserved
      RESERVED_4 : SFSI2C0_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFSI2C0_Register use record
      SCL_EFP    at 0 range 0 .. 0;
      RESERVED   at 0 range 1 .. 1;
      SCL_EHD    at 0 range 2 .. 2;
      SCL_EZI    at 0 range 3 .. 3;
      RESERVED_1 at 0 range 4 .. 6;
      SCL_ZIF    at 0 range 7 .. 7;
      SDA_EFP    at 0 range 8 .. 8;
      RESERVED_2 at 0 range 9 .. 9;
      SDA_EHD    at 0 range 10 .. 10;
      SDA_EZI    at 0 range 11 .. 11;
      RESERVED_3 at 0 range 12 .. 14;
      SDA_ZIF    at 0 range 15 .. 15;
      RESERVED_4 at 0 range 16 .. 31;
   end record;

   --  Select ADC0_0
   type ENAIO0_ENUM is
     (
      --  Digital function selected on pin P4_3.
      Digital_Function_Sel,
      --  Analog function ADC0_0 selected on pin P4_3
      Analog_Function_Adc0)
     with Size => 1;
   for ENAIO0_ENUM use
     (Digital_Function_Sel => 0,
      Analog_Function_Adc0 => 1);

   --  ADC0 function select register
   type ENAIO0_Register is record
      --  Select ADC0_0
      ADC0_0        : ENAIO0_ENUM := LPC43xx.SCU.Digital_Function_Sel;
      --  Select ADC0_1
      ADC0_1        : ENAIO0_ENUM := LPC43xx.SCU.Digital_Function_Sel;
      --  Select ADC0_2
      ADC0_2        : ENAIO0_ENUM := LPC43xx.SCU.Digital_Function_Sel;
      --  Select ADC0_3
      ADC0_3        : ENAIO0_ENUM := LPC43xx.SCU.Digital_Function_Sel;
      --  Select ADC0_4
      ADC0_4        : ENAIO0_ENUM := LPC43xx.SCU.Digital_Function_Sel;
      --  Select ADC0_5
      ADC0_5        : ENAIO0_ENUM := LPC43xx.SCU.Digital_Function_Sel;
      --  Select ADC0_6
      ADC0_6        : ENAIO0_ENUM := LPC43xx.SCU.Digital_Function_Sel;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENAIO0_Register use record
      ADC0_0        at 0 range 0 .. 0;
      ADC0_1        at 0 range 1 .. 1;
      ADC0_2        at 0 range 2 .. 2;
      ADC0_3        at 0 range 3 .. 3;
      ADC0_4        at 0 range 4 .. 4;
      ADC0_5        at 0 range 5 .. 5;
      ADC0_6        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Select ADC1_0
   type ENAIO1_ENUM is
     (
      --  Digital function selected on pin PC_3.
      Digital_Function_Sel,
      --  Analog function ADC1_0 selected on pin PC_3.
      Analog_Function_Adc1)
     with Size => 1;
   for ENAIO1_ENUM use
     (Digital_Function_Sel => 0,
      Analog_Function_Adc1 => 1);

   --  ADC1 function select register
   type ENAIO1_Register is record
      --  Select ADC1_0
      ADC1_0        : ENAIO1_ENUM := LPC43xx.SCU.Digital_Function_Sel;
      --  Select ADC1_1
      ADC1_1        : ENAIO1_ENUM := LPC43xx.SCU.Digital_Function_Sel;
      --  Select ADC1_2
      ADC1_2        : ENAIO1_ENUM := LPC43xx.SCU.Digital_Function_Sel;
      --  Select ADC1_3
      ADC1_3        : ENAIO1_ENUM := LPC43xx.SCU.Digital_Function_Sel;
      --  Select ADC1_4
      ADC1_4        : ENAIO1_ENUM := LPC43xx.SCU.Digital_Function_Sel;
      --  Select ADC1_5
      ADC1_5        : ENAIO1_ENUM := LPC43xx.SCU.Digital_Function_Sel;
      --  Select ADC1_6
      ADC1_6        : ENAIO1_ENUM := LPC43xx.SCU.Digital_Function_Sel;
      --  Select ADC1_7.
      ADC1_7        : ENAIO1_ENUM := LPC43xx.SCU.Digital_Function_Sel;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENAIO1_Register use record
      ADC1_0        at 0 range 0 .. 0;
      ADC1_1        at 0 range 1 .. 1;
      ADC1_2        at 0 range 2 .. 2;
      ADC1_3        at 0 range 3 .. 3;
      ADC1_4        at 0 range 4 .. 4;
      ADC1_5        at 0 range 5 .. 5;
      ADC1_6        at 0 range 6 .. 6;
      ADC1_7        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Select DAC
   type ENAIO2_ENUM is
     (
      --  Digital function selected on pin P4_4.
      Digital_Function_Sel,
      --  Analog function DAC selected on pin P4_4.
      Analog_Function_Dac)
     with Size => 1;
   for ENAIO2_ENUM use
     (Digital_Function_Sel => 0,
      Analog_Function_Dac => 1);

   --  Select band gap output. To measure the band gap, disable the pull-up on
   --  pin PF_7 and connect PF_7 to the digital pad. Do not use the digital pad
   --  nor the ADC1_7 on the board when measuring the band gap (see Section
   --  15.4.8.1).
   type ENAIO2_ENUM_1 is
     (
      --  Digital function selected on pin PF_7.
      Digital_Function_Sel,
      --  Band gap output selected for pin PF_7.
      Band_Gap_Output_Sele)
     with Size => 1;
   for ENAIO2_ENUM_1 use
     (Digital_Function_Sel => 0,
      Band_Gap_Output_Sele => 1);

   --  Analog function select register
   type ENAIO2_Register is record
      --  Select DAC
      DAC           : ENAIO2_ENUM := LPC43xx.SCU.Digital_Function_Sel;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Select band gap output. To measure the band gap, disable the pull-up
      --  on pin PF_7 and connect PF_7 to the digital pad. Do not use the
      --  digital pad nor the ADC1_7 on the board when measuring the band gap
      --  (see Section 15.4.8.1).
      BG            : ENAIO2_ENUM_1 := LPC43xx.SCU.Digital_Function_Sel;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENAIO2_Register use record
      DAC           at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      BG            at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype EMCDELAYCLK_CLK_DELAY_Field is HAL.UInt16;
   subtype EMCDELAYCLK_RESERVED_Field is HAL.UInt16;

   --  EMC clock delay register
   type EMCDELAYCLK_Register is record
      --  EMC_CLKn SDRAM clock output delay. 0x0 = no delay 0x1111
      --  approximately 0.5 ns delay 0x2222 approximately 1.0 ns delay 0x3333
      --  approximately 1.5 ns delay 0x4444 approximately 2.0 ns delay 0x5555
      --  approximately 2.5 ns delay 0x6666 approximately 3.0 ns delay 0x7777
      --  approximately 3.5 ns delay
      CLK_DELAY : EMCDELAYCLK_CLK_DELAY_Field := 16#0#;
      --  Reserved. Do not write ones to reserved register bits.
      RESERVED  : EMCDELAYCLK_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMCDELAYCLK_Register use record
      CLK_DELAY at 0 range 0 .. 15;
      RESERVED  at 0 range 16 .. 31;
   end record;

   subtype SDDELAY_SAMPLE_DELAY_Field is HAL.UInt4;
   subtype SDDELAY_RESERVED_Field is HAL.UInt4;
   subtype SDDELAY_DRV_DELAY_Field is HAL.UInt4;
   subtype SDDELAY_RESERVED_Field_1 is HAL.UInt20;

   --  SD/MMC sample and drive delay register
   type SDDELAY_Register is record
      --  SD/MMC sample delay. The delay value is SAMPLE_DELAY x 0.5 ns.
      SAMPLE_DELAY : SDDELAY_SAMPLE_DELAY_Field := 16#0#;
      --  Reserved. Do not write ones to reserved register bits.
      RESERVED     : SDDELAY_RESERVED_Field := 16#0#;
      --  SD/MMC drive delay. The delay value is DRV_DELAY x 0.5 ns. The values
      --  DRV_DELAY = 0 and DRV_DELAY = 1 are not allowed.
      DRV_DELAY    : SDDELAY_DRV_DELAY_Field := 16#0#;
      --  Reserved. Do not write ones to reserved register bits.
      RESERVED_1   : SDDELAY_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDDELAY_Register use record
      SAMPLE_DELAY at 0 range 0 .. 3;
      RESERVED     at 0 range 4 .. 7;
      DRV_DELAY    at 0 range 8 .. 11;
      RESERVED_1   at 0 range 12 .. 31;
   end record;

   subtype PINTSEL0_INTPIN0_Field is HAL.UInt5;

   --  Pin interrupt 0: Select the port for the pin number to be selected in
   --  the INTPIN0 bits of this register.
   type PINTSEL0_ENUM is
     (
      --  GPIO Port 0
      Gpio_Port_0,
      --  GPIO Port 1
      Gpio_Port_1,
      --  GPIO Port 2
      Gpio_Port_2,
      --  GPIO Port 3
      Gpio_Port_3,
      --  GPIO Port 4
      Gpio_Port_4,
      --  GPIO Port 5
      Gpio_Port_5,
      --  GPIO Port 6
      Gpio_Port_6,
      --  GPIO Port 7
      Gpio_Port_7)
     with Size => 3;
   for PINTSEL0_ENUM use
     (Gpio_Port_0 => 0,
      Gpio_Port_1 => 1,
      Gpio_Port_2 => 2,
      Gpio_Port_3 => 3,
      Gpio_Port_4 => 4,
      Gpio_Port_5 => 5,
      Gpio_Port_6 => 6,
      Gpio_Port_7 => 7);

   subtype PINTSEL0_INTPIN1_Field is HAL.UInt5;
   subtype PINTSEL0_INTPIN2_Field is HAL.UInt5;
   subtype PINTSEL0_INTPIN3_Field is HAL.UInt5;

   --  Pin interrupt select register for pin interrupts 0 to 3.
   type PINTSEL0_Register is record
      --  Pint interrupt 0: Select the pin number within the GPIO port selected
      --  by the PORTSEL0 bit in this register.
      INTPIN0  : PINTSEL0_INTPIN0_Field := 16#0#;
      --  Pin interrupt 0: Select the port for the pin number to be selected in
      --  the INTPIN0 bits of this register.
      PORTSEL0 : PINTSEL0_ENUM := LPC43xx.SCU.Gpio_Port_0;
      --  Pint interrupt 1: Select the pin number within the GPIO port selected
      --  by the PORTSEL1 bit in this register.
      INTPIN1  : PINTSEL0_INTPIN1_Field := 16#0#;
      --  Pin interrupt 1: Select the port for the pin number to be selected in
      --  the INTPIN1 bits of this register.
      PORTSEL1 : PINTSEL0_ENUM := LPC43xx.SCU.Gpio_Port_0;
      --  Pint interrupt 2: Select the pin number within the GPIO port selected
      --  by the PORTSEL2 bit in this register.
      INTPIN2  : PINTSEL0_INTPIN2_Field := 16#0#;
      --  Pin interrupt 2: Select the port for the pin number to be selected in
      --  the INTPIN2 bits of this register.
      PORTSEL2 : PINTSEL0_ENUM := LPC43xx.SCU.Gpio_Port_0;
      --  Pint interrupt 3: Select the pin number within the GPIO port selected
      --  by the PORTSEL3 bit in this register.
      INTPIN3  : PINTSEL0_INTPIN3_Field := 16#0#;
      --  Pin interrupt 3: Select the port for the pin number to be selected in
      --  the INTPIN3 bits of this register.
      PORTSEL3 : PINTSEL0_ENUM := LPC43xx.SCU.Gpio_Port_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PINTSEL0_Register use record
      INTPIN0  at 0 range 0 .. 4;
      PORTSEL0 at 0 range 5 .. 7;
      INTPIN1  at 0 range 8 .. 12;
      PORTSEL1 at 0 range 13 .. 15;
      INTPIN2  at 0 range 16 .. 20;
      PORTSEL2 at 0 range 21 .. 23;
      INTPIN3  at 0 range 24 .. 28;
      PORTSEL3 at 0 range 29 .. 31;
   end record;

   subtype PINTSEL1_INTPIN4_Field is HAL.UInt5;

   --  Pin interrupt 4: Select the port for the pin number to be selected in
   --  the INTPIN4 bits of this register.
   type PINTSEL1_ENUM is
     (
      --  GPIO Port 0
      Gpio_Port_0,
      --  GPIO Port 1
      Gpio_Port_1,
      --  GPIO Port 2
      Gpio_Port_2,
      --  GPIO Port 3
      Gpio_Port_3,
      --  GPIO Port 4
      Gpio_Port_4,
      --  GPIO Port 5
      Gpio_Port_5,
      --  GPIO Port 6
      Gpio_Port_6,
      --  GPIO Port 7
      Gpio_Port_7)
     with Size => 3;
   for PINTSEL1_ENUM use
     (Gpio_Port_0 => 0,
      Gpio_Port_1 => 1,
      Gpio_Port_2 => 2,
      Gpio_Port_3 => 3,
      Gpio_Port_4 => 4,
      Gpio_Port_5 => 5,
      Gpio_Port_6 => 6,
      Gpio_Port_7 => 7);

   subtype PINTSEL1_INTPIN5_Field is HAL.UInt5;
   subtype PINTSEL1_INTPIN6_Field is HAL.UInt5;
   subtype PINTSEL1_INTPIN7_Field is HAL.UInt5;

   --  Pin interrupt select register for pin interrupts 4 to 7.
   type PINTSEL1_Register is record
      --  Pint interrupt 4: Select the pin number within the GPIO port selected
      --  by the PORTSEL4 bit in this register.
      INTPIN4  : PINTSEL1_INTPIN4_Field := 16#0#;
      --  Pin interrupt 4: Select the port for the pin number to be selected in
      --  the INTPIN4 bits of this register.
      PORTSEL4 : PINTSEL1_ENUM := LPC43xx.SCU.Gpio_Port_0;
      --  Pint interrupt 5: Select the pin number within the GPIO port selected
      --  by the PORTSEL5 bit in this register.
      INTPIN5  : PINTSEL1_INTPIN5_Field := 16#0#;
      --  Pin interrupt 5: Select the port for the pin number to be selected in
      --  the INTPIN5 bits of this register.
      PORTSEL5 : PINTSEL1_ENUM := LPC43xx.SCU.Gpio_Port_0;
      --  Pint interrupt 6: Select the pin number within the GPIO port selected
      --  by the PORTSEL6 bit in this register.
      INTPIN6  : PINTSEL1_INTPIN6_Field := 16#0#;
      --  Pin interrupt 6: Select the port for the pin number to be selected in
      --  the INTPIN6 bits of this register.
      PORTSEL6 : PINTSEL1_ENUM := LPC43xx.SCU.Gpio_Port_0;
      --  Pint interrupt 7: Select the pin number within the GPIO port selected
      --  by the PORTSEL7 bit in this register.
      INTPIN7  : PINTSEL1_INTPIN7_Field := 16#0#;
      --  Pin interrupt 7: Select the port for the pin number to be selected in
      --  the INTPIN7 bits of this register.
      PORTSEL7 : PINTSEL1_ENUM := LPC43xx.SCU.Gpio_Port_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PINTSEL1_Register use record
      INTPIN4  at 0 range 0 .. 4;
      PORTSEL4 at 0 range 5 .. 7;
      INTPIN5  at 0 range 8 .. 12;
      PORTSEL5 at 0 range 13 .. 15;
      INTPIN6  at 0 range 16 .. 20;
      PORTSEL6 at 0 range 21 .. 23;
      INTPIN7  at 0 range 24 .. 28;
      PORTSEL7 at 0 range 29 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Control Unit (SCU) I/O configuration
   type SCU_Peripheral is record
      --  Pin configuration register for pins P0
      SFSP0       : aliased SFSP0_Registers;
      --  Pin configuration register for pins P1
      SFSP1       : aliased SFSP1_Registers;
      --  Pin configuration register for pins P1_17
      SFSP1_17    : aliased SFSP1_17_Register;
      --  Pin configuration register for pins P1
      SFSP1_1     : aliased SFSP_Registers;
      --  Pin configuration register for pins P2
      SFSP2       : aliased SFSP_Registers;
      --  Pin configuration register for pins P2
      SFSP2_1     : aliased SFSP2_Registers;
      --  Pin configuration register for pins P2
      SFSP2_2     : aliased SFSP2_Registers_1;
      --  Pin configuration register for pins P3
      SFSP3       : aliased SFSP_Registers;
      --  Pin configuration register for pins P3
      SFSP3_3     : aliased SFSP3_3_Register;
      --  Pin configuration register for pins P3
      SFSP3_1     : aliased SFSP3_Registers;
      --  Pin configuration register for pins P4
      SFSP4       : aliased SFSP4_Registers;
      --  Pin configuration register for pins P5
      SFSP5       : aliased SFSP_Registers_1;
      --  Pin configuration register for pins P6
      SFSP6       : aliased SFSP6_Registers;
      --  Pin configuration register for pins P7
      SFSP7       : aliased SFSP_Registers_1;
      --  Pin configuration register for pins P8
      SFSP8       : aliased SFSP_Registers;
      --  Pin configuration register for pins P8
      SFSP8_1     : aliased SFSP8_Registers;
      --  Pin configuration register for pins P9
      SFSP9       : aliased SFSP9_Registers;
      --  Pin configuration register for pins PA
      SFSPA_0     : aliased SFSPA_0_Register;
      --  Pin configuration register for pins PA
      SFSPA       : aliased SFSPA_Registers;
      --  Pin configuration register for pins PA
      SFSPA_4     : aliased SFSPA_4_Register;
      --  Pin configuration register for pins PB
      SFSPB       : aliased SFSPB_Registers;
      --  Pin configuration register for pins PC
      SFSPC       : aliased SFSPC_Registers;
      --  Pin configuration register for pins PD
      SFSPD       : aliased SFSPD_Registers;
      --  Pin configuration register for pins PE
      SFSPE       : aliased SFSPE_Registers;
      --  Pin configuration register for pins PF
      SFSPF       : aliased SFSPF_Registers;
      --  Pin configuration register for pins CLK
      SFSCLK      : aliased SFSCLK_Registers;
      --  Pin configuration register for pins USB1_DM and USB1_DP
      SFSUSB      : aliased SFSUSB_Register;
      --  Pin configuration register for I2C0-bus pins
      SFSI2C0     : aliased SFSI2C0_Register;
      --  ADC0 function select register
      ENAIO0      : aliased ENAIO0_Register;
      --  ADC1 function select register
      ENAIO1      : aliased ENAIO1_Register;
      --  Analog function select register
      ENAIO2      : aliased ENAIO2_Register;
      --  EMC clock delay register
      EMCDELAYCLK : aliased EMCDELAYCLK_Register;
      --  SD/MMC sample and drive delay register
      SDDELAY     : aliased SDDELAY_Register;
      --  Pin interrupt select register for pin interrupts 0 to 3.
      PINTSEL0    : aliased PINTSEL0_Register;
      --  Pin interrupt select register for pin interrupts 4 to 7.
      PINTSEL1    : aliased PINTSEL1_Register;
   end record
     with Volatile;

   for SCU_Peripheral use record
      SFSP0       at 16#0# range 0 .. 63;
      SFSP1       at 16#80# range 0 .. 543;
      SFSP1_17    at 16#C4# range 0 .. 31;
      SFSP1_1     at 16#C8# range 0 .. 95;
      SFSP2       at 16#100# range 0 .. 95;
      SFSP2_1     at 16#10C# range 0 .. 95;
      SFSP2_2     at 16#118# range 0 .. 223;
      SFSP3       at 16#180# range 0 .. 95;
      SFSP3_3     at 16#18C# range 0 .. 31;
      SFSP3_1     at 16#190# range 0 .. 159;
      SFSP4       at 16#200# range 0 .. 351;
      SFSP5       at 16#280# range 0 .. 255;
      SFSP6       at 16#300# range 0 .. 415;
      SFSP7       at 16#380# range 0 .. 255;
      SFSP8       at 16#400# range 0 .. 95;
      SFSP8_1     at 16#40C# range 0 .. 191;
      SFSP9       at 16#480# range 0 .. 223;
      SFSPA_0     at 16#500# range 0 .. 31;
      SFSPA       at 16#504# range 0 .. 95;
      SFSPA_4     at 16#510# range 0 .. 31;
      SFSPB       at 16#580# range 0 .. 223;
      SFSPC       at 16#600# range 0 .. 479;
      SFSPD       at 16#680# range 0 .. 543;
      SFSPE       at 16#700# range 0 .. 511;
      SFSPF       at 16#780# range 0 .. 383;
      SFSCLK      at 16#C00# range 0 .. 127;
      SFSUSB      at 16#C80# range 0 .. 31;
      SFSI2C0     at 16#C84# range 0 .. 31;
      ENAIO0      at 16#C88# range 0 .. 31;
      ENAIO1      at 16#C8C# range 0 .. 31;
      ENAIO2      at 16#C90# range 0 .. 31;
      EMCDELAYCLK at 16#D00# range 0 .. 31;
      SDDELAY     at 16#D80# range 0 .. 31;
      PINTSEL0    at 16#E00# range 0 .. 31;
      PINTSEL1    at 16#E04# range 0 .. 31;
   end record;

   --  System Control Unit (SCU) I/O configuration
   SCU_Periph : aliased SCU_Peripheral
     with Import, Address => System'To_Address (16#40086000#);

end LPC43xx.SCU;
