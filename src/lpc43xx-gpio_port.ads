--  This spec has been automatically generated from LPC43xx_43Sxx.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package LPC43xx.GPIO_PORT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Byte pin registers port 0 to 5; pins PIOn_0 to PIOn_31
   type B_Register is record
      --  Read: state of the GPIOm[n] pin, regardless of direction, masking, or
      --  alternate function, except that pins configured as analog I/O always
      --  read as 0. Write: loads the pin's output bit.
      PBYTE        : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for B_Register use record
      PBYTE        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Byte pin registers port 0 to 5; pins PIOn_0 to PIOn_31
   type B_Registers is array (0 .. 255) of B_Register
     with Volatile;

   --  Word pin registers port 0 to 5

   --  Word pin registers port 0 to 5
   type W_Registers is array (0 .. 255) of HAL.UInt32
     with Volatile;

   --  DIR_DIRP array
   type DIR_DIRP_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Direction registers port m
   type DIR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DIRP as a value
            Val : HAL.UInt32;
         when True =>
            --  DIRP as an array
            Arr : DIR_DIRP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for DIR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Direction registers port m
   type DIR_Registers is array (0 .. 7) of DIR_Register
     with Volatile;

   --  MASK_MASKP array
   type MASK_MASKP_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Mask register port m
   type MASK_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MASKP as a value
            Val : HAL.UInt32;
         when True =>
            --  MASKP as an array
            Arr : MASK_MASKP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MASK_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Mask register port m
   type MASK_Registers is array (0 .. 7) of MASK_Register
     with Volatile;

   --  PIN_PORT array
   type PIN_PORT_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Port pin register port m
   type PIN_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PORT as a value
            Val : HAL.UInt32;
         when True =>
            --  PORT as an array
            Arr : PIN_PORT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PIN_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Port pin register port m
   type PIN_Registers is array (0 .. 7) of PIN_Register
     with Volatile;

   --  MPIN_MPORTP array
   type MPIN_MPORTP_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Masked port register port m
   type MPIN_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MPORTP as a value
            Val : HAL.UInt32;
         when True =>
            --  MPORTP as an array
            Arr : MPIN_MPORTP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MPIN_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Masked port register port m
   type MPIN_Registers is array (0 .. 7) of MPIN_Register
     with Volatile;

   --  SET_SETP array
   type SET_SETP_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Write: Set register for port m Read: output bits for port m
   type SET_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SETP as a value
            Val : HAL.UInt32;
         when True =>
            --  SETP as an array
            Arr : SET_SETP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for SET_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Write: Set register for port m Read: output bits for port m
   type SET_Registers is array (0 .. 7) of SET_Register
     with Volatile;

   --  CLR_CLRP array
   type CLR_CLRP_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Clear port m
   type CLR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CLRP as a value
            Val : HAL.UInt32;
         when True =>
            --  CLRP as an array
            Arr : CLR_CLRP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CLR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Clear port m
   type CLR_Registers is array (0 .. 7) of CLR_Register
     with Volatile;

   --  NOT_NOTP array
   type NOT_NOTP_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Toggle port m
   type NOT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  NOTP as a value
            Val : HAL.UInt32;
         when True =>
            --  NOTP as an array
            Arr : NOT_NOTP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for NOT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Toggle port m
   type NOT_Registers is array (0 .. 7) of NOT_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  GPIO port
   type GPIO_PORT_Peripheral is record
      --  Byte pin registers port 0 to 5; pins PIOn_0 to PIOn_31
      B     : aliased B_Registers;
      --  Word pin registers port 0 to 5
      W     : aliased W_Registers;
      --  Direction registers port m
      DIR   : aliased DIR_Registers;
      --  Mask register port m
      MASK  : aliased MASK_Registers;
      --  Port pin register port m
      PIN   : aliased PIN_Registers;
      --  Masked port register port m
      MPIN  : aliased MPIN_Registers;
      --  Write: Set register for port m Read: output bits for port m
      SET   : aliased SET_Registers;
      --  Clear port m
      CLR   : aliased CLR_Registers;
      --  Toggle port m
      NOT_k : aliased NOT_Registers;
   end record
     with Volatile;

   for GPIO_PORT_Peripheral use record
      B     at 16#0# range 0 .. 2047;
      W     at 16#1000# range 0 .. 8191;
      DIR   at 16#2000# range 0 .. 255;
      MASK  at 16#2080# range 0 .. 255;
      PIN   at 16#2100# range 0 .. 255;
      MPIN  at 16#2180# range 0 .. 255;
      SET   at 16#2200# range 0 .. 255;
      CLR   at 16#2280# range 0 .. 255;
      NOT_k at 16#2300# range 0 .. 255;
   end record;

   --  GPIO port
   GPIO_PORT_Periph : aliased GPIO_PORT_Peripheral
     with Import, Address => System'To_Address (16#400F4000#);

end LPC43xx.GPIO_PORT;
