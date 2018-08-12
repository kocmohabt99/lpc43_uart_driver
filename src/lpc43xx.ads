--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  Register cmsis file for LPC43xx parts
package LPC43xx is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   SCT_Base : constant System.Address :=
     System'To_Address (16#40000000#);
   GPDMA_Base : constant System.Address :=
     System'To_Address (16#40002000#);
   SPIFI_Base : constant System.Address :=
     System'To_Address (16#40003000#);
   SDMMC_Base : constant System.Address :=
     System'To_Address (16#40004000#);
   EMC_Base : constant System.Address :=
     System'To_Address (16#40005000#);
   USB0_Base : constant System.Address :=
     System'To_Address (16#40006000#);
   USB1_Base : constant System.Address :=
     System'To_Address (16#40007000#);
   LCD_Base : constant System.Address :=
     System'To_Address (16#40008000#);
   EEPROM_Base : constant System.Address :=
     System'To_Address (16#4000E000#);
   ETHERNET_Base : constant System.Address :=
     System'To_Address (16#40010000#);
   ATIMER_Base : constant System.Address :=
     System'To_Address (16#40040000#);
   REGFILE_Base : constant System.Address :=
     System'To_Address (16#40041000#);
   PMC_Base : constant System.Address :=
     System'To_Address (16#40042000#);
   CREG_Base : constant System.Address :=
     System'To_Address (16#40043000#);
   EVENTROUTER_Base : constant System.Address :=
     System'To_Address (16#40044000#);
   RTC_Base : constant System.Address :=
     System'To_Address (16#40046000#);
   CGU_Base : constant System.Address :=
     System'To_Address (16#40050000#);
   CCU1_Base : constant System.Address :=
     System'To_Address (16#40051000#);
   CCU2_Base : constant System.Address :=
     System'To_Address (16#40052000#);
   RGU_Base : constant System.Address :=
     System'To_Address (16#40053000#);
   WWDT_Base : constant System.Address :=
     System'To_Address (16#40080000#);
   USART0_Base : constant System.Address :=
     System'To_Address (16#40081000#);
   USART2_Base : constant System.Address :=
     System'To_Address (16#400C1000#);
   USART3_Base : constant System.Address :=
     System'To_Address (16#400C2000#);
   UART1_Base : constant System.Address :=
     System'To_Address (16#40082000#);
   SSP0_Base : constant System.Address :=
     System'To_Address (16#40083000#);
   SSP1_Base : constant System.Address :=
     System'To_Address (16#400C5000#);
   TIMER0_Base : constant System.Address :=
     System'To_Address (16#40084000#);
   TIMER1_Base : constant System.Address :=
     System'To_Address (16#40085000#);
   TIMER2_Base : constant System.Address :=
     System'To_Address (16#400C3000#);
   TIMER3_Base : constant System.Address :=
     System'To_Address (16#400C4000#);
   SCU_Base : constant System.Address :=
     System'To_Address (16#40086000#);
   GPIO_PIN_INT_Base : constant System.Address :=
     System'To_Address (16#40087000#);
   GPIO_GROUP_INT0_Base : constant System.Address :=
     System'To_Address (16#40088000#);
   GPIO_GROUP_INT1_Base : constant System.Address :=
     System'To_Address (16#40089000#);
   MCPWM_Base : constant System.Address :=
     System'To_Address (16#400A0000#);
   I2C0_Base : constant System.Address :=
     System'To_Address (16#400A1000#);
   I2C1_Base : constant System.Address :=
     System'To_Address (16#400E0000#);
   I2S0_Base : constant System.Address :=
     System'To_Address (16#400A2000#);
   I2S1_Base : constant System.Address :=
     System'To_Address (16#400A3000#);
   C_CAN1_Base : constant System.Address :=
     System'To_Address (16#400A4000#);
   RITIMER_Base : constant System.Address :=
     System'To_Address (16#400C0000#);
   QEI_Base : constant System.Address :=
     System'To_Address (16#400C6000#);
   GIMA_Base : constant System.Address :=
     System'To_Address (16#400C7000#);
   DAC_Base : constant System.Address :=
     System'To_Address (16#400E1000#);
   C_CAN0_Base : constant System.Address :=
     System'To_Address (16#400E2000#);
   ADC0_Base : constant System.Address :=
     System'To_Address (16#400E3000#);
   ADC1_Base : constant System.Address :=
     System'To_Address (16#400E4000#);
   ADCHS_Base : constant System.Address :=
     System'To_Address (16#400F0000#);
   GPIO_PORT_Base : constant System.Address :=
     System'To_Address (16#400F4000#);
   SPI_Base : constant System.Address :=
     System'To_Address (16#40100000#);
   SGPIO_Base : constant System.Address :=
     System'To_Address (16#40101000#);

end LPC43xx;
