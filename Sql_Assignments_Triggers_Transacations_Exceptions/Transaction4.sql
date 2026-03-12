create procedure sp_TransferStudentDepartment
@StudentID int,
@NewDepartmentID int
as
begin

begin try

begin transaction

if not exists
(
    select *
    from Departments
    where DepartmentID = @NewDepartmentID
)
begin
    raiserror('Department does not exist',16,1)
    rollback transaction
    return
end

update Students
set DepartmentID = @NewDepartmentID
where StudentID = @StudentID

commit transaction

print 'Student department transferred successfully'

end try

begin catch

rollback transaction

print 'Transfer failed'
print error_message()

end catch

end

--1
update Students
set DepartmentID = @NewDepartmentID
where StudentID = @StudentID

--2
exec sp_TransferStudentDepartment
101,
55

--3
exec sp_TransferStudentDepartment
101,
99