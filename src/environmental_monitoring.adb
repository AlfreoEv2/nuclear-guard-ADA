-- environmental_monitoring.adb
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO;

package body Environmental_Monitoring is

   procedure Check_Hazards is
   Hazard : Boolean := False;
   begin
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
      -- Temperature
      Temperature := Temperature + New_Temperature;
      Put ("Temperature: ");
      Ada.Float_Text_IO.Put(Item => Temperature, Fore => 0, Aft => 2, Exp => 0);
      Put_Line(" C");
      -- Humidity
      Humidity := Humidity + New_Humidity;
      Put("Humidity: ");
      Ada.Float_Text_IO.Put(Item => Humidity, Fore => 0, Aft => 2, Exp => 0); 
      Put_Line(" %");
      -- Gas Level
      Gas_Level := Gas_Level + New_Gas_Level;
      Put("Gas Level: ");
      Ada.Float_Text_IO.Put(Item => Gas_Level, Fore => 0, Aft => 2, Exp => 0);
      Put_Line(" ppm");
      Check_Hazards;
   end Update_Sensor_Data;

end Environmental_Monitoring;