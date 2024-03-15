with Ada.Text_IO; use Ada.Text_IO;

package body Guard_Controller is

   procedure Start_Guard is
   begin
      New_Line;
      Put_Line("Starting Nuclear Guard App...");
      Put_Line("=======================================");
      New_line;
      Fuel_Management.Start_Fuel;
      Environmental_Monitoring.Start_Environment_Monitoring;
      Energy_Monitoring.Start_Energy_Monitoring;
      New_Line;
      Put_Line("=======================================");
      Put_Line("Nuclear Guard App started successfully.");
      New_Line;
   end Start_Guard;

   procedure Update_Guard (
      Fuel_Consumption : Integer;
      New_Temperature  : Float;
      New_Humidity     : Float;
      New_Gas_Level    : Float;
      New_Energy_Production : Float
   ) is
   begin
      New_Line;
      Fuel_Management.Consume_Fuel(Fuel_Consumption);
      Energy_Monitoring.Update_Energy_Production(New_Energy_Production);
      Environmental_Monitoring.Update_Sensor_Data(
         New_Temperature,
         New_Humidity,
         New_Gas_Level
      );
      New_Line;
   end Update_Guard;

    procedure Control_Moderator (Insert_Or_Remove : Character) is
   begin
      New_Line;
      if Insert_Or_Remove = 'I' or Insert_Or_Remove = 'i' then
         Control_Rod_Interface.Insert_Control_Rods;
      elsif Insert_Or_Remove = 'R' or Insert_Or_Remove = 'r' then
         Control_Rod_Interface.Remove_Control_Rods;
      else
         Put_Line("Invalid input. Please enter 'I' to insert or 'R' to remove control rods.");
      end if;
      New_Line;
   end Control_Moderator;

end Guard_Controller;