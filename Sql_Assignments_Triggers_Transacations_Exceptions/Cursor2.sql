create procedure sp_CalculateStudentTotalMarks
as
begin

declare @StudentID int
declare @StudentName varchar(50)
declare @TotalMarks int

declare student_cursor cursor for
select StudentID, FirstName + ' ' + LastName
from Students

open student_cursor

fetch next from student_cursor into @StudentID, @StudentName

while @@FETCH_STATUS = 0
begin

select @TotalMarks = sum(MarksObtained)
from Marks
where StudentID = @StudentID

print 'Student: ' + @StudentName + 
      ' Total Marks: ' + cast(isnull(@TotalMarks,0) as varchar)

fetch next from student_cursor into @StudentID, @StudentName

end

close student_cursor
deallocate student_cursor

end

--1
exec sp_CalculateStudentTotalMarks