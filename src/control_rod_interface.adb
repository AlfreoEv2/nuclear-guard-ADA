with Ada.Text_IO; use Ada.Text_IO;

package body Control_Rod_Interface is

   procedure Insert_Control_Rods is
   begin
      if Control_Rod_Position = 0 then
         Put_Line("Control rods are already fully inserted.");
      else
         Control_Rod_Position := 0;
         Put_Line("Control rods inserted.");
      end if;
   end Insert_Control_Rods;

   procedure Remove_Control_Rods is
   begin
      if Control_Rod_Position = 100 then
         Put_Line("Control rods are already fully removed.");
      else
         Control_Rod_Position := 100;
         Put_Line("Control rods removed.");
      end if;
   end Remove_Control_Rods;

end Control_Rod_Interface;