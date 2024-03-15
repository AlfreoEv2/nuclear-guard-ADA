with Ada.Text_IO; use Ada.Text_IO;
with Guard_Controller; use Guard_Controller;

procedure Main is
begin
   Start_Guard;

   Update_Guard(30, 25.0, 50.0, 0.1, 1000.0);
   Control_Moderator('I'); -- Insert control rods
   Update_Guard(50, 45.0, 90.0, 1.5, 400.0);
   Control_Moderator('R'); -- Remove control rods

end Main;