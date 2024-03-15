with Ada.Text_IO; use Ada.Text_IO;

package body Energy_Monitoring is

   procedure Check_Energy_Production is
   begin
      if Energy_Production < Min_Energy_Threshold then
         Put_Line("Warning: Low energy production detected!");
      else
         Put_Line("Energy production is within normal levels.");
      end if;
   end Check_Energy_Production;

   procedure Update_Energy_Production (New_Value : Float) is
   begin
      Energy_Production := Energy_Production + New_Value;
      Check_Energy_Production;
   end Update_Energy_Production;

end Energy_Monitoring;