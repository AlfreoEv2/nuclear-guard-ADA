-- fuel_management.adb
with Ada.Text_IO; use Ada.Text_IO;
package body Fuel_Management is

   procedure Check_And_Refuel is
   begin
      if Fuel_Level <= Min_Refuel_Level then
         Put_Line("Refueling initiated...");
         Fuel_Level := Max_Fuel_Level;
         Put_Line("Refueling completed. Fuel level is now 100%.");
      end if;
   end Check_And_Refuel;

   procedure Consume_Fuel (Amount : Integer) is
   begin
      if Amount > Fuel_Level then
         Put_Line("Fuel: "& Integer'Image(Fuel_Level) & "%" & " - Insufficient fuel!");
      else
         Fuel_Level := Fuel_Level - Amount;
         Put_Line("Fuel: " & Integer'Image(Fuel_Level) & "%");
      end if;

      Check_And_Refuel;
   end Consume_Fuel;

end Fuel_Management;