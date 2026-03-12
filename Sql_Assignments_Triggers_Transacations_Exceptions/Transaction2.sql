create procedure sp_EnrollStudentTransaction
@StudentID int,
@CourseID int
as
begin

begin try

begin transaction

insert into Enrollments(StudentID, CourseID, EnrollmentDate)
values(@StudentID, @CourseID, getdate())

commit transaction

print 'Student enrolled successfully'

end try

begin catch

rollback transaction

print 'Enrollment failed'
print error_message()

end catch

end

--1
exec sp_EnrollStudentTransaction
142,
3
select * from Enrollments

--2
exec sp_EnrollStudentTransaction
999,
3