with Ada.Text_IO; use Ada.Text_IO;

package body Guard_Controller is

   procedure Start_Guard is
   begin
      Put_Line("Starting Nuclear Guard App...");
      Fuel_Management.Check_And_Refuel;
      Environmental_Monitoring.Check_Hazards;
      Energy_Monitoring.Check_Energy_Production;
      Put_Line("Nuclear Guard App started successfully.");
   end Start_Guard;

   procedure Update_Guard (
      Fuel_Consumption : Integer;
      New_Temperature  : Float;
      New_Humidity     : Float;
      New_Gas_Level    : Float;
      New_Energy_Production : Float
   ) is
   begin
      Fuel_Management.Consume_Fuel(Fuel_Consumption);
      Environmental_Monitoring.Update_Sensor_Data(
         New_Temperature,
         New_Humidity,
         New_Gas_Level
      );
      Energy_Monitoring.Update_Energy_Production(New_Energy_Production);
   end Update_Guard;

    procedure Control_Moderator (Insert_Or_Remove : Character) is
   begin
      if Insert_Or_Remove = 'I' or Insert_Or_Remove = 'i' then
         Control_Rod_Interface.Insert_Control_Rods;
      elsif Insert_Or_Remove = 'R' or Insert_Or_Remove = 'r' then
         Control_Rod_Interface.Remove_Control_Rods;
      else
         Put_Line("Invalid input. Please enter 'I' to insert or 'R' to remove control rods.");
      end if;
   end Control_Moderator;

end Guard_Controller;