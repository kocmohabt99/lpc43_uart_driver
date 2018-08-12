--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package LPC43xx.USART is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype RBR_RBR_Field is HAL.UInt8;
   subtype RBR_RESERVED_Field is HAL.UInt24;

   --  Receiver Buffer Register. Contains the next received character to be
   --  read (DLAB = 0).
   type RBR_Register is record
      --  Read-only. *** This field is modified following a read operation ***.
      --  Receiver buffer. The USART Receiver Buffer Register contains the
      --  oldest received byte in the USART RX FIFO.
      RBR      : RBR_RBR_Field;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Reserved
      RESERVED : RBR_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RBR_Register use record
      RBR      at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   subtype THR_THR_Field is HAL.UInt8;
   subtype THR_RESERVED_Field is HAL.UInt24;

   --  Transmit Holding Register. The next character to be transmitted is
   --  written here (DLAB = 0).
   type THR_Register is record
      --  Write-only. *** This field is modified following a read operation
      --  ***. Transmit Holding Register. Writing to the USART Transmit Holding
      --  Register causes the data to be stored in the USART transmit FIFO. The
      --  byte will be sent when it reaches the bottom of the FIFO and the
      --  transmitter is available.
      THR      : THR_THR_Field := 16#0#;
      --  Write-only. *** This field is modified following a read operation
      --  ***. Reserved
      RESERVED : THR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for THR_Register use record
      THR      at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   subtype DLL_DLLSB_Field is HAL.UInt8;
   subtype DLL_RESERVED_Field is HAL.UInt24;

   --  Divisor Latch LSB. Least significant byte of the baud rate divisor
   --  value. The full divisor is used to generate a baud rate from the
   --  fractional rate divider (DLAB = 1).
   type DLL_Register is record
      --  Divisor latch LSB. The USART Divisor Latch LSB Register, along with
      --  the DLM register, determines the baud rate of the USART.
      DLLSB    : DLL_DLLSB_Field := 16#1#;
      --  Reserved
      RESERVED : DLL_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLL_Register use record
      DLLSB    at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   subtype DLM_DLMSB_Field is HAL.UInt8;
   subtype DLM_RESERVED_Field is HAL.UInt24;

   --  Divisor Latch MSB. Most significant byte of the baud rate divisor value.
   --  The full divisor is used to generate a baud rate from the fractional
   --  rate divider (DLAB = 1).
   type DLM_Register is record
      --  Divisor latch MSB. The USART Divisor Latch MSB Register, along with
      --  the DLL register, determines the baud rate of the USART.
      DLMSB    : DLM_DLMSB_Field := 16#0#;
      --  Reserved
      RESERVED : DLM_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLM_Register use record
      DLMSB    at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  RBR Interrupt Enable. Enables the Receive Data Available interrupt for
   --  USART. It also controls the Character Receive Time-out interrupt.
   type IER_ENUM is
     (
      --  Disable. Disable the RDA interrupt.
      Disable,
      --  Enable. Enable the RDA interrupt.
      Enable)
     with Size => 1;
   for IER_ENUM use
     (Disable => 0,
      Enable => 1);

   subtype IER_RESERVED_Field is HAL.UInt3;
   subtype IER_RESERVED_Field_1 is HAL.UInt22;

   --  Interrupt Enable Register. Contains individual interrupt enable bits for
   --  the 7 potential USART interrupts (DLAB = 0).
   type IER_Register is record
      --  RBR Interrupt Enable. Enables the Receive Data Available interrupt
      --  for USART. It also controls the Character Receive Time-out interrupt.
      RBRIE      : IER_ENUM := LPC43xx.USART.Disable;
      --  THRE Interrupt Enable. Enables the THRE interrupt for USART. The
      --  status of this interrupt can be read from LSR[5].
      THREIE     : IER_ENUM := LPC43xx.USART.Disable;
      --  RX Line Interrupt Enable. Enables the USART RX line status
      --  interrupts. The status of this interrupt can be read from LSR[4:1].
      RXIE       : IER_ENUM := LPC43xx.USART.Disable;
      --  Reserved
      RESERVED   : Boolean := False;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1 : IER_RESERVED_Field := 16#0#;
      --  Reserved
      RESERVED_2 : Boolean := False;
      --  Enables the end of auto-baud interrupt.
      ABEOINTEN  : IER_ENUM := LPC43xx.USART.Disable;
      --  Enables the auto-baud time-out interrupt.
      ABTOINTEN  : IER_ENUM := LPC43xx.USART.Disable;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_3 : IER_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      RBRIE      at 0 range 0 .. 0;
      THREIE     at 0 range 1 .. 1;
      RXIE       at 0 range 2 .. 2;
      RESERVED   at 0 range 3 .. 3;
      RESERVED_1 at 0 range 4 .. 6;
      RESERVED_2 at 0 range 7 .. 7;
      ABEOINTEN  at 0 range 8 .. 8;
      ABTOINTEN  at 0 range 9 .. 9;
      RESERVED_3 at 0 range 10 .. 31;
   end record;

   --  Interrupt status. Note that IIR[0] is active low. The pending interrupt
   --  can be determined by evaluating IIR[3:1].
   type IIR_ENUM is
     (
      --  Interrupt pending. At least one interrupt is pending.
      Interrupt_Pending,
      --  Not pending. No interrupt is pending.
      Not_Pending)
     with Size => 1;
   for IIR_ENUM use
     (Interrupt_Pending => 0,
      Not_Pending => 1);

   --  Interrupt identification. IER[3:1] identifies an interrupt corresponding
   --  to the USART Rx FIFO. All other combinations of IER[3:1] not listed
   --  below are reserved (100,101,111).
   type IIR_ENUM_1 is
     (
      --  Reserved. Priority 4 (lowest) - Reserved.
      Reserved,
      --  THRE. Priority 3 - THRE Interrupt.
      Thre,
      --  RDA. Priority 2 - Receive Data Available (RDA).
      Rda,
      --  RLS. Priority 1 (highest). (Highest) Receive Line Status (RLS).
      Rls,
      --  CTI. Priority 2 - Character Time-out Indicator (CTI).
      Cti)
     with Size => 3;
   for IIR_ENUM_1 use
     (Reserved => 0,
      Thre => 1,
      Rda => 2,
      Rls => 3,
      Cti => 6);

   subtype IIR_RESERVED_Field is HAL.UInt2;
   subtype IIR_FIFOENABLE_Field is HAL.UInt2;
   subtype IIR_RESERVED_Field_1 is HAL.UInt22;

   --  Interrupt ID Register. Identifies which interrupt(s) are pending.
   type IIR_Register is record
      --  Read-only. Interrupt status. Note that IIR[0] is active low. The
      --  pending interrupt can be determined by evaluating IIR[3:1].
      INTSTATUS  : IIR_ENUM;
      --  Read-only. Interrupt identification. IER[3:1] identifies an interrupt
      --  corresponding to the USART Rx FIFO. All other combinations of
      --  IER[3:1] not listed below are reserved (100,101,111).
      INTID      : IIR_ENUM_1;
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED   : IIR_RESERVED_Field;
      --  Read-only. Copies of FCR[0].
      FIFOENABLE : IIR_FIFOENABLE_Field;
      --  Read-only. End of auto-baud interrupt. True if auto-baud has finished
      --  successfully and interrupt is enabled.
      ABEOINT    : Boolean;
      --  Read-only. Auto-baud time-out interrupt. True if auto-baud has timed
      --  out and interrupt is enabled.
      ABTOINT    : Boolean;
      --  Read-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED_1 : IIR_RESERVED_Field_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IIR_Register use record
      INTSTATUS  at 0 range 0 .. 0;
      INTID      at 0 range 1 .. 3;
      RESERVED   at 0 range 4 .. 5;
      FIFOENABLE at 0 range 6 .. 7;
      ABEOINT    at 0 range 8 .. 8;
      ABTOINT    at 0 range 9 .. 9;
      RESERVED_1 at 0 range 10 .. 31;
   end record;

   --  FIFO Enable.
   type FCR_ENUM is
     (
      --  Disabled. USART FIFOs are disabled. Must not be used in the
      --  application.
      Disabled,
      --  Enabled. Active high enable for both USART Rx and TX FIFOs and
      --  FCR[7:1] access. This bit must be set for proper USART operation. Any
      --  transition on this bit will automatically clear the USART FIFOs.
      Enabled)
     with Size => 1;
   for FCR_ENUM use
     (Disabled => 0,
      Enabled => 1);

   --  RX FIFO Reset.
   type FCR_ENUM_1 is
     (
      --  No effect. No impact on either of USART FIFOs.
      No_Effect,
      --  Clear. Writing a logic 1 to FCR[1] will clear all bytes in USART Rx
      --  FIFO, reset the pointer logic. This bit is self-clearing.
      Clear)
     with Size => 1;
   for FCR_ENUM_1 use
     (No_Effect => 0,
      Clear => 1);

   subtype FCR_RESERVED_Field is HAL.UInt2;

   --  RX Trigger Level. These two bits determine how many receiver USART FIFO
   --  characters must be written before an interrupt is activated.
   type FCR_ENUM_2 is
     (
      --  Level 0. Trigger level 0 (1 character or 0x01).
      Level_0,
      --  Level 1. Trigger level 1 (4 characters or 0x04).
      Level_1,
      --  Level 2. Trigger level 2 (8 characters or 0x08).
      Level_2,
      --  Level 3. Trigger level 3 (14 characters or 0x0E).
      Level_3)
     with Size => 2;
   for FCR_ENUM_2 use
     (Level_0 => 0,
      Level_1 => 1,
      Level_2 => 2,
      Level_3 => 3);

   subtype FCR_RESERVED_Field_1 is HAL.UInt24;

   --  FIFO Control Register. Controls USART FIFO usage and modes.
   type FCR_Register is record
      --  Write-only. FIFO Enable.
      FIFOEN     : FCR_ENUM := LPC43xx.USART.Disabled;
      --  Write-only. RX FIFO Reset.
      RXFIFORES  : FCR_ENUM_1 := LPC43xx.USART.No_Effect;
      --  Write-only. TX FIFO Reset.
      TXFIFORES  : FCR_ENUM_1 := LPC43xx.USART.No_Effect;
      --  Write-only. DMA Mode Select. When the FIFO enable bit (bit 0 of this
      --  register) is set, this bit selects the DMA mode.
      DMAMODE    : Boolean := False;
      --  Write-only. Reserved, user software should not write ones to reserved
      --  bits. The value read from a reserved bit is not defined.
      RESERVED   : FCR_RESERVED_Field := 16#0#;
      --  Write-only. RX Trigger Level. These two bits determine how many
      --  receiver USART FIFO characters must be written before an interrupt is
      --  activated.
      RXTRIGLVL  : FCR_ENUM_2 := LPC43xx.USART.Level_0;
      --  Write-only. Reserved
      RESERVED_1 : FCR_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FCR_Register use record
      FIFOEN     at 0 range 0 .. 0;
      RXFIFORES  at 0 range 1 .. 1;
      TXFIFORES  at 0 range 2 .. 2;
      DMAMODE    at 0 range 3 .. 3;
      RESERVED   at 0 range 4 .. 5;
      RXTRIGLVL  at 0 range 6 .. 7;
      RESERVED_1 at 0 range 8 .. 31;
   end record;

   --  Word Length Select.
   type LCR_ENUM is
     (
      --  5-bit character length.
      Val_5_Bit_Character_Leng,
      --  6-bit character length.
      Val_6_Bit_Character_Leng,
      --  7-bit character length.
      Val_7_Bit_Character_Leng,
      --  8-bit character length.
      Val_8_Bit_Character_Leng)
     with Size => 2;
   for LCR_ENUM use
     (Val_5_Bit_Character_Leng => 0,
      Val_6_Bit_Character_Leng => 1,
      Val_7_Bit_Character_Leng => 2,
      Val_8_Bit_Character_Leng => 3);

   --  Stop Bit Select.
   type LCR_ENUM_1 is
     (
      --  1 stop bit.
      Val_1_Stop_Bit,
      --  2 stop bits (1.5 if LCR[1:0]=00).
      Val_2_Stop_Bits_1)
     with Size => 1;
   for LCR_ENUM_1 use
     (Val_1_Stop_Bit => 0,
      Val_2_Stop_Bits_1 => 1);

   --  Parity Enable
   type LCR_ENUM_2 is
     (
      --  Disable parity generation and checking.
      Disable_Parity_Gener,
      --  Enable parity generation and checking.
      Enable_Parity_Genera)
     with Size => 1;
   for LCR_ENUM_2 use
     (Disable_Parity_Gener => 0,
      Enable_Parity_Genera => 1);

   --  Parity Select.
   type LCR_ENUM_3 is
     (
      --  Odd parity. Number of 1s in the transmitted character and the
      --  attached parity bit will be odd.
      Odd_Parity,
      --  Even Parity. Number of 1s in the transmitted character and the
      --  attached parity bit will be even.
      Even_Parity,
      --  Force HIGH. Forced 1 stick parity.
      Force_High,
      --  Force LOW. Forced 0 stick parity.
      Force_Low)
     with Size => 2;
   for LCR_ENUM_3 use
     (Odd_Parity => 0,
      Even_Parity => 1,
      Force_High => 2,
      Force_Low => 3);

   --  Break Control.
   type LCR_ENUM_4 is
     (
      --  Disabled. Disable break transmission.
      Disabled,
      --  Enabled. Enable break transmission. Output pin USART TXD is forced to
      --  logic 0 when LCR[6] is active high.
      Enabled)
     with Size => 1;
   for LCR_ENUM_4 use
     (Disabled => 0,
      Enabled => 1);

   subtype LCR_RESERVED_Field is HAL.UInt24;

   --  Line Control Register. Contains controls for frame formatting and break
   --  generation.
   type LCR_Register is record
      --  Word Length Select.
      WLS      : LCR_ENUM := LPC43xx.USART.Val_5_Bit_Character_Leng;
      --  Stop Bit Select.
      SBS      : LCR_ENUM_1 := LPC43xx.USART.Val_1_Stop_Bit;
      --  Parity Enable
      PE       : LCR_ENUM_2 := LPC43xx.USART.Disable_Parity_Gener;
      --  Parity Select.
      PS       : LCR_ENUM_3 := LPC43xx.USART.Odd_Parity;
      --  Break Control.
      BC       : LCR_ENUM_4 := LPC43xx.USART.Disabled;
      --  Divisor Latch Access Bit.
      DLAB     : LCR_ENUM_4 := LPC43xx.USART.Disabled;
      --  Reserved
      RESERVED : LCR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCR_Register use record
      WLS      at 0 range 0 .. 1;
      SBS      at 0 range 2 .. 2;
      PE       at 0 range 3 .. 3;
      PS       at 0 range 4 .. 5;
      BC       at 0 range 6 .. 6;
      DLAB     at 0 range 7 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Receiver Data Ready. LSR[0] is set when the RBR holds an unread
   --  character and is cleared when the USART RBR FIFO is empty.
   type LSR_ENUM is
     (
      --  Empty. RBR is empty.
      Empty,
      --  Data. RBR contains valid data.
      Data)
     with Size => 1;
   for LSR_ENUM use
     (Empty => 0,
      Data => 1);

   --  Overrun Error. The overrun error condition is set as soon as it occurs.
   --  A LSR read clears LSR[1]. LSR[1] is set when USART RSR has a new
   --  character assembled and the USART RBR FIFO is full. In this case, the
   --  USART RBR FIFO will not be overwritten and the character in the USART
   --  RSR will be lost.
   type LSR_ENUM_1 is
     (
      --  Inactive. Overrun error status is inactive.
      Inactive,
      --  Active. Overrun error status is active.
      Active)
     with Size => 1;
   for LSR_ENUM_1 use
     (Inactive => 0,
      Active => 1);

   --  Transmitter Holding Register Empty. THRE is set immediately upon
   --  detection of an empty USART THR and is cleared on a THR write.
   type LSR_ENUM_2 is
     (
      --  Not empty. THR contains valid data.
      Not_Empty,
      --  Empty. THR is empty.
      Empty)
     with Size => 1;
   for LSR_ENUM_2 use
     (Not_Empty => 0,
      Empty => 1);

   --  Error in RX FIFO. LSR[7] is set when a character with a RX error such as
   --  framing error, parity error or break interrupt, is loaded into the RBR.
   --  This bit is cleared when the LSR register is read and there are no
   --  subsequent errors in the USART FIFO.
   type LSR_ENUM_3 is
     (
      --  No error. RBR contains no USART RX errors or FCR[0]=0.
      No_Error,
      --  Error. USART RBR contains at least one USART RX error.
      Error)
     with Size => 1;
   for LSR_ENUM_3 use
     (No_Error => 0,
      Error => 1);

   --  Error in transmitted character. A NACK response is given by the receiver
   --  in Smart card T=0 mode. This bit is cleared when the LSR register is
   --  read.
   type LSR_ENUM_4 is
     (
      --  No error. No error (normal default condition).
      No_Error,
      --  NACK. A NACK response is received during Smart card T=0 operation.
      Nack)
     with Size => 1;
   for LSR_ENUM_4 use
     (No_Error => 0,
      Nack => 1);

   subtype LSR_RESERVED_Field is HAL.UInt23;

   --  Line Status Register. Contains flags for transmit and receive status,
   --  including line errors.
   type LSR_Register is record
      --  Read-only. *** This field is modified following a read operation ***.
      --  Receiver Data Ready. LSR[0] is set when the RBR holds an unread
      --  character and is cleared when the USART RBR FIFO is empty.
      RDR      : LSR_ENUM;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Overrun Error. The overrun error condition is set as soon as it
      --  occurs. A LSR read clears LSR[1]. LSR[1] is set when USART RSR has a
      --  new character assembled and the USART RBR FIFO is full. In this case,
      --  the USART RBR FIFO will not be overwritten and the character in the
      --  USART RSR will be lost.
      OE       : LSR_ENUM_1;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Parity Error. When the parity bit of a received character is in the
      --  wrong state, a parity error occurs. A LSR read clears LSR[2]. Time of
      --  parity error detection is dependent on FCR[0]. Note: A parity error
      --  is associated with the character at the top of the USART RBR FIFO.
      PE       : LSR_ENUM_1;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Framing Error. When the stop bit of a received character is a logic
      --  0, a framing error occurs. A LSR read clears LSR[3]. The time of the
      --  framing error detection is dependent on FCR0. Upon detection of a
      --  framing error, the RX will attempt to re-synchronize to the data and
      --  assume that the bad stop bit is actually an early start bit. However,
      --  it cannot be assumed that the next received byte will be correct even
      --  if there is no Framing Error. Note: A framing error is associated
      --  with the character at the top of the USART RBR FIFO.
      FE       : LSR_ENUM_1;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Break Interrupt. When RXD1 is held in the spacing state (all zeros)
      --  for one full character transmission (start, data, parity, stop), a
      --  break interrupt occurs. Once the break condition has been detected,
      --  the receiver goes idle until RXD1 goes to marking state (all ones). A
      --  LSR read clears this status bit. The time of break detection is
      --  dependent on FCR[0]. Note: The break interrupt is associated with the
      --  character at the top of the USART RBR FIFO.
      BI       : LSR_ENUM_1;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Transmitter Holding Register Empty. THRE is set immediately upon
      --  detection of an empty USART THR and is cleared on a THR write.
      THRE     : LSR_ENUM_2;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Transmitter Empty. TEMT is set when both THR and TSR are empty; TEMT
      --  is cleared when either the TSR or the THR contain valid data.
      TEMT     : LSR_ENUM_2;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Error in RX FIFO. LSR[7] is set when a character with a RX error such
      --  as framing error, parity error or break interrupt, is loaded into the
      --  RBR. This bit is cleared when the LSR register is read and there are
      --  no subsequent errors in the USART FIFO.
      RXFE     : LSR_ENUM_3;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Error in transmitted character. A NACK response is given by the
      --  receiver in Smart card T=0 mode. This bit is cleared when the LSR
      --  register is read.
      TXERR    : LSR_ENUM_4;
      --  Read-only. *** This field is modified following a read operation ***.
      --  Reserved
      RESERVED : LSR_RESERVED_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LSR_Register use record
      RDR      at 0 range 0 .. 0;
      OE       at 0 range 1 .. 1;
      PE       at 0 range 2 .. 2;
      FE       at 0 range 3 .. 3;
      BI       at 0 range 4 .. 4;
      THRE     at 0 range 5 .. 5;
      TEMT     at 0 range 6 .. 6;
      RXFE     at 0 range 7 .. 7;
      TXERR    at 0 range 8 .. 8;
      RESERVED at 0 range 9 .. 31;
   end record;

   subtype SCR_PAD_Field is HAL.UInt8;
   subtype SCR_RESERVED_Field is HAL.UInt24;

   --  Scratch Pad Register. Eight-bit temporary storage for software.
   type SCR_Register is record
      --  Scratch pad. A readable, writable byte.
      PAD      : SCR_PAD_Field := 16#0#;
      --  Reserved
      RESERVED : SCR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCR_Register use record
      PAD      at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Start bit. This bit is automatically cleared after auto-baud completion.
   type ACR_ENUM is
     (
      --  Stop. Auto-baud stop (auto-baud is not running).
      Stop,
      --  Start. Auto-baud start (auto-baud is running). Auto-baud run bit.
      --  This bit is automatically cleared after auto-baud completion.
      Start)
     with Size => 1;
   for ACR_ENUM use
     (Stop => 0,
      Start => 1);

   --  Auto-baud mode select bit.
   type ACR_ENUM_1 is
     (
      --  Mode 0.
      Mode_0,
      --  Mode 1.
      Mode_1)
     with Size => 1;
   for ACR_ENUM_1 use
     (Mode_0 => 0,
      Mode_1 => 1);

   --  Restart bit.
   type ACR_ENUM_2 is
     (
      --  No restart.
      No_Restart,
      --  Restart. Restart in case of time-out (counter restarts at next USART
      --  Rx falling edge)
      Restart)
     with Size => 1;
   for ACR_ENUM_2 use
     (No_Restart => 0,
      Restart => 1);

   subtype ACR_RESERVED_Field is HAL.UInt5;

   --  End of auto-baud interrupt clear bit (write-only).
   type ACR_ENUM_3 is
     (
      --  No effect. Writing a 0 has no impact.
      No_Effect,
      --  Clear. Writing a 1 will clear the corresponding interrupt in the IIR.
      Clear)
     with Size => 1;
   for ACR_ENUM_3 use
     (No_Effect => 0,
      Clear => 1);

   subtype ACR_RESERVED_Field_1 is HAL.UInt22;

   --  Auto-baud Control Register. Contains controls for the auto-baud feature.
   type ACR_Register is record
      --  Start bit. This bit is automatically cleared after auto-baud
      --  completion.
      START       : ACR_ENUM := LPC43xx.USART.Stop;
      --  Auto-baud mode select bit.
      MODE        : ACR_ENUM_1 := LPC43xx.USART.Mode_0;
      --  Restart bit.
      AUTORESTART : ACR_ENUM_2 := LPC43xx.USART.No_Restart;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED    : ACR_RESERVED_Field := 16#0#;
      --  End of auto-baud interrupt clear bit (write-only).
      ABEOINTCLR  : ACR_ENUM_3 := LPC43xx.USART.No_Effect;
      --  Auto-baud time-out interrupt clear bit (write-only).
      ABTOINTCLR  : ACR_ENUM_3 := LPC43xx.USART.No_Effect;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1  : ACR_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACR_Register use record
      START       at 0 range 0 .. 0;
      MODE        at 0 range 1 .. 1;
      AUTORESTART at 0 range 2 .. 2;
      RESERVED    at 0 range 3 .. 7;
      ABEOINTCLR  at 0 range 8 .. 8;
      ABTOINTCLR  at 0 range 9 .. 9;
      RESERVED_1  at 0 range 10 .. 31;
   end record;

   --  IrDA mode enable.
   type ICR_ENUM is
     (
      --  Disabled. IrDA mode on USART3 is disabled, USART3 acts as a standard
      --  USART.
      Disabled,
      --  Enabled. IrDA mode on USART3 is enabled.
      Enabled)
     with Size => 1;
   for ICR_ENUM use
     (Disabled => 0,
      Enabled => 1);

   --  Serial input direction.
   type ICR_ENUM_1 is
     (
      --  Not inverted. The serial input is not inverted.
      Not_Inverted,
      --  Inverted. The serial input is inverted. This has no effect on the
      --  serial output.
      Inverted)
     with Size => 1;
   for ICR_ENUM_1 use
     (Not_Inverted => 0,
      Inverted => 1);

   subtype ICR_PULSEDIV_Field is HAL.UInt3;
   subtype ICR_RESERVED_Field is HAL.UInt26;

   --  IrDA control register (USART3 only)
   type ICR_Register is record
      --  IrDA mode enable.
      IRDAEN     : ICR_ENUM := LPC43xx.USART.Disabled;
      --  Serial input direction.
      IRDAINV    : ICR_ENUM_1 := LPC43xx.USART.Not_Inverted;
      --  IrDA fixed pulse width mode.
      FIXPULSEEN : ICR_ENUM := LPC43xx.USART.Disabled;
      --  Configures the pulse when FixPulseEn = 1. See Table 885 for details.
      PULSEDIV   : ICR_PULSEDIV_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED   : ICR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      IRDAEN     at 0 range 0 .. 0;
      IRDAINV    at 0 range 1 .. 1;
      FIXPULSEEN at 0 range 2 .. 2;
      PULSEDIV   at 0 range 3 .. 5;
      RESERVED   at 0 range 6 .. 31;
   end record;

   subtype FDR_DIVADDVAL_Field is HAL.UInt4;
   subtype FDR_MULVAL_Field is HAL.UInt4;
   subtype FDR_RESERVED_Field is HAL.UInt24;

   --  Fractional Divider Register. Generates a clock input for the baud rate
   --  divider.
   type FDR_Register is record
      --  Baud rate generation pre-scaler divisor value. If this field is 0,
      --  fractional baud rate generator will not impact the USART baud rate.
      DIVADDVAL : FDR_DIVADDVAL_Field := 16#0#;
      --  Baud rate pre-scaler multiplier value. This field must be greater or
      --  equal 1 for USART to operate properly, regardless of whether the
      --  fractional baud rate generator is used or not.
      MULVAL    : FDR_MULVAL_Field := 16#1#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED  : FDR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FDR_Register use record
      DIVADDVAL at 0 range 0 .. 3;
      MULVAL    at 0 range 4 .. 7;
      RESERVED  at 0 range 8 .. 31;
   end record;

   subtype OSR_OSFRAC_Field is HAL.UInt3;
   subtype OSR_OSINT_Field is HAL.UInt4;
   subtype OSR_FDINT_Field is HAL.UInt7;
   subtype OSR_RESERVED_Field is HAL.UInt17;

   --  Oversampling Register. Controls the degree of oversampling during each
   --  bit time.
   type OSR_Register is record
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED   : Boolean := False;
      --  Fractional part of the oversampling ratio, in units of 1/8th of an
      --  input clock period. (001 = 0.125, ..., 111 = 0.875)
      OSFRAC     : OSR_OSFRAC_Field := 16#0#;
      --  Integer part of the oversampling ratio, minus 1. The reset values
      --  equate to the normal operating mode of 16 input clocks per bit time.
      OSINT      : OSR_OSINT_Field := 16#F#;
      --  In Smart Card mode, these bits act as a more-significant extension of
      --  the OSint field, allowing an oversampling ratio up to 2048 as
      --  required by ISO7816-3. In Smart Card mode, bits 14:4 should initially
      --  be set to 371, yielding an oversampling ratio of 372.
      FDINT      : OSR_FDINT_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1 : OSR_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSR_Register use record
      RESERVED   at 0 range 0 .. 0;
      OSFRAC     at 0 range 1 .. 3;
      OSINT      at 0 range 4 .. 7;
      FDINT      at 0 range 8 .. 14;
      RESERVED_1 at 0 range 15 .. 31;
   end record;

   --  Half-duplex mode enable
   type HDEN_ENUM is
     (
      --  Disabled. Disable half-duplex mode.
      Disabled,
      --  Enabled. Enable half-duplex mode.
      Enabled)
     with Size => 1;
   for HDEN_ENUM use
     (Disabled => 0,
      Enabled => 1);

   subtype HDEN_RESERVED_Field is HAL.UInt31;

   --  Half-duplex enable Register
   type HDEN_Register is record
      --  Half-duplex mode enable
      HDEN     : HDEN_ENUM := LPC43xx.USART.Disabled;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : HDEN_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HDEN_Register use record
      HDEN     at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 31;
   end record;

   --  Smart Card Interface Enable.
   type SCICTRL_ENUM is
     (
      --  Disabled. Smart card interface disabled.
      Disabled,
      --  Enabled. synchronous half duplex smart card interface is enabled.
      Enabled)
     with Size => 1;
   for SCICTRL_ENUM use
     (Disabled => 0,
      Enabled => 1);

   --  NACK response disable. Only applicable in T=0.
   type SCICTRL_ENUM_1 is
     (
      --  Enabled. A NACK response is enabled.
      Enabled,
      --  Disabled. A NACK response is inhibited.
      Disabled)
     with Size => 1;
   for SCICTRL_ENUM_1 use
     (Enabled => 0,
      Disabled => 1);

   --  Protocol selection as defined in the ISO7816-3 standard.
   type SCICTRL_ENUM_2 is
     (
      --  T = 0
      T_Eq_0,
      --  T = 1
      T_Eq_1)
     with Size => 1;
   for SCICTRL_ENUM_2 use
     (T_Eq_0 => 0,
      T_Eq_1 => 1);

   subtype SCICTRL_RESERVED_Field is HAL.UInt2;
   subtype SCICTRL_TXRETRY_Field is HAL.UInt3;
   subtype SCICTRL_GUARDTIME_Field is HAL.UInt8;
   subtype SCICTRL_RESERVED_Field_1 is HAL.UInt16;

   --  Smart card interface control register
   type SCICTRL_Register is record
      --  Smart Card Interface Enable.
      SCIEN      : SCICTRL_ENUM := LPC43xx.USART.Disabled;
      --  NACK response disable. Only applicable in T=0.
      NACKDIS    : SCICTRL_ENUM_1 := LPC43xx.USART.Enabled;
      --  Protocol selection as defined in the ISO7816-3 standard.
      PROTSEL    : SCICTRL_ENUM_2 := LPC43xx.USART.T_Eq_0;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED   : SCICTRL_RESERVED_Field := 16#0#;
      --  Maximum number of retransmissions in case of a negative acknowledge
      --  (protocol T=0). When the retry counter is exceeded, the USART will be
      --  locked until the FIFO is cleared. A TX error interrupt is generated
      --  when enabled.
      TXRETRY    : SCICTRL_TXRETRY_Field := 16#0#;
      --  Extra guard time. No extra guard time (0x0) results in a standard
      --  guard time as defined in ISO 7816-3, depending on the protocol type.
      --  A guard time of 0xFF indicates a minimal guard time as defined for
      --  the selected protocol.
      GUARDTIME  : SCICTRL_GUARDTIME_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1 : SCICTRL_RESERVED_Field_1 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCICTRL_Register use record
      SCIEN      at 0 range 0 .. 0;
      NACKDIS    at 0 range 1 .. 1;
      PROTSEL    at 0 range 2 .. 2;
      RESERVED   at 0 range 3 .. 4;
      TXRETRY    at 0 range 5 .. 7;
      GUARDTIME  at 0 range 8 .. 15;
      RESERVED_1 at 0 range 16 .. 31;
   end record;

   --  NMM enable.
   type RS485CTRL_ENUM is
     (
      --  Disabled. RS-485/EIA-485 Normal Multidrop Mode (NMM) is disabled.
      Disabled,
      --  Enabled. RS-485/EIA-485 Normal Multidrop Mode (NMM) is enabled. In
      --  this mode, an address is detected when a received byte causes the
      --  USART to set the parity error and generate an interrupt.
      Enabled)
     with Size => 1;
   for RS485CTRL_ENUM use
     (Disabled => 0,
      Enabled => 1);

   --  Receiver enable.
   type RS485CTRL_ENUM_1 is
     (
      --  Enabled. The receiver is enabled.
      Enabled,
      --  Disabled.The receiver is disabled.
      Disabled)
     with Size => 1;
   for RS485CTRL_ENUM_1 use
     (Enabled => 0,
      Disabled => 1);

   --  Direction control pin polarity. This bit reverses the polarity of the
   --  direction control signal on the DIR pin.
   type RS485CTRL_ENUM_2 is
     (
      --  Low. The direction control pin will be driven to logic 0 when the
      --  transmitter has data to be sent. It will be driven to logic 1 after
      --  the last bit of data has been transmitted.
      Low,
      --  High. The direction control pin will be driven to logic 1 when the
      --  transmitter has data to be sent. It will be driven to logic 0 after
      --  the last bit of data has been transmitted.
      High)
     with Size => 1;
   for RS485CTRL_ENUM_2 use
     (Low => 0,
      High => 1);

   subtype RS485CTRL_RESERVED_Field is HAL.UInt26;

   --  RS-485/EIA-485 Control. Contains controls to configure various aspects
   --  of RS-485/EIA-485 modes.
   type RS485CTRL_Register is record
      --  NMM enable.
      NMMEN      : RS485CTRL_ENUM := LPC43xx.USART.Disabled;
      --  Receiver enable.
      RXDIS      : RS485CTRL_ENUM_1 := LPC43xx.USART.Enabled;
      --  AAD enable
      AADEN      : RS485CTRL_ENUM := LPC43xx.USART.Disabled;
      --  Reserved.
      RESERVED   : Boolean := False;
      --  Direction control for DIR pin.
      DCTRL      : RS485CTRL_ENUM := LPC43xx.USART.Disabled;
      --  Direction control pin polarity. This bit reverses the polarity of the
      --  direction control signal on the DIR pin.
      OINV       : RS485CTRL_ENUM_2 := LPC43xx.USART.Low;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED_1 : RS485CTRL_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RS485CTRL_Register use record
      NMMEN      at 0 range 0 .. 0;
      RXDIS      at 0 range 1 .. 1;
      AADEN      at 0 range 2 .. 2;
      RESERVED   at 0 range 3 .. 3;
      DCTRL      at 0 range 4 .. 4;
      OINV       at 0 range 5 .. 5;
      RESERVED_1 at 0 range 6 .. 31;
   end record;

   subtype RS485ADRMATCH_ADRMATCH_Field is HAL.UInt8;
   subtype RS485ADRMATCH_RESERVED_Field is HAL.UInt24;

   --  RS-485/EIA-485 address match. Contains the address match value for
   --  RS-485/EIA-485 mode.
   type RS485ADRMATCH_Register is record
      --  Contains the address match value.
      ADRMATCH : RS485ADRMATCH_ADRMATCH_Field := 16#0#;
      --  Reserved
      RESERVED : RS485ADRMATCH_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RS485ADRMATCH_Register use record
      ADRMATCH at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   subtype RS485DLY_DLY_Field is HAL.UInt8;
   subtype RS485DLY_RESERVED_Field is HAL.UInt24;

   --  RS-485/EIA-485 direction control delay.
   type RS485DLY_Register is record
      --  Contains the direction control delay value. This register works in
      --  conjunction with an 8-bit counter.
      DLY      : RS485DLY_DLY_Field := 16#0#;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : RS485DLY_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RS485DLY_Register use record
      DLY      at 0 range 0 .. 7;
      RESERVED at 0 range 8 .. 31;
   end record;

   --  Enables synchronous mode.
   type SYNCCTRL_ENUM is
     (
      --  Disabled.
      Disabled,
      --  Enabled.
      Enabled)
     with Size => 1;
   for SYNCCTRL_ENUM use
     (Disabled => 0,
      Enabled => 1);

   --  Clock source select.
   type SYNCCTRL_ENUM_1 is
     (
      --  Slave mode. Synchronous slave mode (SCLK in)
      Slave_Mode,
      --  Master mode. Synchronous master mode (SCLK out)
      Master_Mode)
     with Size => 1;
   for SYNCCTRL_ENUM_1 use
     (Slave_Mode => 0,
      Master_Mode => 1);

   --  Edge sampling.
   type SYNCCTRL_ENUM_2 is
     (
      --  Rising. RxD is sampled on the rising edge of SCLK.
      Rising,
      --  Falling. RxD is sampled on the falling edge of SCLK.
      Falling)
     with Size => 1;
   for SYNCCTRL_ENUM_2 use
     (Rising => 0,
      Falling => 1);

   --  Transmit synchronization bypass in synchronous slave mode.
   type SYNCCTRL_ENUM_3 is
     (
      --  Synchronized. The input clock is synchronized prior to being used in
      --  clock edge detection logic.
      Synchronized_k,
      --  Not synchronized. The input clock is not synchronized prior to being
      --  used in clock edge detection logic. This allows for a high er input
      --  clock rate at the expense of potential metastability.
      Not_Synchronized)
     with Size => 1;
   for SYNCCTRL_ENUM_3 use
     (Synchronized_k => 0,
      Not_Synchronized => 1);

   --  Continuous master clock enable (used only when CSRC is 1)
   type SYNCCTRL_ENUM_4 is
     (
      --  On character. SCLK cycles only when characters are being sent on TxD.
      On_Character,
      --  Continuously. SCLK runs continuously (characters can be received on
      --  RxD independently from transmission on TxD).
      Continuously)
     with Size => 1;
   for SYNCCTRL_ENUM_4 use
     (On_Character => 0,
      Continuously => 1);

   --  Start/stop bits
   type SYNCCTRL_ENUM_5 is
     (
      --  Send. Send start and stop bits as in other modes.
      Send,
      --  Do not send. Do not send start/stop bits.
      Do_Not_Send)
     with Size => 1;
   for SYNCCTRL_ENUM_5 use
     (Send => 0,
      Do_Not_Send => 1);

   --  Continuous clock clear
   type SYNCCTRL_ENUM_6 is
     (
      --  Software. CSCEN is under software control.
      Software,
      --  Hardware. Hardware clears CSCEN after each character is received.
      Hardware)
     with Size => 1;
   for SYNCCTRL_ENUM_6 use
     (Software => 0,
      Hardware => 1);

   subtype SYNCCTRL_RESERVED_Field is HAL.UInt25;

   --  Synchronous mode control register.
   type SYNCCTRL_Register is record
      --  Enables synchronous mode.
      SYNC     : SYNCCTRL_ENUM := LPC43xx.USART.Disabled;
      --  Clock source select.
      CSRC     : SYNCCTRL_ENUM_1 := LPC43xx.USART.Slave_Mode;
      --  Edge sampling.
      FES      : SYNCCTRL_ENUM_2 := LPC43xx.USART.Rising;
      --  Transmit synchronization bypass in synchronous slave mode.
      TSBYPASS : SYNCCTRL_ENUM_3 := LPC43xx.USART.Synchronized_k;
      --  Continuous master clock enable (used only when CSRC is 1)
      CSCEN    : SYNCCTRL_ENUM_4 := LPC43xx.USART.On_Character;
      --  Start/stop bits
      SSSDIS   : SYNCCTRL_ENUM_5 := LPC43xx.USART.Send;
      --  Continuous clock clear
      CCCLR    : SYNCCTRL_ENUM_6 := LPC43xx.USART.Software;
      --  Reserved. The value read from a reserved bit is not defined.
      RESERVED : SYNCCTRL_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYNCCTRL_Register use record
      SYNC     at 0 range 0 .. 0;
      CSRC     at 0 range 1 .. 1;
      FES      at 0 range 2 .. 2;
      TSBYPASS at 0 range 3 .. 3;
      CSCEN    at 0 range 4 .. 4;
      SSSDIS   at 0 range 5 .. 5;
      CCCLR    at 0 range 6 .. 6;
      RESERVED at 0 range 7 .. 31;
   end record;

   subtype TER_RESERVED_Field is HAL.UInt31;

   --  Transmit Enable Register. Turns off USART transmitter for use with
   --  software flow control.
   type TER_Register is record
      --  Transmit enable. After reset transmission is enabled. When the TXEN
      --  bit is de-asserted, no data will be transmitted although data may be
      --  pending in the TSR or THR.
      TXEN     : Boolean := True;
      --  Reserved, user software should not write ones to reserved bits. The
      --  value read from a reserved bit is not defined.
      RESERVED : TER_RESERVED_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TER_Register use record
      TXEN     at 0 range 0 .. 0;
      RESERVED at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type USART0_Disc is
     (
      Mode_1,
      Mode_2,
      Mode_3);

   --  USART0_2_3
   type USART_Peripheral
     (Discriminent : USART0_Disc := Mode_1)
   is record
      --  Line Control Register. Contains controls for frame formatting and
      --  break generation.
      LCR           : aliased LCR_Register;
      --  Line Status Register. Contains flags for transmit and receive status,
      --  including line errors.
      LSR           : aliased LSR_Register;
      --  Scratch Pad Register. Eight-bit temporary storage for software.
      SCR           : aliased SCR_Register;
      --  Auto-baud Control Register. Contains controls for the auto-baud
      --  feature.
      ACR           : aliased ACR_Register;
      --  IrDA control register (USART3 only)
      ICR           : aliased ICR_Register;
      --  Fractional Divider Register. Generates a clock input for the baud
      --  rate divider.
      FDR           : aliased FDR_Register;
      --  Oversampling Register. Controls the degree of oversampling during
      --  each bit time.
      OSR           : aliased OSR_Register;
      --  Half-duplex enable Register
      HDEN          : aliased HDEN_Register;
      --  Smart card interface control register
      SCICTRL       : aliased SCICTRL_Register;
      --  RS-485/EIA-485 Control. Contains controls to configure various
      --  aspects of RS-485/EIA-485 modes.
      RS485CTRL     : aliased RS485CTRL_Register;
      --  RS-485/EIA-485 address match. Contains the address match value for
      --  RS-485/EIA-485 mode.
      RS485ADRMATCH : aliased RS485ADRMATCH_Register;
      --  RS-485/EIA-485 direction control delay.
      RS485DLY      : aliased RS485DLY_Register;
      --  Synchronous mode control register.
      SYNCCTRL      : aliased SYNCCTRL_Register;
      --  Transmit Enable Register. Turns off USART transmitter for use with
      --  software flow control.
      TER           : aliased TER_Register;
      case Discriminent is
         when Mode_1 =>
            --  Receiver Buffer Register. Contains the next received character
            --  to be read (DLAB = 0).
            RBR : aliased RBR_Register;
            --  Divisor Latch MSB. Most significant byte of the baud rate
            --  divisor value. The full divisor is used to generate a baud rate
            --  from the fractional rate divider (DLAB = 1).
            DLM : aliased DLM_Register;
            --  Interrupt ID Register. Identifies which interrupt(s) are
            --  pending.
            IIR : aliased IIR_Register;
         when Mode_2 =>
            --  Transmit Holding Register. The next character to be transmitted
            --  is written here (DLAB = 0).
            THR : aliased THR_Register;
            --  Interrupt Enable Register. Contains individual interrupt enable
            --  bits for the 7 potential USART interrupts (DLAB = 0).
            IER : aliased IER_Register;
            --  FIFO Control Register. Controls USART FIFO usage and modes.
            FCR : aliased FCR_Register;
         when Mode_3 =>
            --  Divisor Latch LSB. Least significant byte of the baud rate
            --  divisor value. The full divisor is used to generate a baud rate
            --  from the fractional rate divider (DLAB = 1).
            DLL : aliased DLL_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for USART_Peripheral use record
      LCR           at 16#C# range 0 .. 31;
      LSR           at 16#14# range 0 .. 31;
      SCR           at 16#1C# range 0 .. 31;
      ACR           at 16#20# range 0 .. 31;
      ICR           at 16#24# range 0 .. 31;
      FDR           at 16#28# range 0 .. 31;
      OSR           at 16#2C# range 0 .. 31;
      HDEN          at 16#40# range 0 .. 31;
      SCICTRL       at 16#48# range 0 .. 31;
      RS485CTRL     at 16#4C# range 0 .. 31;
      RS485ADRMATCH at 16#50# range 0 .. 31;
      RS485DLY      at 16#54# range 0 .. 31;
      SYNCCTRL      at 16#58# range 0 .. 31;
      TER           at 16#5C# range 0 .. 31;
      RBR           at 16#0# range 0 .. 31;
      DLM           at 16#4# range 0 .. 31;
      IIR           at 16#8# range 0 .. 31;
      THR           at 16#0# range 0 .. 31;
      IER           at 16#4# range 0 .. 31;
      FCR           at 16#8# range 0 .. 31;
      DLL           at 16#0# range 0 .. 31;
   end record;

   --  USART0_2_3
   USART0_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#40081000#);

   --  USART0_2_3
   USART2_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#400C1000#);

   --  USART0_2_3
   USART3_Periph : aliased USART_Peripheral
     with Import, Address => System'To_Address (16#400C2000#);

end LPC43xx.USART;
