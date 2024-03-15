package Environmental_Monitoring is

   -- Simulated sensor data
   Temperature    : Float := 25.0;  -- Celsius
   Humidity       : Float := 50.0;  -- Percentage
   Gas_Level      : Float := 0.1;   -- Parts per million (ppm)

   -- Threshold values for hazard detection
   Max_Temperature    : constant Float := 40.0;
   Min_Temperature    : constant Float := 10.0;
   Max_Humidity       : constant Float := 80.0;
   Min_Humidity       : constant Float := 20.0;
   Max_Gas_Level      : constant Float := 1.0;

   procedure Start_Environment_Monitoring;
   procedure Check_Hazards;
   procedure Update_Sensor_Data (
      New_Temperature : Float;
      New_Humidity    : Float;
      New_Gas_Level   : Float
   );

private
end Environmental_Monitoring;