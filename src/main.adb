with Ada.Text_IO; use Ada.Text_IO;
with Guard_Controller; use Guard_Controller;

procedure Main is
begin
   Start_Guard;

   Update_Guard(30, 25.0, 50.0, 0.1);
   Update_Guard(80, 45.0, 90.0, 1.5);

end Main;