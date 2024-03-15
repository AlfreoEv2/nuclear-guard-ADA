with Ada.Text_IO; use Ada.Text_IO;
with Guard_Controller; use Guard_Controller;

procedure Main is
begin
   Start_Guard;

   Update_Guard(30, 5.0, 8.0, 0.1, -100.0);
   Control_Moderator('I'); -- Insert control rods
   Update_Guard(50, 12.0, 30.0, 1.0, -500.0);
   Control_Moderator('R'); -- Remove control rods

end Main;