with Ada.Text_IO; use Ada.Text_IO;
with Ada.IO_Exceptions;
with Guard_Controller; use Guard_Controller;

procedure Main is
   User_Input : Character := 'I';
begin
   Start_Guard;

   for I in 1 .. 10 loop
      Update_Guard(10, 5.0, 8.0, 0.1, -60.0);

      Put_Line("Enter 'I' to insert control rods or 'R' to remove control rods (press Enter for default 'I'):");

      begin
         Get(User_Input);
         Skip_Line;
      exception
         when Ada.IO_Exceptions.End_Error =>
            Put_Line("No input provided, defaulting to inserting control rods.");
      end;

      Control_Moderator(User_Input);
   end loop;
end Main;