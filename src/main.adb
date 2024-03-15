-- main.adb
with Ada.Text_IO; use Ada.Text_IO;
with Fuel_Management; use Fuel_Management;

procedure Main is
begin
   Put_Line("Hello, Welcome to the Nuclear Guard App!");

   -- Check and refuel if necessary
   Check_And_Refuel;

   -- Consume some fuel
   Consume_Fuel(30);
   Consume_Fuel(50);

end Main;