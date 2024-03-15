-- environmental_monitoring.adb
with Ada.Text_IO; use Ada.Text_IO;

package body Environmental_Monitoring is

   procedure Check_Hazards is
   Hazard : Boolean := False;
   begin
      Put_Line("Checking for environmental hazards...");
      if Temperature > Max_Temperature or Temperature < Min_Temperature then
         Put_Line("Temperature hazard detected!");
         Hazard := True;
      end if;
      if Humidity > Max_Humidity or Humidity < Min_Humidity then
         Put_Line("Humidity hazard detected!");
         Hazard := True;
      end if;
      if Gas_Level > Max_Gas_Level then
         Put_Line("Gas hazard detected!");
         Hazard := True;
      end if;
      if Hazard = False then
         Put_Line("No hazards detected.");
      end if;
   end Check_Hazards;

   procedure Update_Sensor_Data (
      New_Temperature : Float;
      New_Humidity    : Float;
      New_Gas_Level   : Float
   ) is
   begin
      Temperature := New_Temperature;
      Humidity    := New_Humidity;
      Gas_Level   := New_Gas_Level;
      Check_Hazards;
   end Update_Sensor_Data;

end Environmental_Monitoring;