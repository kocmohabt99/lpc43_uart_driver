--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package LPC43xx.CCU1 is
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

   --  CCU1 power mode register
   type PM_Register is record
      --  Initiate power-down mode
      PD       : PM_ENUM := LPC43xx.CCU1.Normal_Operation;
      --  Reserved.
      RESERVED : PM_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_Register use record
      PD       at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 31;
   end record;

   subtype BASE_STAT_RESERVED_Field is HAL.UInt3;
   subtype BASE_STAT_RESERVED_Field_1 is HAL.UInt23;

   --  CCU1 base clocks status register
   type BASE_STAT_Register is record
      --  Read-only. Base clock indicator for BASE_APB3_CLK 0 = All branch
      --  clocks switched off. 1 = At least one branch clock running.
      BASE_APB3_CLK_IND  : Boolean;
      --  Read-only. Base clock indicator for BASE_APB1_CLK 0 = All branch
      --  clocks switched off. 1 = At least one branch clock running.
      BASE_APB1_CLK_IND  : Boolean;
      --  Read-only. Base clock indicator for BASE_SPIFI_CLK 0 = All branch
      --  clocks switched off. 1 = At least one branch clock running.
      BASE_SPIFI_CLK_IND : Boolean;
      --  Read-only. Base clock indicator for BASE_M3_CLK 0 = All branch clocks
      --  switched off. 1 = At least one branch clock running.
      BASE_M3_CLK_IND    : Boolean;
      --  Read-only. Reserved
      RESERVED           : BASE_STAT_RESERVED_Field;
      --  Read-only. Base clock indicator for BASE_USB0_CLK 0 = All branch
      --  clocks switched off. 1 = At least one branch clock running.
      BASE_USB0_CLK_IND  : Boolean;
      --  Read-only. Base clock indicator for BASE_USB1_CLK 0 = All branch
      --  clocks switched off. 1 = at least one branch clock running.
      BASE_USB1_CLK_IND  : Boolean;
      --  Read-only. Reserved
      RESERVED_1         : BASE_STAT_RESERVED_Field_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BASE_STAT_Register use record
      BASE_APB3_CLK_IND  at 0 range 0 .. 0;
      BASE_APB1_CLK_IND  at 0 range 1 .. 1;
      BASE_SPIFI_CLK_IND at 0 range 2 .. 2;
      BASE_M3_CLK_IND    at 0 range 3 .. 3;
      RESERVED           at 0 range 4 .. 6;
      BASE_USB0_CLK_IND  at 0 range 7 .. 7;
      BASE_USB1_CLK_IND  at 0 range 8 .. 8;
      RESERVED_1         at 0 range 9 .. 31;
   end record;

   --  Run enable
   type CLK_APB3_BUS_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_APB3_BUS_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_APB3_BUS_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_APB3_BUS clock configuration register
   type CLK_APB3_BUS_CFG_Register is record
      --  Run enable
      RUN      : CLK_APB3_BUS_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_APB3_BUS_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_APB3_BUS_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB3_BUS_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_BUS_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_APB3_BUS_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_APB3_BUS clock status register
   type CLK_APB3_BUS_STAT_Register is record
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
      RESERVED : CLK_APB3_BUS_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_BUS_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_APB3_I2C1_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_APB3_I2C1_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_APB3_I2C1_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_APB3_I2C1 clock configuration register
   type CLK_APB3_I2C1_CFG_Register is record
      --  Run enable
      RUN      : CLK_APB3_I2C1_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_APB3_I2C1_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_APB3_I2C1_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB3_I2C1_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_I2C1_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_APB3_I2C1_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_APB3_I2C1 clock status register
   type CLK_APB3_I2C1_STAT_Register is record
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
      RESERVED : CLK_APB3_I2C1_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_I2C1_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_APB3_DAC_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_APB3_DAC_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_APB3_DAC_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_APB3_DAC clock configuration register
   type CLK_APB3_DAC_CFG_Register is record
      --  Run enable
      RUN      : CLK_APB3_DAC_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_APB3_DAC_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_APB3_DAC_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB3_DAC_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_DAC_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_APB3_DAC_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_APB3_DAC clock status register
   type CLK_APB3_DAC_STAT_Register is record
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
      RESERVED : CLK_APB3_DAC_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_DAC_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_APB3_ADC0_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_APB3_ADC0_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_APB3_ADC0_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_APB3_ADC0 clock configuration register
   type CLK_APB3_ADC0_CFG_Register is record
      --  Run enable
      RUN      : CLK_APB3_ADC0_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_APB3_ADC0_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_APB3_ADC0_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB3_ADC0_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_ADC0_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_APB3_ADC0_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_APB3_ADC0 clock status register
   type CLK_APB3_ADC0_STAT_Register is record
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
      RESERVED : CLK_APB3_ADC0_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_ADC0_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_APB3_ADC1_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_APB3_ADC1_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_APB3_ADC1_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_APB3_ADC1 clock configuration register
   type CLK_APB3_ADC1_CFG_Register is record
      --  Run enable
      RUN      : CLK_APB3_ADC1_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_APB3_ADC1_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_APB3_ADC1_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB3_ADC1_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_ADC1_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_APB3_ADC1_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_APB3_ADC1 clock status register
   type CLK_APB3_ADC1_STAT_Register is record
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
      RESERVED : CLK_APB3_ADC1_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_ADC1_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_APB3_CAN0_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_APB3_CAN0_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_APB3_CAN0_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_APB3_CAN0 clock configuration register
   type CLK_APB3_CAN0_CFG_Register is record
      --  Run enable
      RUN      : CLK_APB3_CAN0_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_APB3_CAN0_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_APB3_CAN0_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB3_CAN0_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_CAN0_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_APB3_CAN0_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_APB3_CAN0 clock status register
   type CLK_APB3_CAN0_STAT_Register is record
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
      RESERVED : CLK_APB3_CAN0_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB3_CAN0_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_APB1_BUS_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_APB1_BUS_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_APB1_BUS_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_APB1_BUS clock configuration register
   type CLK_APB1_BUS_CFG_Register is record
      --  Run enable
      RUN      : CLK_APB1_BUS_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_APB1_BUS_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_APB1_BUS_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB1_BUS_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB1_BUS_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_APB1_BUS_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_APB1_BUS clock status register
   type CLK_APB1_BUS_STAT_Register is record
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
      RESERVED : CLK_APB1_BUS_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB1_BUS_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_APB1_MOTOCONPWM_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_APB1_MOTOCONPWM_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_APB1_MOTOCONPWM_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_APB1_MOTOCONPWM clock configuration register
   type CLK_APB1_MOTOCONPWM_CFG_Register is record
      --  Run enable
      RUN      : CLK_APB1_MOTOCONPWM_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_APB1_MOTOCONPWM_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_APB1_MOTOCONPWM_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB1_MOTOCONPWM_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB1_MOTOCONPWM_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_APB1_MOTOCONPWM_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_APB1_MOTOCONPWM clock status register
   type CLK_APB1_MOTOCONPWM_STAT_Register is record
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
      RESERVED : CLK_APB1_MOTOCONPWM_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB1_MOTOCONPWM_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_APB1_I2C0_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_APB1_I2C0_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_APB1_I2C0_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_ABP1_I2C0 clock configuration register
   type CLK_APB1_I2C0_CFG_Register is record
      --  Run enable
      RUN      : CLK_APB1_I2C0_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_APB1_I2C0_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_APB1_I2C0_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB1_I2C0_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB1_I2C0_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_APB1_I2C0_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_APB1_I2C0 clock status register
   type CLK_APB1_I2C0_STAT_Register is record
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
      RESERVED : CLK_APB1_I2C0_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB1_I2C0_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_APB1_I2S_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_APB1_I2S_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_APB1_I2S_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_APB1_I2S clock configuration register
   type CLK_APB1_I2S_CFG_Register is record
      --  Run enable
      RUN      : CLK_APB1_I2S_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_APB1_I2S_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_APB1_I2S_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB1_I2S_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB1_I2S_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_APB1_I2S_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_APB1_I2S clock status register
   type CLK_APB1_I2S_STAT_Register is record
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
      RESERVED : CLK_APB1_I2S_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB1_I2S_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_APB1_CAN1_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_APB1_CAN1_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_APB1_CAN1_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_APB1_CAN1 clock configuration register
   type CLK_APB1_CAN1_CFG_Register is record
      --  Run enable
      RUN      : CLK_APB1_CAN1_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_APB1_CAN1_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_APB1_CAN1_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_APB1_CAN1_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB1_CAN1_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_APB1_CAN1_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_APB1_CAN1 clock status register
   type CLK_APB1_CAN1_STAT_Register is record
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
      RESERVED : CLK_APB1_CAN1_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_APB1_CAN1_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_SPIFI_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_SPIFI_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_SPIFI_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_SPIFI clock configuration register
   type CLK_SPIFI_CFG_Register is record
      --  Run enable
      RUN      : CLK_SPIFI_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_SPIFI_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_SPIFI_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_SPIFI_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_SPIFI_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_SPIFI_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_APB1_SPIFI clock status register
   type CLK_SPIFI_STAT_Register is record
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
      RESERVED : CLK_SPIFI_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_SPIFI_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_BUS_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_BUS_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_BUS_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_BUS clock configuration register
   type CLK_M4_BUS_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_BUS_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_BUS_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_BUS_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_BUS_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_BUS_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_BUS_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_BUSclock status register
   type CLK_M4_BUS_STAT_Register is record
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
      RESERVED : CLK_M4_BUS_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_BUS_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_SPIFI_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_SPIFI_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_SPIFI_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_SPIFI clock configuration register
   type CLK_M4_SPIFI_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_SPIFI_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_SPIFI_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_SPIFI_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_SPIFI_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SPIFI_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_SPIFI_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_SPIFI clock status register
   type CLK_M4_SPIFI_STAT_Register is record
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
      RESERVED : CLK_M4_SPIFI_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SPIFI_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_GPIO_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_GPIO_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_GPIO_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_GPIO clock configuration register
   type CLK_M4_GPIO_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_GPIO_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_GPIO_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_GPIO_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_GPIO_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_GPIO_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_GPIO_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_GPIO clock status register
   type CLK_M4_GPIO_STAT_Register is record
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
      RESERVED : CLK_M4_GPIO_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_GPIO_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_LCD_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_LCD_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_LCD_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_LCD clock configuration register
   type CLK_M4_LCD_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_LCD_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_LCD_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_LCD_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_LCD_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_LCD_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_LCD_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_LCD clock status register
   type CLK_M4_LCD_STAT_Register is record
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
      RESERVED : CLK_M4_LCD_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_LCD_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_ETHERNET_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_ETHERNET_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_ETHERNET_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_ETHERNET clock configuration register
   type CLK_M4_ETHERNET_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_ETHERNET_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_ETHERNET_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_ETHERNET_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_ETHERNET_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_ETHERNET_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_ETHERNET_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_ETHERNET clock status register
   type CLK_M4_ETHERNET_STAT_Register is record
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
      RESERVED : CLK_M4_ETHERNET_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_ETHERNET_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_USB0_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_USB0_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_USB0_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_USB0 clock configuration register
   type CLK_M4_USB0_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_USB0_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_USB0_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_USB0_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_USB0_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_USB0_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_USB0_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_USB0 clock status register
   type CLK_M4_USB0_STAT_Register is record
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
      RESERVED : CLK_M4_USB0_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_USB0_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_EMC_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_EMC_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_EMC_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_EMC clock configuration register
   type CLK_M4_EMC_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_EMC_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_EMC_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_EMC_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_EMC_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_EMC_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_EMC_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_EMC clock status register
   type CLK_M4_EMC_STAT_Register is record
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
      RESERVED : CLK_M4_EMC_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_EMC_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_SDIO_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_SDIO_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_SDIO_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_SDIO clock configuration register
   type CLK_M4_SDIO_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_SDIO_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_SDIO_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_SDIO_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_SDIO_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SDIO_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_SDIO_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_SDIO clock status register
   type CLK_M4_SDIO_STAT_Register is record
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
      RESERVED : CLK_M4_SDIO_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SDIO_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_DMA_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_DMA_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_DMA_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_DMA clock configuration register
   type CLK_M4_DMA_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_DMA_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_DMA_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_DMA_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_DMA_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_DMA_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_DMA_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_DMA clock status register
   type CLK_M4_DMA_STAT_Register is record
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
      RESERVED : CLK_M4_DMA_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_DMA_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_M4CORE_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_M4CORE_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_M4CORE_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_M4CORE clock configuration register
   type CLK_M4_M4CORE_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_M4CORE_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_M4CORE_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_M4CORE_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_M4CORE_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_M4CORE_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_M4CORE_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_M3CORE clock status register
   type CLK_M4_M4CORE_STAT_Register is record
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
      RESERVED : CLK_M4_M4CORE_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_M4CORE_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_SCT_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_SCT_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_SCT_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_SCT clock configuration register
   type CLK_M4_SCT_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_SCT_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_SCT_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_SCT_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_SCT_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SCT_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_SCT_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_SCT clock status register
   type CLK_M4_SCT_STAT_Register is record
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
      RESERVED : CLK_M4_SCT_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SCT_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_USB1_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_USB1_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_USB1_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_USB1 clock configuration register
   type CLK_M4_USB1_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_USB1_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_USB1_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_USB1_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_USB1_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_USB1_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_USB1_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_USB1 clock status register
   type CLK_M4_USB1_STAT_Register is record
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
      RESERVED : CLK_M4_USB1_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_USB1_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_EMCDIV_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_EMCDIV_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_EMCDIV_CFG_RESERVED_Field is HAL.UInt2;

   --  Clock divider value
   type CLK_M4_EMCDIV_CFG_DIV_Field is
     (
      --  No division. Divide by 1.
      Divideby1,
      --  Divide by 2.
      Divideby2)
     with Size => 3;
   for CLK_M4_EMCDIV_CFG_DIV_Field use
     (Divideby1 => 0,
      Divideby2 => 1);

   subtype CLK_M4_EMCDIV_CFG_RESERVED_Field_1 is HAL.UInt24;

   --  CLK_M4_EMCDIV clock configuration register
   type CLK_M4_EMCDIV_CFG_Register is record
      --  Run enable
      RUN        : CLK_M4_EMCDIV_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO       : CLK_M4_EMCDIV_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP     : CLK_M4_EMCDIV_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED   : CLK_M4_EMCDIV_CFG_RESERVED_Field := 16#0#;
      --  Clock divider value
      DIV        : CLK_M4_EMCDIV_CFG_DIV_Field := LPC43xx.CCU1.Divideby1;
      --  Reserved
      RESERVED_1 : CLK_M4_EMCDIV_CFG_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_EMCDIV_CFG_Register use record
      RUN        at 0 range 0 .. 0;
      AUTO       at 0 range 1 .. 1;
      WAKEUP     at 0 range 2 .. 2;
      RESERVED   at 0 range 3 .. 4;
      DIV        at 0 range 5 .. 7;
      RESERVED_1 at 0 range 8 .. 31;
   end record;

   subtype CLK_M4_EMCDIV_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_EMCDIV clock status register
   type CLK_M4_EMCDIV_STAT_Register is record
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
      RESERVED : CLK_M4_EMCDIV_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_EMCDIV_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_FLASHA_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_FLASHA_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_FLASHA_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_FLASHA clock configuration register
   type CLK_M4_FLASHA_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_FLASHA_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_FLASHA_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_FLASHA_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_FLASHA_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_FLASHA_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_FLASHA_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_FLASHA clock status register
   type CLK_M4_FLASHA_STAT_Register is record
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
      RESERVED : CLK_M4_FLASHA_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_FLASHA_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_FLASHB_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_FLASHB_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_FLASHB_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_FLASHB clock configuration register
   type CLK_M4_FLASHB_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_FLASHB_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_FLASHB_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_FLASHB_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_FLASHB_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_FLASHB_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_FLASHB_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_FLASHB clock status register
   type CLK_M4_FLASHB_STAT_Register is record
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
      RESERVED : CLK_M4_FLASHB_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_FLASHB_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_M0APP_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_M0APP_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_M0APP_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M0APP_CFG clock configuration register
   type CLK_M4_M0APP_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_M0APP_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_M0APP_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_M0APP_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_M0APP_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_M0APP_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_M0APP_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_MOAPP clock status register
   type CLK_M4_M0APP_STAT_Register is record
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
      RESERVED : CLK_M4_M0APP_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_M0APP_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_ADCHS_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_ADCHS_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_ADCHS_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_ADCHS_CFG clock configuration register
   type CLK_M4_ADCHS_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_ADCHS_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_ADCHS_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_ADCHS_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_ADCHS_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_ADCHS_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_ADCHS_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_ADCHS clock status register
   type CLK_M4_ADCHS_STAT_Register is record
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
      RESERVED : CLK_M4_ADCHS_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_ADCHS_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_EEPROM_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_EEPROM_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_EEPROM_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_EEPROM_CFG clock configuration register
   type CLK_M4_EEPROM_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_EEPROM_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_EEPROM_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_EEPROM_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_EEPROM_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_EEPROM_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_EEPROM_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_EEPROM clock status register
   type CLK_M4_EEPROM_STAT_Register is record
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
      RESERVED : CLK_M4_EEPROM_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_EEPROM_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_WWDT_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_WWDT_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_WWDT_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_WWDT clock configuration register
   type CLK_M4_WWDT_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_WWDT_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_WWDT_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_WWDT_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_WWDT_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_WWDT_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_WWDT_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_WWDT clock status register
   type CLK_M4_WWDT_STAT_Register is record
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
      RESERVED : CLK_M4_WWDT_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_WWDT_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_USART0_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_USART0_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_USART0_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_USART0 clock configuration register
   type CLK_M4_USART0_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_USART0_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_USART0_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_USART0_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_USART0_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_USART0_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_USART0_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_USART0 clock status register
   type CLK_M4_USART0_STAT_Register is record
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
      RESERVED : CLK_M4_USART0_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_USART0_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_UART1_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_UART1_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_UART1_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_UART1 clock configuration register
   type CLK_M4_UART1_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_UART1_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_UART1_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_UART1_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_UART1_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_UART1_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_UART1_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_UART1 clock status register
   type CLK_M4_UART1_STAT_Register is record
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
      RESERVED : CLK_M4_UART1_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_UART1_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_SSP0_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_SSP0_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_SSP0_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_SSP0 clock configuration register
   type CLK_M4_SSP0_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_SSP0_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_SSP0_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_SSP0_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_SSP0_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SSP0_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_SSP0_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_SSP0 clock status register
   type CLK_M4_SSP0_STAT_Register is record
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
      RESERVED : CLK_M4_SSP0_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SSP0_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_TIMER0_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_TIMER0_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_TIMER0_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_TIMER0 clock configuration register
   type CLK_M4_TIMER0_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_TIMER0_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_TIMER0_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_TIMER0_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_TIMER0_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_TIMER0_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_TIMER0_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_TIMER0 clock status register
   type CLK_M4_TIMER0_STAT_Register is record
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
      RESERVED : CLK_M4_TIMER0_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_TIMER0_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_TIMER1_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_TIMER1_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_TIMER1_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_TIMER1clock configuration register
   type CLK_M4_TIMER1_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_TIMER1_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_TIMER1_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_TIMER1_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_TIMER1_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_TIMER1_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_TIMER1_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_TIMER1 clock status register
   type CLK_M4_TIMER1_STAT_Register is record
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
      RESERVED : CLK_M4_TIMER1_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_TIMER1_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_SCU_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_SCU_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_SCU_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_SCU clock configuration register
   type CLK_M4_SCU_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_SCU_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_SCU_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_SCU_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_SCU_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SCU_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_SCU_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_SCU_XXX clock status register
   type CLK_M4_SCU_STAT_Register is record
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
      RESERVED : CLK_M4_SCU_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SCU_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_CREG_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_CREG_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_CREG_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_CREGclock configuration register
   type CLK_M4_CREG_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_CREG_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_CREG_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_CREG_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_CREG_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_CREG_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_CREG_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_CREG clock status register
   type CLK_M4_CREG_STAT_Register is record
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
      RESERVED : CLK_M4_CREG_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_CREG_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_RITIMER_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_RITIMER_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_RITIMER_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_RITIMER clock configuration register
   type CLK_M4_RITIMER_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_RITIMER_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_RITIMER_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_RITIMER_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_RITIMER_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_RITIMER_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_RITIMER_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_RITIMER clock status register
   type CLK_M4_RITIMER_STAT_Register is record
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
      RESERVED : CLK_M4_RITIMER_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_RITIMER_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_USART2_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_USART2_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_USART2_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_USART2 clock configuration register
   type CLK_M4_USART2_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_USART2_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_USART2_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_USART2_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_USART2_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_USART2_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_USART2_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_USART2 clock status register
   type CLK_M4_USART2_STAT_Register is record
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
      RESERVED : CLK_M4_USART2_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_USART2_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_USART3_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_USART3_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_USART3_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_USART3 clock configuration register
   type CLK_M4_USART3_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_USART3_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_USART3_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_USART3_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_USART3_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_USART3_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_USART3_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_USART3 clock status register
   type CLK_M4_USART3_STAT_Register is record
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
      RESERVED : CLK_M4_USART3_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_USART3_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_TIMER2_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_TIMER2_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_TIMER2_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_TIMER2 clock configuration register
   type CLK_M4_TIMER2_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_TIMER2_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_TIMER2_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_TIMER2_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_TIMER2_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_TIMER2_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_TIMER2_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_TIMER2 clock status register
   type CLK_M4_TIMER2_STAT_Register is record
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
      RESERVED : CLK_M4_TIMER2_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_TIMER2_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_TIMER3_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_TIMER3_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_TIMER3_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_TIMER3 clock configuration register
   type CLK_M4_TIMER3_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_TIMER3_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_TIMER3_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_TIMER3_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_TIMER3_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_TIMER3_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_TIMER3_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_TIMER3 clock status register
   type CLK_M4_TIMER3_STAT_Register is record
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
      RESERVED : CLK_M4_TIMER3_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_TIMER3_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_SSP1_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_SSP1_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_SSP1_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_SSP1 clock configuration register
   type CLK_M4_SSP1_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_SSP1_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_SSP1_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_SSP1_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_SSP1_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SSP1_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_SSP1_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_SSP1 clock status register
   type CLK_M4_SSP1_STAT_Register is record
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
      RESERVED : CLK_M4_SSP1_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_SSP1_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_M4_QEI_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_M4_QEI_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_M4_QEI_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_QEIclock configuration register
   type CLK_M4_QEI_CFG_Register is record
      --  Run enable
      RUN      : CLK_M4_QEI_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_M4_QEI_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_M4_QEI_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_M4_QEI_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_QEI_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_M4_QEI_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_QEI clock status register
   type CLK_M4_QEI_STAT_Register is record
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
      RESERVED : CLK_M4_QEI_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_M4_QEI_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_PERIPH_BUS_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_PERIPH_BUS_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_PERIPH_BUS_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_PERIPH_BUS_CFG clock configuration register
   type CLK_PERIPH_BUS_CFG_Register is record
      --  Run enable
      RUN      : CLK_PERIPH_BUS_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_PERIPH_BUS_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_PERIPH_BUS_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_PERIPH_BUS_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_PERIPH_BUS_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_PERIPH_BUS_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_PERIPH_BUS_STAT clock status register
   type CLK_PERIPH_BUS_STAT_Register is record
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
      RESERVED : CLK_PERIPH_BUS_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_PERIPH_BUS_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_PERIPH_CORE_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_PERIPH_CORE_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_PERIPH_CORE_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_PERIPH_CORE_CFG clock configuration register
   type CLK_PERIPH_CORE_CFG_Register is record
      --  Run enable
      RUN      : CLK_PERIPH_CORE_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_PERIPH_CORE_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_PERIPH_CORE_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_PERIPH_CORE_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_PERIPH_CORE_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_PERIPH_CORE_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_CORE_BUS_STAT clock status register
   type CLK_PERIPH_CORE_STAT_Register is record
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
      RESERVED : CLK_PERIPH_CORE_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_PERIPH_CORE_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_PERIPH_SGPIO_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_PERIPH_SGPIO_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype CLK_PERIPH_SGPIO_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_PERIPH_SGPIO_CFG clock configuration register
   type CLK_PERIPH_SGPIO_CFG_Register is record
      --  Run enable
      RUN      : CLK_PERIPH_SGPIO_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_PERIPH_SGPIO_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_PERIPH_SGPIO_CFG_ENUM := LPC43xx.CCU1.Disabled;
      --  Reserved
      RESERVED : CLK_PERIPH_SGPIO_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_PERIPH_SGPIO_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_PERIPH_SGPIO_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_CORE_SGPIO_STAT clock status register
   type CLK_PERIPH_SGPIO_STAT_Register is record
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
      RESERVED : CLK_PERIPH_SGPIO_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_PERIPH_SGPIO_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_USB0_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_USB0_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   --  Auto (AHB disable mechanism) enable
   type CLK_USB0_CFG_ENUM_1 is
     (
      --  Auto is disabled.
      Auto_Is_Disabled,
      --  Auto is enabled.
      Auto_Is_Enabled)
     with Size => 1;
   for CLK_USB0_CFG_ENUM_1 use
     (Auto_Is_Disabled => 0,
      Auto_Is_Enabled => 1);

   --  Wake-up mechanism enable
   type CLK_USB0_CFG_ENUM_2 is
     (
      --  Wake-up is disabled.
      Wake_Up_Is_Disabled,
      --  Wake-up is enabled.
      Wake_Up_Is_Enabled)
     with Size => 1;
   for CLK_USB0_CFG_ENUM_2 use
     (Wake_Up_Is_Disabled => 0,
      Wake_Up_Is_Enabled => 1);

   subtype CLK_USB0_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_M4_USB0 clock configuration register
   type CLK_USB0_CFG_Register is record
      --  Run enable
      RUN      : CLK_USB0_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_USB0_CFG_ENUM_1 := LPC43xx.CCU1.Auto_Is_Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_USB0_CFG_ENUM_2 := LPC43xx.CCU1.Wake_Up_Is_Disabled;
      --  Reserved
      RESERVED : CLK_USB0_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_USB0_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_USB0_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_USB0 clock status register
   type CLK_USB0_STAT_Register is record
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
      RESERVED : CLK_USB0_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_USB0_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_USB1_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_USB1_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   --  Auto (AHB disable mechanism) enable
   type CLK_USB1_CFG_ENUM_1 is
     (
      --  Auto is disabled.
      Auto_Is_Disabled,
      --  Auto is enabled.
      Auto_Is_Enabled)
     with Size => 1;
   for CLK_USB1_CFG_ENUM_1 use
     (Auto_Is_Disabled => 0,
      Auto_Is_Enabled => 1);

   --  Wake-up mechanism enable
   type CLK_USB1_CFG_ENUM_2 is
     (
      --  Wake-up is disabled.
      Wake_Up_Is_Disabled,
      --  Wake-up is enabled.
      Wake_Up_Is_Enabled)
     with Size => 1;
   for CLK_USB1_CFG_ENUM_2 use
     (Wake_Up_Is_Disabled => 0,
      Wake_Up_Is_Enabled => 1);

   subtype CLK_USB1_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_USB1 clock configuration register
   type CLK_USB1_CFG_Register is record
      --  Run enable
      RUN      : CLK_USB1_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_USB1_CFG_ENUM_1 := LPC43xx.CCU1.Auto_Is_Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_USB1_CFG_ENUM_2 := LPC43xx.CCU1.Wake_Up_Is_Disabled;
      --  Reserved
      RESERVED : CLK_USB1_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_USB1_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_USB1_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_USB1 clock status register
   type CLK_USB1_STAT_Register is record
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
      RESERVED : CLK_USB1_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_USB1_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_SPI_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_SPI_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   --  Auto (AHB disable mechanism) enable
   type CLK_SPI_CFG_ENUM_1 is
     (
      --  Auto is disabled.
      Auto_Is_Disabled,
      --  Auto is enabled.
      Auto_Is_Enabled)
     with Size => 1;
   for CLK_SPI_CFG_ENUM_1 use
     (Auto_Is_Disabled => 0,
      Auto_Is_Enabled => 1);

   --  Wake-up mechanism enable
   type CLK_SPI_CFG_ENUM_2 is
     (
      --  Wake-up is disabled.
      Wake_Up_Is_Disabled,
      --  Wake-up is enabled.
      Wake_Up_Is_Enabled)
     with Size => 1;
   for CLK_SPI_CFG_ENUM_2 use
     (Wake_Up_Is_Disabled => 0,
      Wake_Up_Is_Enabled => 1);

   subtype CLK_SPI_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_SPI clock configuration register
   type CLK_SPI_CFG_Register is record
      --  Run enable
      RUN      : CLK_SPI_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_SPI_CFG_ENUM_1 := LPC43xx.CCU1.Auto_Is_Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_SPI_CFG_ENUM_2 := LPC43xx.CCU1.Wake_Up_Is_Disabled;
      --  Reserved
      RESERVED : CLK_SPI_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_SPI_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_SPI_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_SPI clock status register
   type CLK_SPI_STAT_Register is record
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
      RESERVED : CLK_SPI_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_SPI_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   --  Run enable
   type CLK_ADCHS_CFG_ENUM is
     (
      --  Clock is disabled.
      Disabled,
      --  Clock is enabled.
      Enabled)
     with Size => 1;
   for CLK_ADCHS_CFG_ENUM use
     (Disabled => 0,
      Enabled => 1);

   --  Auto (AHB disable mechanism) enable
   type CLK_ADCHS_CFG_ENUM_1 is
     (
      --  Auto is disabled.
      Auto_Is_Disabled,
      --  Auto is enabled.
      Auto_Is_Enabled)
     with Size => 1;
   for CLK_ADCHS_CFG_ENUM_1 use
     (Auto_Is_Disabled => 0,
      Auto_Is_Enabled => 1);

   --  Wake-up mechanism enable
   type CLK_ADCHS_CFG_ENUM_2 is
     (
      --  Wake-up is disabled.
      Wake_Up_Is_Disabled,
      --  Wake-up is enabled.
      Wake_Up_Is_Enabled)
     with Size => 1;
   for CLK_ADCHS_CFG_ENUM_2 use
     (Wake_Up_Is_Disabled => 0,
      Wake_Up_Is_Enabled => 1);

   subtype CLK_ADCHS_CFG_RESERVED_Field is HAL.UInt29;

   --  CLK_ADCHS clock configuration register
   type CLK_ADCHS_CFG_Register is record
      --  Run enable
      RUN      : CLK_ADCHS_CFG_ENUM := LPC43xx.CCU1.Enabled;
      --  Auto (AHB disable mechanism) enable
      AUTO     : CLK_ADCHS_CFG_ENUM_1 := LPC43xx.CCU1.Auto_Is_Disabled;
      --  Wake-up mechanism enable
      WAKEUP   : CLK_ADCHS_CFG_ENUM_2 := LPC43xx.CCU1.Wake_Up_Is_Disabled;
      --  Reserved
      RESERVED : CLK_ADCHS_CFG_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_ADCHS_CFG_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   subtype CLK_ADCHS_STAT_RESERVED_Field is HAL.UInt29;

   --  CLK_ADCHS clock status register
   type CLK_ADCHS_STAT_Register is record
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
      RESERVED : CLK_ADCHS_STAT_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_ADCHS_STAT_Register use record
      RUN      at 0 range 0 .. 0;
      AUTO     at 0 range 1 .. 1;
      WAKEUP   at 0 range 2 .. 2;
      RESERVED at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Clock Control Unit (CCU)
   type CCU1_Peripheral is record
      --  CCU1 power mode register
      PM                       : aliased PM_Register;
      --  CCU1 base clocks status register
      BASE_STAT                : aliased BASE_STAT_Register;
      --  CLK_APB3_BUS clock configuration register
      CLK_APB3_BUS_CFG         : aliased CLK_APB3_BUS_CFG_Register;
      --  CLK_APB3_BUS clock status register
      CLK_APB3_BUS_STAT        : aliased CLK_APB3_BUS_STAT_Register;
      --  CLK_APB3_I2C1 clock configuration register
      CLK_APB3_I2C1_CFG        : aliased CLK_APB3_I2C1_CFG_Register;
      --  CLK_APB3_I2C1 clock status register
      CLK_APB3_I2C1_STAT       : aliased CLK_APB3_I2C1_STAT_Register;
      --  CLK_APB3_DAC clock configuration register
      CLK_APB3_DAC_CFG         : aliased CLK_APB3_DAC_CFG_Register;
      --  CLK_APB3_DAC clock status register
      CLK_APB3_DAC_STAT        : aliased CLK_APB3_DAC_STAT_Register;
      --  CLK_APB3_ADC0 clock configuration register
      CLK_APB3_ADC0_CFG        : aliased CLK_APB3_ADC0_CFG_Register;
      --  CLK_APB3_ADC0 clock status register
      CLK_APB3_ADC0_STAT       : aliased CLK_APB3_ADC0_STAT_Register;
      --  CLK_APB3_ADC1 clock configuration register
      CLK_APB3_ADC1_CFG        : aliased CLK_APB3_ADC1_CFG_Register;
      --  CLK_APB3_ADC1 clock status register
      CLK_APB3_ADC1_STAT       : aliased CLK_APB3_ADC1_STAT_Register;
      --  CLK_APB3_CAN0 clock configuration register
      CLK_APB3_CAN0_CFG        : aliased CLK_APB3_CAN0_CFG_Register;
      --  CLK_APB3_CAN0 clock status register
      CLK_APB3_CAN0_STAT       : aliased CLK_APB3_CAN0_STAT_Register;
      --  CLK_APB1_BUS clock configuration register
      CLK_APB1_BUS_CFG         : aliased CLK_APB1_BUS_CFG_Register;
      --  CLK_APB1_BUS clock status register
      CLK_APB1_BUS_STAT        : aliased CLK_APB1_BUS_STAT_Register;
      --  CLK_APB1_MOTOCONPWM clock configuration register
      CLK_APB1_MOTOCONPWM_CFG  : aliased CLK_APB1_MOTOCONPWM_CFG_Register;
      --  CLK_APB1_MOTOCONPWM clock status register
      CLK_APB1_MOTOCONPWM_STAT : aliased CLK_APB1_MOTOCONPWM_STAT_Register;
      --  CLK_ABP1_I2C0 clock configuration register
      CLK_APB1_I2C0_CFG        : aliased CLK_APB1_I2C0_CFG_Register;
      --  CLK_APB1_I2C0 clock status register
      CLK_APB1_I2C0_STAT       : aliased CLK_APB1_I2C0_STAT_Register;
      --  CLK_APB1_I2S clock configuration register
      CLK_APB1_I2S_CFG         : aliased CLK_APB1_I2S_CFG_Register;
      --  CLK_APB1_I2S clock status register
      CLK_APB1_I2S_STAT        : aliased CLK_APB1_I2S_STAT_Register;
      --  CLK_APB1_CAN1 clock configuration register
      CLK_APB1_CAN1_CFG        : aliased CLK_APB1_CAN1_CFG_Register;
      --  CLK_APB1_CAN1 clock status register
      CLK_APB1_CAN1_STAT       : aliased CLK_APB1_CAN1_STAT_Register;
      --  CLK_SPIFI clock configuration register
      CLK_SPIFI_CFG            : aliased CLK_SPIFI_CFG_Register;
      --  CLK_APB1_SPIFI clock status register
      CLK_SPIFI_STAT           : aliased CLK_SPIFI_STAT_Register;
      --  CLK_M4_BUS clock configuration register
      CLK_M4_BUS_CFG           : aliased CLK_M4_BUS_CFG_Register;
      --  CLK_M4_BUSclock status register
      CLK_M4_BUS_STAT          : aliased CLK_M4_BUS_STAT_Register;
      --  CLK_M4_SPIFI clock configuration register
      CLK_M4_SPIFI_CFG         : aliased CLK_M4_SPIFI_CFG_Register;
      --  CLK_M4_SPIFI clock status register
      CLK_M4_SPIFI_STAT        : aliased CLK_M4_SPIFI_STAT_Register;
      --  CLK_M4_GPIO clock configuration register
      CLK_M4_GPIO_CFG          : aliased CLK_M4_GPIO_CFG_Register;
      --  CLK_M4_GPIO clock status register
      CLK_M4_GPIO_STAT         : aliased CLK_M4_GPIO_STAT_Register;
      --  CLK_M4_LCD clock configuration register
      CLK_M4_LCD_CFG           : aliased CLK_M4_LCD_CFG_Register;
      --  CLK_M4_LCD clock status register
      CLK_M4_LCD_STAT          : aliased CLK_M4_LCD_STAT_Register;
      --  CLK_M4_ETHERNET clock configuration register
      CLK_M4_ETHERNET_CFG      : aliased CLK_M4_ETHERNET_CFG_Register;
      --  CLK_M4_ETHERNET clock status register
      CLK_M4_ETHERNET_STAT     : aliased CLK_M4_ETHERNET_STAT_Register;
      --  CLK_M4_USB0 clock configuration register
      CLK_M4_USB0_CFG          : aliased CLK_M4_USB0_CFG_Register;
      --  CLK_M4_USB0 clock status register
      CLK_M4_USB0_STAT         : aliased CLK_M4_USB0_STAT_Register;
      --  CLK_M4_EMC clock configuration register
      CLK_M4_EMC_CFG           : aliased CLK_M4_EMC_CFG_Register;
      --  CLK_M4_EMC clock status register
      CLK_M4_EMC_STAT          : aliased CLK_M4_EMC_STAT_Register;
      --  CLK_M4_SDIO clock configuration register
      CLK_M4_SDIO_CFG          : aliased CLK_M4_SDIO_CFG_Register;
      --  CLK_M4_SDIO clock status register
      CLK_M4_SDIO_STAT         : aliased CLK_M4_SDIO_STAT_Register;
      --  CLK_M4_DMA clock configuration register
      CLK_M4_DMA_CFG           : aliased CLK_M4_DMA_CFG_Register;
      --  CLK_M4_DMA clock status register
      CLK_M4_DMA_STAT          : aliased CLK_M4_DMA_STAT_Register;
      --  CLK_M4_M4CORE clock configuration register
      CLK_M4_M4CORE_CFG        : aliased CLK_M4_M4CORE_CFG_Register;
      --  CLK_M4_M3CORE clock status register
      CLK_M4_M4CORE_STAT       : aliased CLK_M4_M4CORE_STAT_Register;
      --  CLK_M4_SCT clock configuration register
      CLK_M4_SCT_CFG           : aliased CLK_M4_SCT_CFG_Register;
      --  CLK_M4_SCT clock status register
      CLK_M4_SCT_STAT          : aliased CLK_M4_SCT_STAT_Register;
      --  CLK_M4_USB1 clock configuration register
      CLK_M4_USB1_CFG          : aliased CLK_M4_USB1_CFG_Register;
      --  CLK_M4_USB1 clock status register
      CLK_M4_USB1_STAT         : aliased CLK_M4_USB1_STAT_Register;
      --  CLK_M4_EMCDIV clock configuration register
      CLK_M4_EMCDIV_CFG        : aliased CLK_M4_EMCDIV_CFG_Register;
      --  CLK_M4_EMCDIV clock status register
      CLK_M4_EMCDIV_STAT       : aliased CLK_M4_EMCDIV_STAT_Register;
      --  CLK_M4_FLASHA clock configuration register
      CLK_M4_FLASHA_CFG        : aliased CLK_M4_FLASHA_CFG_Register;
      --  CLK_M4_FLASHA clock status register
      CLK_M4_FLASHA_STAT       : aliased CLK_M4_FLASHA_STAT_Register;
      --  CLK_M4_FLASHB clock configuration register
      CLK_M4_FLASHB_CFG        : aliased CLK_M4_FLASHB_CFG_Register;
      --  CLK_M4_FLASHB clock status register
      CLK_M4_FLASHB_STAT       : aliased CLK_M4_FLASHB_STAT_Register;
      --  CLK_M0APP_CFG clock configuration register
      CLK_M4_M0APP_CFG         : aliased CLK_M4_M0APP_CFG_Register;
      --  CLK_M4_MOAPP clock status register
      CLK_M4_M0APP_STAT        : aliased CLK_M4_M0APP_STAT_Register;
      --  CLK_ADCHS_CFG clock configuration register
      CLK_M4_ADCHS_CFG         : aliased CLK_M4_ADCHS_CFG_Register;
      --  CLK_M4_ADCHS clock status register
      CLK_M4_ADCHS_STAT        : aliased CLK_M4_ADCHS_STAT_Register;
      --  CLK_EEPROM_CFG clock configuration register
      CLK_M4_EEPROM_CFG        : aliased CLK_M4_EEPROM_CFG_Register;
      --  CLK_M4_EEPROM clock status register
      CLK_M4_EEPROM_STAT       : aliased CLK_M4_EEPROM_STAT_Register;
      --  CLK_M4_WWDT clock configuration register
      CLK_M4_WWDT_CFG          : aliased CLK_M4_WWDT_CFG_Register;
      --  CLK_M4_WWDT clock status register
      CLK_M4_WWDT_STAT         : aliased CLK_M4_WWDT_STAT_Register;
      --  CLK_M4_USART0 clock configuration register
      CLK_M4_USART0_CFG        : aliased CLK_M4_USART0_CFG_Register;
      --  CLK_M4_USART0 clock status register
      CLK_M4_USART0_STAT       : aliased CLK_M4_USART0_STAT_Register;
      --  CLK_M4_UART1 clock configuration register
      CLK_M4_UART1_CFG         : aliased CLK_M4_UART1_CFG_Register;
      --  CLK_M4_UART1 clock status register
      CLK_M4_UART1_STAT        : aliased CLK_M4_UART1_STAT_Register;
      --  CLK_M4_SSP0 clock configuration register
      CLK_M4_SSP0_CFG          : aliased CLK_M4_SSP0_CFG_Register;
      --  CLK_M4_SSP0 clock status register
      CLK_M4_SSP0_STAT         : aliased CLK_M4_SSP0_STAT_Register;
      --  CLK_M4_TIMER0 clock configuration register
      CLK_M4_TIMER0_CFG        : aliased CLK_M4_TIMER0_CFG_Register;
      --  CLK_M4_TIMER0 clock status register
      CLK_M4_TIMER0_STAT       : aliased CLK_M4_TIMER0_STAT_Register;
      --  CLK_M4_TIMER1clock configuration register
      CLK_M4_TIMER1_CFG        : aliased CLK_M4_TIMER1_CFG_Register;
      --  CLK_M4_TIMER1 clock status register
      CLK_M4_TIMER1_STAT       : aliased CLK_M4_TIMER1_STAT_Register;
      --  CLK_M4_SCU clock configuration register
      CLK_M4_SCU_CFG           : aliased CLK_M4_SCU_CFG_Register;
      --  CLK_SCU_XXX clock status register
      CLK_M4_SCU_STAT          : aliased CLK_M4_SCU_STAT_Register;
      --  CLK_M4_CREGclock configuration register
      CLK_M4_CREG_CFG          : aliased CLK_M4_CREG_CFG_Register;
      --  CLK_M4_CREG clock status register
      CLK_M4_CREG_STAT         : aliased CLK_M4_CREG_STAT_Register;
      --  CLK_M4_RITIMER clock configuration register
      CLK_M4_RITIMER_CFG       : aliased CLK_M4_RITIMER_CFG_Register;
      --  CLK_M4_RITIMER clock status register
      CLK_M4_RITIMER_STAT      : aliased CLK_M4_RITIMER_STAT_Register;
      --  CLK_M4_USART2 clock configuration register
      CLK_M4_USART2_CFG        : aliased CLK_M4_USART2_CFG_Register;
      --  CLK_M4_USART2 clock status register
      CLK_M4_USART2_STAT       : aliased CLK_M4_USART2_STAT_Register;
      --  CLK_M4_USART3 clock configuration register
      CLK_M4_USART3_CFG        : aliased CLK_M4_USART3_CFG_Register;
      --  CLK_M4_USART3 clock status register
      CLK_M4_USART3_STAT       : aliased CLK_M4_USART3_STAT_Register;
      --  CLK_M4_TIMER2 clock configuration register
      CLK_M4_TIMER2_CFG        : aliased CLK_M4_TIMER2_CFG_Register;
      --  CLK_M4_TIMER2 clock status register
      CLK_M4_TIMER2_STAT       : aliased CLK_M4_TIMER2_STAT_Register;
      --  CLK_M4_TIMER3 clock configuration register
      CLK_M4_TIMER3_CFG        : aliased CLK_M4_TIMER3_CFG_Register;
      --  CLK_M4_TIMER3 clock status register
      CLK_M4_TIMER3_STAT       : aliased CLK_M4_TIMER3_STAT_Register;
      --  CLK_M4_SSP1 clock configuration register
      CLK_M4_SSP1_CFG          : aliased CLK_M4_SSP1_CFG_Register;
      --  CLK_M4_SSP1 clock status register
      CLK_M4_SSP1_STAT         : aliased CLK_M4_SSP1_STAT_Register;
      --  CLK_M4_QEIclock configuration register
      CLK_M4_QEI_CFG           : aliased CLK_M4_QEI_CFG_Register;
      --  CLK_M4_QEI clock status register
      CLK_M4_QEI_STAT          : aliased CLK_M4_QEI_STAT_Register;
      --  CLK_PERIPH_BUS_CFG clock configuration register
      CLK_PERIPH_BUS_CFG       : aliased CLK_PERIPH_BUS_CFG_Register;
      --  CLK_PERIPH_BUS_STAT clock status register
      CLK_PERIPH_BUS_STAT      : aliased CLK_PERIPH_BUS_STAT_Register;
      --  CLK_PERIPH_CORE_CFG clock configuration register
      CLK_PERIPH_CORE_CFG      : aliased CLK_PERIPH_CORE_CFG_Register;
      --  CLK_CORE_BUS_STAT clock status register
      CLK_PERIPH_CORE_STAT     : aliased CLK_PERIPH_CORE_STAT_Register;
      --  CLK_PERIPH_SGPIO_CFG clock configuration register
      CLK_PERIPH_SGPIO_CFG     : aliased CLK_PERIPH_SGPIO_CFG_Register;
      --  CLK_CORE_SGPIO_STAT clock status register
      CLK_PERIPH_SGPIO_STAT    : aliased CLK_PERIPH_SGPIO_STAT_Register;
      --  CLK_M4_USB0 clock configuration register
      CLK_USB0_CFG             : aliased CLK_USB0_CFG_Register;
      --  CLK_USB0 clock status register
      CLK_USB0_STAT            : aliased CLK_USB0_STAT_Register;
      --  CLK_USB1 clock configuration register
      CLK_USB1_CFG             : aliased CLK_USB1_CFG_Register;
      --  CLK_USB1 clock status register
      CLK_USB1_STAT            : aliased CLK_USB1_STAT_Register;
      --  CLK_SPI clock configuration register
      CLK_SPI_CFG              : aliased CLK_SPI_CFG_Register;
      --  CLK_SPI clock status register
      CLK_SPI_STAT             : aliased CLK_SPI_STAT_Register;
      --  CLK_ADCHS clock configuration register
      CLK_ADCHS_CFG            : aliased CLK_ADCHS_CFG_Register;
      --  CLK_ADCHS clock status register
      CLK_ADCHS_STAT           : aliased CLK_ADCHS_STAT_Register;
   end record
     with Volatile;

   for CCU1_Peripheral use record
      PM                       at 16#0# range 0 .. 31;
      BASE_STAT                at 16#4# range 0 .. 31;
      CLK_APB3_BUS_CFG         at 16#100# range 0 .. 31;
      CLK_APB3_BUS_STAT        at 16#104# range 0 .. 31;
      CLK_APB3_I2C1_CFG        at 16#108# range 0 .. 31;
      CLK_APB3_I2C1_STAT       at 16#10C# range 0 .. 31;
      CLK_APB3_DAC_CFG         at 16#110# range 0 .. 31;
      CLK_APB3_DAC_STAT        at 16#114# range 0 .. 31;
      CLK_APB3_ADC0_CFG        at 16#118# range 0 .. 31;
      CLK_APB3_ADC0_STAT       at 16#11C# range 0 .. 31;
      CLK_APB3_ADC1_CFG        at 16#120# range 0 .. 31;
      CLK_APB3_ADC1_STAT       at 16#124# range 0 .. 31;
      CLK_APB3_CAN0_CFG        at 16#128# range 0 .. 31;
      CLK_APB3_CAN0_STAT       at 16#12C# range 0 .. 31;
      CLK_APB1_BUS_CFG         at 16#200# range 0 .. 31;
      CLK_APB1_BUS_STAT        at 16#204# range 0 .. 31;
      CLK_APB1_MOTOCONPWM_CFG  at 16#208# range 0 .. 31;
      CLK_APB1_MOTOCONPWM_STAT at 16#20C# range 0 .. 31;
      CLK_APB1_I2C0_CFG        at 16#210# range 0 .. 31;
      CLK_APB1_I2C0_STAT       at 16#214# range 0 .. 31;
      CLK_APB1_I2S_CFG         at 16#218# range 0 .. 31;
      CLK_APB1_I2S_STAT        at 16#21C# range 0 .. 31;
      CLK_APB1_CAN1_CFG        at 16#220# range 0 .. 31;
      CLK_APB1_CAN1_STAT       at 16#224# range 0 .. 31;
      CLK_SPIFI_CFG            at 16#300# range 0 .. 31;
      CLK_SPIFI_STAT           at 16#304# range 0 .. 31;
      CLK_M4_BUS_CFG           at 16#400# range 0 .. 31;
      CLK_M4_BUS_STAT          at 16#404# range 0 .. 31;
      CLK_M4_SPIFI_CFG         at 16#408# range 0 .. 31;
      CLK_M4_SPIFI_STAT        at 16#40C# range 0 .. 31;
      CLK_M4_GPIO_CFG          at 16#410# range 0 .. 31;
      CLK_M4_GPIO_STAT         at 16#414# range 0 .. 31;
      CLK_M4_LCD_CFG           at 16#418# range 0 .. 31;
      CLK_M4_LCD_STAT          at 16#41C# range 0 .. 31;
      CLK_M4_ETHERNET_CFG      at 16#420# range 0 .. 31;
      CLK_M4_ETHERNET_STAT     at 16#424# range 0 .. 31;
      CLK_M4_USB0_CFG          at 16#428# range 0 .. 31;
      CLK_M4_USB0_STAT         at 16#42C# range 0 .. 31;
      CLK_M4_EMC_CFG           at 16#430# range 0 .. 31;
      CLK_M4_EMC_STAT          at 16#434# range 0 .. 31;
      CLK_M4_SDIO_CFG          at 16#438# range 0 .. 31;
      CLK_M4_SDIO_STAT         at 16#43C# range 0 .. 31;
      CLK_M4_DMA_CFG           at 16#440# range 0 .. 31;
      CLK_M4_DMA_STAT          at 16#444# range 0 .. 31;
      CLK_M4_M4CORE_CFG        at 16#448# range 0 .. 31;
      CLK_M4_M4CORE_STAT       at 16#44C# range 0 .. 31;
      CLK_M4_SCT_CFG           at 16#468# range 0 .. 31;
      CLK_M4_SCT_STAT          at 16#46C# range 0 .. 31;
      CLK_M4_USB1_CFG          at 16#470# range 0 .. 31;
      CLK_M4_USB1_STAT         at 16#474# range 0 .. 31;
      CLK_M4_EMCDIV_CFG        at 16#478# range 0 .. 31;
      CLK_M4_EMCDIV_STAT       at 16#47C# range 0 .. 31;
      CLK_M4_FLASHA_CFG        at 16#480# range 0 .. 31;
      CLK_M4_FLASHA_STAT       at 16#484# range 0 .. 31;
      CLK_M4_FLASHB_CFG        at 16#488# range 0 .. 31;
      CLK_M4_FLASHB_STAT       at 16#48C# range 0 .. 31;
      CLK_M4_M0APP_CFG         at 16#490# range 0 .. 31;
      CLK_M4_M0APP_STAT        at 16#494# range 0 .. 31;
      CLK_M4_ADCHS_CFG         at 16#498# range 0 .. 31;
      CLK_M4_ADCHS_STAT        at 16#49C# range 0 .. 31;
      CLK_M4_EEPROM_CFG        at 16#4A0# range 0 .. 31;
      CLK_M4_EEPROM_STAT       at 16#4A4# range 0 .. 31;
      CLK_M4_WWDT_CFG          at 16#500# range 0 .. 31;
      CLK_M4_WWDT_STAT         at 16#504# range 0 .. 31;
      CLK_M4_USART0_CFG        at 16#508# range 0 .. 31;
      CLK_M4_USART0_STAT       at 16#50C# range 0 .. 31;
      CLK_M4_UART1_CFG         at 16#510# range 0 .. 31;
      CLK_M4_UART1_STAT        at 16#514# range 0 .. 31;
      CLK_M4_SSP0_CFG          at 16#518# range 0 .. 31;
      CLK_M4_SSP0_STAT         at 16#51C# range 0 .. 31;
      CLK_M4_TIMER0_CFG        at 16#520# range 0 .. 31;
      CLK_M4_TIMER0_STAT       at 16#524# range 0 .. 31;
      CLK_M4_TIMER1_CFG        at 16#528# range 0 .. 31;
      CLK_M4_TIMER1_STAT       at 16#52C# range 0 .. 31;
      CLK_M4_SCU_CFG           at 16#530# range 0 .. 31;
      CLK_M4_SCU_STAT          at 16#534# range 0 .. 31;
      CLK_M4_CREG_CFG          at 16#538# range 0 .. 31;
      CLK_M4_CREG_STAT         at 16#53C# range 0 .. 31;
      CLK_M4_RITIMER_CFG       at 16#600# range 0 .. 31;
      CLK_M4_RITIMER_STAT      at 16#604# range 0 .. 31;
      CLK_M4_USART2_CFG        at 16#608# range 0 .. 31;
      CLK_M4_USART2_STAT       at 16#60C# range 0 .. 31;
      CLK_M4_USART3_CFG        at 16#610# range 0 .. 31;
      CLK_M4_USART3_STAT       at 16#614# range 0 .. 31;
      CLK_M4_TIMER2_CFG        at 16#618# range 0 .. 31;
      CLK_M4_TIMER2_STAT       at 16#61C# range 0 .. 31;
      CLK_M4_TIMER3_CFG        at 16#620# range 0 .. 31;
      CLK_M4_TIMER3_STAT       at 16#624# range 0 .. 31;
      CLK_M4_SSP1_CFG          at 16#628# range 0 .. 31;
      CLK_M4_SSP1_STAT         at 16#62C# range 0 .. 31;
      CLK_M4_QEI_CFG           at 16#630# range 0 .. 31;
      CLK_M4_QEI_STAT          at 16#634# range 0 .. 31;
      CLK_PERIPH_BUS_CFG       at 16#700# range 0 .. 31;
      CLK_PERIPH_BUS_STAT      at 16#704# range 0 .. 31;
      CLK_PERIPH_CORE_CFG      at 16#710# range 0 .. 31;
      CLK_PERIPH_CORE_STAT     at 16#714# range 0 .. 31;
      CLK_PERIPH_SGPIO_CFG     at 16#718# range 0 .. 31;
      CLK_PERIPH_SGPIO_STAT    at 16#71C# range 0 .. 31;
      CLK_USB0_CFG             at 16#800# range 0 .. 31;
      CLK_USB0_STAT            at 16#804# range 0 .. 31;
      CLK_USB1_CFG             at 16#900# range 0 .. 31;
      CLK_USB1_STAT            at 16#904# range 0 .. 31;
      CLK_SPI_CFG              at 16#A00# range 0 .. 31;
      CLK_SPI_STAT             at 16#A04# range 0 .. 31;
      CLK_ADCHS_CFG            at 16#B00# range 0 .. 31;
      CLK_ADCHS_STAT           at 16#B04# range 0 .. 31;
   end record;

   --  Clock Control Unit (CCU)
   CCU1_Periph : aliased CCU1_Peripheral
     with Import, Address => System'To_Address (16#40051000#);

end LPC43xx.CCU1;
