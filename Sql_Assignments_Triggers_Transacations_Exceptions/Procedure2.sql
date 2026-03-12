create procedure sp_DeleteStudent
@StudentID int
as
begin

begin try

delete from Students
where StudentID = @StudentID

print 'Student deleted successfully'

end try

begin catch

print 'Error while deleting student'
print error_message()

end catch

end

--1
exec sp_DeleteStudent 137

--2
exec sp_DeleteStudent 500

