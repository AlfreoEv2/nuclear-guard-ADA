package Fuel_Management is

   -- Simulated fuel level (in percentage)
   Fuel_Level : Integer range 0 .. 100 := 100;

   Max_Fuel_Level : constant Integer := 100;
   Min_Refuel_Level : constant Integer := 30;

   procedure Check_And_Refuel;

   procedure Consume_Fuel (Amount : Integer);

private
end Fuel_Management;