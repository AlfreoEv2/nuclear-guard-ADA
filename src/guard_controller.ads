with Fuel_Management;
with Environmental_Monitoring;

package Guard_Controller is

   -- Procedure to initialize and start the Nuclear Guard App
   procedure Start_Guard;

   -- Procedure to update component values and perform actions
   procedure Update_Guard (
      Fuel_Consumption : Integer;
      New_Temperature  : Float;
      New_Humidity     : Float;
      New_Gas_Level    : Float
   );

private
end Guard_Controller;