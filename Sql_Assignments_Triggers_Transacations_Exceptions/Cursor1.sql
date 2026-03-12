create procedure sp_DisplayStudentsCursor
as
begin

declare @StudentID int
declare @StudentName varchar(50)

declare student_cursor cursor for

select StudentID, FirstName + ' ' + LastName
from Students

open student_cursor

fetch next from student_cursor
into @StudentID, @StudentName

while @@FETCH_STATUS = 0
begin

print 'StudentID: ' + cast(@StudentID as varchar) 
      + ' StudentName: ' + @StudentName

fetch next from student_cursor
into @StudentID, @StudentName

end

close student_cursor
deallocate student_cursor

end

exec sp_DisplayStudentsCursor