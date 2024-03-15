package Control_Rod_Interface is

   -- Simulated control rod status (0 = fully inserted, 100 = fully removed)
   Control_Rod_Position : Integer range 0 .. 100 := 0;

   procedure Insert_Control_Rods;
   procedure Remove_Control_Rods;

private
end Control_Rod_Interface;