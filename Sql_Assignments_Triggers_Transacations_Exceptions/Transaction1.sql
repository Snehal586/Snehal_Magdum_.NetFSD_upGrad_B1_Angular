create procedure sp_UpdateCourseCredits
as
begin

declare @CourseID int
declare @Credits int

declare course_cursor cursor for
select CourseID, Credits
from Courses
where Credits < 3

open course_cursor

fetch next from course_cursor into @CourseID, @Credits

while @@FETCH_STATUS = 0
begin

update Courses
set Credits = Credits + 1
where CourseID = @CourseID

fetch next from course_cursor into @CourseID, @Credits

end

close course_cursor
deallocate course_cursor

end

--1
exec sp_UpdateCourseCredits

--2
begin transaction

update Courses
set Credits = Credits + 1
where CourseID = 1

update Courses
set Credits = Credits + 1
where CourseID = 2

commit transaction