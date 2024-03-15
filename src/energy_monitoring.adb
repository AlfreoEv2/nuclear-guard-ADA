with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO;

package body Energy_Monitoring is

   procedure Start_Energy_Monitoring is
   begin
      Put_Line("Checking energy production...");
      Energy_Production := 1000.0;
      Put_Line("No Energy has been produced.");
      Put_Line("---");
   end Start_Energy_Monitoring;
   
   procedure Check_Energy_Production is
   begin
      if Energy_Production < Min_Energy_Threshold then
         Put_Line("Warning: Low energy production detected!");
      end if;
   end Check_Energy_Production;

   procedure Update_Energy_Production (New_Value : Float) is
   begin
      Energy_Production := Energy_Production + New_Value;
      Put ("Energy Production: ");
      Ada.Float_Text_IO.Put(Item => Energy_Production, Fore => 0, Aft => 2, Exp => 0);
      Put_Line(" Megawatts");
      Check_Energy_Production;
   end Update_Energy_Production;

end Energy_Monitoring;