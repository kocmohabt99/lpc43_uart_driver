------------------------------------------------------------------------------
--                                                                          --
--                  Copyright (C) 2015-2017, AdaCore                        --
--                                                                          --
--  Redistribution and use in source and binary forms, with or without      --
--  modification, are permitted provided that the following conditions are  --
--  met:                                                                    --
--     1. Redistributions of source code must retain the above copyright    --
--        notice, this list of conditions and the following disclaimer.     --
--     2. Redistributions in binary form must reproduce the above copyright --
--        notice, this list of conditions and the following disclaimer in   --
--        the documentation and/or other materials provided with the        --
--        distribution.                                                     --
--                                                                          --
--   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS    --
--   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT      --
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  --
--   A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   --
--   HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, --
--   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT       --
--   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  --
--   DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  --
--   THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT    --
--   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE  --
--   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.   --
--                                                                          --
--                                                                          --
------------------------------------------------------------------------------

package body LPC43_driver_USARTs is

   --  REMOVED APB Clock Function: doesn't apply to LPC43

   ------------
   -- Enable --
   ------------

   procedure Enable (This : in out USART) is
   begin
      --  Set_Stop_Bits (, Val_2_Stop_Bits_12);

   end Enable;

   -------------
   -- Disable --
   -------------

   procedure Disable (This : in out USART) is
   begin
   end Disable;

   -------------
   -- Enabled --
   -------------

   function Enabled (This : USART) return Boolean is
   begin
   end Enabled;

   -------------------
   -- Set_Stop_Bits --
   -------------------

   procedure Set_Stop_Bits (This : in out USART; To : Stop_Bits)
   is
   begin
      This.Periph.LCR.SBS := LCR_ENUM_1'Enum_Rep (To);

   end Set_Stop_Bits;

   ---------------------
   -- Set_Word_Length --
   ---------------------

   procedure Set_Word_Length
     (This : in out USART;
      To : Word_Lengths)
   is
   begin
      This.Periph.CR1.M := To = Word_Length_9;
   end Set_Word_Length;

   ----------------
   -- Set_Parity --
   ----------------

   procedure Set_Parity (This : in out USART; To : Parities) is
   begin
   end Set_Parity;

   -------------------
   -- Set_Baud_Rate --
   -------------------

   procedure Set_Baud_Rate (This : in out USART; To : Baud_Rates)
   is
   begin
   end Set_Baud_Rate;

   ---------------------------
   -- Set_Oversampling_Mode --
   ---------------------------

   procedure Set_Oversampling_Mode
   is
   begin
   end Set_Oversampling_Mode;

   --------------
   -- Set_Mode --
   --------------

   procedure Set_Mode (This : in out USART;  To : UART_Modes) is
   begin
   end Set_Mode;

   ----------------------
   -- Set_Flow_Control --
   ----------------------

   procedure Set_Flow_Control (This : in out USART;  To : Flow_Control) is
   begin
   end Set_Flow_Control;

   ---------
   -- Put --
   ---------

   procedure Transmit (This : in out USART;  Data : UInt9) is
   begin
   end Transmit;

   ---------
   -- Get --
   ---------

   procedure Receive (This : USART;  Data : out UInt9) is
   begin
   end Receive;

   -------------------
   -- Current_Input --
   -------------------

   function Current_Input (This : USART) return UInt9 is (This.Periph.DR.DR);

   --------------
   -- Tx_Ready --
   --------------

   function Tx_Ready (This : USART) return Boolean is
   begin
   end Tx_Ready;

   --------------
   -- Rx_Ready --
   --------------

   function Rx_Ready (This : USART) return Boolean is
   begin
   end Rx_Ready;

   ------------
   -- Status --
   ------------

   function Status (This : USART; Flag : USART_Status_Flag) return Boolean is
   begin
   end Status;

   ------------------
   -- Clear_Status --
   ------------------

   procedure Clear_Status (This : in out USART;  Flag : USART_Status_Flag) is
   begin
   end Clear_Status;

   -----------------------
   -- Enable_Interrupts --
   -----------------------

   procedure Enable_Interrupts
   is
   begin
   end Enable_Interrupts;

   ------------------------
   -- Disable_Interrupts --
   ------------------------

   procedure Disable_Interrupts
   is
   begin
   end Disable_Interrupts;

   -----------------------
   -- Interrupt_Enabled --
   -----------------------

   function Interrupt_Enabled
   is
   begin
   end Interrupt_Enabled;

   ----------------------------------
   -- Enable_DMA_Transmit_Requests --
   ----------------------------------

   procedure Enable_DMA_Transmit_Requests (This : in out USART) is
   begin
   end Enable_DMA_Transmit_Requests;

   ---------------------------------
   -- Enable_DMA_Receive_Requests --
   ---------------------------------

   procedure Enable_DMA_Receive_Requests (This : in out USART) is
   begin
   end Enable_DMA_Receive_Requests;

   -----------------------------------
   -- Disable_DMA_Transmit_Requests --
   -----------------------------------

   procedure Disable_DMA_Transmit_Requests (This : in out USART) is
   begin
   end Disable_DMA_Transmit_Requests;

   ----------------------------------
   -- Disable_DMA_Receive_Requests --
   ----------------------------------

   procedure Disable_DMA_Receive_Requests (This : in out USART) is
   begin
   end Disable_DMA_Receive_Requests;

   -----------------------------------
   -- DMA_Transmit_Requests_Enabled --
   -----------------------------------

   function DMA_Transmit_Requests_Enabled  (This : USART) return Boolean is
   begin
   end DMA_Transmit_Requests_Enabled;

   ----------------------------------
   -- DMA_Receive_Requests_Enabled --
   ----------------------------------

   function DMA_Receive_Requests_Enabled  (This : USART) return Boolean is
   begin
   end DMA_Receive_Requests_Enabled;


   -----------------------------
   -- Resume_DMA_Transmission --
   -----------------------------

   procedure Resume_DMA_Transmission (This : in out USART) is
   begin
   end Resume_DMA_Transmission;

   --------------------------
   -- Resume_DMA_Reception --
   --------------------------

   procedure Resume_DMA_Reception (This : in out USART) is
   begin
   end Resume_DMA_Reception;

   ---------------------------
   -- Data_Register_Address --
   ---------------------------

   function Data_Register_Address (This : USART) return System.Address is
   begin
   end Data_Register_Address;

   ---------------
   -- Data_Size --
   ---------------

   overriding
   function Data_Size (This : USART) return HAL.UART.UART_Data_Size
   is
   begin
   end Data_Size;

   --------------
   -- Transmit --
   --------------

   overriding
   procedure Transmit
     (This    : in out USART;
      Data    : UART_Data_8b;
      Status  : out UART_Status;
      Timeout : Natural := 1000)
   is
   begin
   end Transmit;

   --------------
   -- Transmit --
   --------------

   overriding
   procedure Transmit
     (This    : in out USART;
      Data    : UART_Data_9b;
      Status  : out UART_Status;
      Timeout : Natural := 1000)
   is
   begin
   end Transmit;

   -------------
   -- Receive --
   -------------

   overriding
   procedure Receive
     (This    : in out USART;
      Data    : out UART_Data_8b;
      Status  : out UART_Status;
      Timeout : Natural := 1000)
   is
   begin
   end Receive;

   -------------
   -- Receive --
   -------------

   overriding
   procedure Receive
     (This    : in out USART;
      Data    : out UART_Data_9b;
      Status  : out UART_Status;
      Timeout : Natural := 1000)
   is
   begin
   end Receive;

end LPC43_driver_USARTs;
