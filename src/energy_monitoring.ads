package Energy_Monitoring is

   -- Simulated energy production value
   Energy_Production : Float := 1000.0;  -- Megawatts
   Min_Energy_Threshold : constant Float := 500.0;  -- Megawatts

   procedure Check_Energy_Production;
   procedure Update_Energy_Production (New_Value : Float);

private
end Energy_Monitoring;