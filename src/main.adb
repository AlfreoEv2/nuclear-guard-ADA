with Ada.Text_IO; use Ada.Text_IO;
with Fuel_Management; use Fuel_Management;
with Environmental_Monitoring; use Environmental_Monitoring;

procedure Main is
begin
   Put_Line("Hello, Welcome to the Nuclear Guard App!");

   -- Check and refuel if necessary
   Check_And_Refuel;
   Check_Hazards;

   -- Consume some fuel
   Consume_Fuel(30);
   Consume_Fuel(50);

   Update_Sensor_Data(45.0, 90.0, 1.5);

end Main;