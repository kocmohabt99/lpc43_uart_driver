--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package LPC43xx.CCU2 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Initiate power-down mode
   type PM_ENUM is
     (
      --  Normal operation.
      Normal_Operation,
      --  Clocks with wake-up mode enabled (W = 1) are disabled.
      Clocks_With_Wake_Up)
     with Size => 1;
   for PM_ENUM use
     (Normal_Operation => 0,
      Clocks_With_Wake_Up => 1);

   subtype PM_RESERVED_Field is HAL.UInt31;

   --  Power mode register
   type PM_Register is record
      --  Initiate power-down mode
      PD       : PM_ENUM := LPC43xx.CCU2.Normal_Operation;
      --  Reserved.
      RESERVED : PM_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_Register use record
      PD       at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 31;
   end record;

   subtype BASE_STAT_RESERVED_Field is HAL.UInt24;

   --  CCU base clocks status register
   type BASE_STAT_Register is record
      --  Read-only. Reserved.
      RESERVED       : Boolean;
      --  Read-only. Base clock indicator for BASE_UART3_CLK 0 = All branch
      --  clocks switched off. 1 = At least one branch clock running.
      BASE_UART3_CLK : Boolean;
      --  Read-only. Base clock indicator for BASE_UART2_CLK 0 = All branch
      --  clocks switched off. 1 = At least one branch clock running.
      BASE_UART2_CLK : Boolean;
      --  Read-only. Base clock indicator for BASE_UART1_CLK 0 = All branch
      --  clocks switched off. 1 = At least one branch clock running.
      BASE_UART1_CLK : Boolean;
      --  Read-only. Base clock indicator for BASE_UART0_CLK 0 = All branch
      --  clocks switched off. 1 = At least one branch clock running.
      BASE_UART0_CLK : Boolean;
      --  Read-only. Base clock indicator for BASE_SSP1_CLK 0 = All branch
      --  clocks switched off. 1 = At least one branch clock running.
      BASE_SSP1_CLK  : Boolean;
      --  Read-only. Base clock indicator for BASE_SSP0_CLK 0 = All branch
      --  clocks switched off. 1 = At least one branch clock running.
      BASE_SSP0_CLK  : Boolean;
      --  Read-only. Reserved.
      RESERVED_1     : Boolean;
      --  Read-only. Reserved.
      RESERVED_2     : BASE_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_STAT_Register use record
      RESERVED       at 0 range 0 .. 0;
      BASE_UART3_CLK at 0 range 1 .. 1;
      BASE_UART2_CLK at 0 range 2 .. 2;
      BASE_UART1_CLK at 0 range 3 .. 3;
      BASE_UART0_CLK at 0 range 4 .. 4;
      BASE_SSP1_CLK  at 0 range 5 .. 5;
      BASE_SSP0_CLK  at 0 range 6 .. 6;
      RESERVED_1     at 0 range 7 .. 7;
      RESERVED_2     at 0 range 8 .. 31;
   end record;

   --  Run enable
   type CLK_AUDIO_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_AUDIO_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_AUDIO_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_AUDIO clock configuration register
   type CLK_AUDIO_CFG_Register is record
      --  Run enable
      RUN      : CLK_AUDIO_CFG_ENUM := LPC43xx.CCU2.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_AUDIO_CFG_ENUM := LPC43xx.CCU2.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_AUDIO_CFG_ENUM := LPC43xx.CCU2.Disabled;
      --  Reserved.
      RESERVED : CLK_AUDIO_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_AUDIO_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_AUDIO_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_AUDIO clock status register
   type CLK_AUDIO_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : Boolean;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : Boolean;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : Boolean;
      --  Read-only. Reserved
      RESERVED : CLK_AUDIO_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_AUDIO_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_APB2_USART3_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_APB2_USART3_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_APB2_USART3_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_APB2_USART3 clock configuration register
   type CLK_APB2_USART3_CFG_Register is record
      --  Run enable
      RUN      : CLK_APB2_USART3_CFG_ENUM := LPC43xx.CCU2.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_APB2_USART3_CFG_ENUM := LPC43xx.CCU2.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_APB2_USART3_CFG_ENUM := LPC43xx.CCU2.Disabled;
      --  Reserved.
      RESERVED : CLK_APB2_USART3_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB2_USART3_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_APB2_USART3_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_APB2_USART3 clock status register
   type CLK_APB2_USART3_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : Boolean;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : Boolean;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : Boolean;
      --  Read-only. Reserved
      RESERVED : CLK_APB2_USART3_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB2_USART3_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_APB2_USART2_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_APB2_USART2_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_APB2_USART2_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_APB2_USART2 clock configuration register
   type CLK_APB2_USART2_CFG_Register is record
      --  Run enable
      RUN      : CLK_APB2_USART2_CFG_ENUM := LPC43xx.CCU2.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_APB2_USART2_CFG_ENUM := LPC43xx.CCU2.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_APB2_USART2_CFG_ENUM := LPC43xx.CCU2.Disabled;
      --  Reserved.
      RESERVED : CLK_APB2_USART2_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB2_USART2_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_APB2_USART2_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_APB2_USART clock status register
   type CLK_APB2_USART2_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : Boolean;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : Boolean;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : Boolean;
      --  Read-only. Reserved
      RESERVED : CLK_APB2_USART2_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB2_USART2_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_APB0_UART1_BUS_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_APB0_UART1_BUS_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_APB0_UART1_BUS_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_APB2_UART1 clock configuration register
   type CLK_APB0_UART1_BUS_CFG_Register is record
      --  Run enable
      RUN      : CLK_APB0_UART1_BUS_CFG_ENUM := LPC43xx.CCU2.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_APB0_UART1_BUS_CFG_ENUM := LPC43xx.CCU2.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_APB0_UART1_BUS_CFG_ENUM := LPC43xx.CCU2.Disabled;
      --  Reserved.
      RESERVED : CLK_APB0_UART1_BUS_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB0_UART1_BUS_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_APB0_UART1_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_APB0_UART1 clock status register
   type CLK_APB0_UART1_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : Boolean;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : Boolean;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : Boolean;
      --  Read-only. Reserved
      RESERVED : CLK_APB0_UART1_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB0_UART1_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_APB0_USART0_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_APB0_USART0_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_APB0_USART0_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_APB2_USART0 clock configuration register
   type CLK_APB0_USART0_CFG_Register is record
      --  Run enable
      RUN      : CLK_APB0_USART0_CFG_ENUM := LPC43xx.CCU2.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_APB0_USART0_CFG_ENUM := LPC43xx.CCU2.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_APB0_USART0_CFG_ENUM := LPC43xx.CCU2.Disabled;
      --  Reserved.
      RESERVED : CLK_APB0_USART0_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB0_USART0_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_APB0_USART0_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_APB0_USART0 clock status register
   type CLK_APB0_USART0_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : Boolean;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : Boolean;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : Boolean;
      --  Read-only. Reserved
      RESERVED : CLK_APB0_USART0_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB0_USART0_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_APB2_SSP1_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_APB2_SSP1_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_APB2_SSP1_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_APB2_SSP1 clock configuration register
   type CLK_APB2_SSP1_CFG_Register is record
      --  Run enable
      RUN      : CLK_APB2_SSP1_CFG_ENUM := LPC43xx.CCU2.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_APB2_SSP1_CFG_ENUM := LPC43xx.CCU2.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_APB2_SSP1_CFG_ENUM := LPC43xx.CCU2.Disabled;
      --  Reserved.
      RESERVED : CLK_APB2_SSP1_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB2_SSP1_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_APB2_SSP1_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_APB2_SSP1 clock status register
   type CLK_APB2_SSP1_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : Boolean;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : Boolean;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : Boolean;
      --  Read-only. Reserved
      RESERVED : CLK_APB2_SSP1_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB2_SSP1_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_APB0_SSP0_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_APB0_SSP0_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_APB0_SSP0_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_APB0_SSP0 clock configuration register
   type CLK_APB0_SSP0_CFG_Register is record
      --  Run enable
      RUN      : CLK_APB0_SSP0_CFG_ENUM := LPC43xx.CCU2.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_APB0_SSP0_CFG_ENUM := LPC43xx.CCU2.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_APB0_SSP0_CFG_ENUM := LPC43xx.CCU2.Disabled;
      --  Reserved.
      RESERVED : CLK_APB0_SSP0_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB0_SSP0_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_APB0_SSP0_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_APB0_SSP0 clock status register
   type CLK_APB0_SSP0_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : Boolean;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : Boolean;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : Boolean;
      --  Read-only. Reserved
      RESERVED : CLK_APB0_SSP0_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB0_SSP0_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_SDIO_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_SDIO_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_SDIO_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_SDIO clock configuration register
   type CLK_SDIO_CFG_Register is record
      --  Run enable
      RUN      : CLK_SDIO_CFG_ENUM := LPC43xx.CCU2.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_SDIO_CFG_ENUM := LPC43xx.CCU2.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_SDIO_CFG_ENUM := LPC43xx.CCU2.Disabled;
      --  Reserved.
      RESERVED : CLK_SDIO_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_SDIO_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_SDIO_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_SDIO clock status register
   type CLK_SDIO_STAT_Register is record
      --  Read-only. Run enable status 0 = clock is disabled. 1 = clock is
      --  enabled.
      RUN      : Boolean;
      --  Read-only. Auto (AHB disable mechanism) enable status 0 = Auto is
      --  disabled. 1 = Auto is enabled.
      AUTO     : Boolean;
      --  Read-only. Wake-up mechanism enable status 0 = Wake-up is disabled. 1
      --  = Wake-up is enabled.
      WAKEUP   : Boolean;
      --  Read-only. Reserved
      RESERVED : CLK_SDIO_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_SDIO_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Clock Control Unit (CCU2)
   type CCU2_Peripheral is record
      --  Power mode register
      PM                     : aliased PM_Register;
      --  CCU base clocks status register
      BASE_STAT              : aliased BASE_STAT_Register;
      --  CLK_AUDIO clock configuration register
      CLK_AUDIO_CFG          : aliased CLK_AUDIO_CFG_Register;
      --  CLK_AUDIO clock status register
      CLK_AUDIO_STAT         : aliased CLK_AUDIO_STAT_Register;
      --  CLK_APB2_USART3 clock configuration register
      CLK_APB2_USART3_CFG    : aliased CLK_APB2_USART3_CFG_Register;
      --  CLK_APB2_USART3 clock status register
      CLK_APB2_USART3_STAT   : aliased CLK_APB2_USART3_STAT_Register;
      --  CLK_APB2_USART2 clock configuration register
      CLK_APB2_USART2_CFG    : aliased CLK_APB2_USART2_CFG_Register;
      --  CLK_APB2_USART clock status register
      CLK_APB2_USART2_STAT   : aliased CLK_APB2_USART2_STAT_Register;
      --  CLK_APB2_UART1 clock configuration register
      CLK_APB0_UART1_BUS_CFG : aliased CLK_APB0_UART1_BUS_CFG_Register;
      --  CLK_APB0_UART1 clock status register
      CLK_APB0_UART1_STAT    : aliased CLK_APB0_UART1_STAT_Register;
      --  CLK_APB2_USART0 clock configuration register
      CLK_APB0_USART0_CFG    : aliased CLK_APB0_USART0_CFG_Register;
      --  CLK_APB0_USART0 clock status register
      CLK_APB0_USART0_STAT   : aliased CLK_APB0_USART0_STAT_Register;
      --  CLK_APB2_SSP1 clock configuration register
      CLK_APB2_SSP1_CFG      : aliased CLK_APB2_SSP1_CFG_Register;
      --  CLK_APB2_SSP1 clock status register
      CLK_APB2_SSP1_STAT     : aliased CLK_APB2_SSP1_STAT_Register;
      --  CLK_APB0_SSP0 clock configuration register
      CLK_APB0_SSP0_CFG      : aliased CLK_APB0_SSP0_CFG_Register;
      --  CLK_APB0_SSP0 clock status register
      CLK_APB0_SSP0_STAT     : aliased CLK_APB0_SSP0_STAT_Register;
      --  CLK_SDIO clock configuration register
      CLK_SDIO_CFG           : aliased CLK_SDIO_CFG_Register;
      --  CLK_SDIO clock status register
      CLK_SDIO_STAT          : aliased CLK_SDIO_STAT_Register;
   end record
     with Volatile;

   for CCU2_Peripheral use record
      PM                     at 16#0# range 0 .. 31;
      BASE_STAT              at 16#4# range 0 .. 31;
      CLK_AUDIO_CFG          at 16#100# range 0 .. 31;
      CLK_AUDIO_STAT         at 16#104# range 0 .. 31;
      CLK_APB2_USART3_CFG    at 16#200# range 0 .. 31;
      CLK_APB2_USART3_STAT   at 16#204# range 0 .. 31;
      CLK_APB2_USART2_CFG    at 16#300# range 0 .. 31;
      CLK_APB2_USART2_STAT   at 16#304# range 0 .. 31;
      CLK_APB0_UART1_BUS_CFG at 16#400# range 0 .. 31;
      CLK_APB0_UART1_STAT    at 16#404# range 0 .. 31;
      CLK_APB0_USART0_CFG    at 16#500# range 0 .. 31;
      CLK_APB0_USART0_STAT   at 16#504# range 0 .. 31;
      CLK_APB2_SSP1_CFG      at 16#600# range 0 .. 31;
      CLK_APB2_SSP1_STAT     at 16#604# range 0 .. 31;
      CLK_APB0_SSP0_CFG      at 16#700# range 0 .. 31;
      CLK_APB0_SSP0_STAT     at 16#704# range 0 .. 31;
      CLK_SDIO_CFG           at 16#800# range 0 .. 31;
      CLK_SDIO_STAT          at 16#804# range 0 .. 31;
   end record;

   --  Clock Control Unit (CCU2)
   CCU2_Periph : aliased CCU2_Peripheral
     with Import, Address => System'To_Address (16#40052000#);

end LPC43xx.CCU2;
