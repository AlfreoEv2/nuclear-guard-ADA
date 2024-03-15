with Fuel_Management;
with Environmental_Monitoring;
with Energy_Monitoring;
with Control_Rod_Interface;

package Guard_Controller is

   -- Procedure to initialize and start the Nuclear Guard App
   procedure Start_Guard;

   -- Procedure to update component values and perform actions
   procedure Update_Guard (
      Fuel_Consumption : Integer;
      New_Temperature  : Float;
      New_Humidity     : Float;
      New_Gas_Level    : Float;
      New_Energy_Production : Float
   );

   -- Procedure to control the moderator (control rods)
   procedure Control_Moderator (Insert_Or_Remove : Character);

private
end Guard_Controller;