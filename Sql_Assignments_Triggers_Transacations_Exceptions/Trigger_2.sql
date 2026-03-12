create trigger trg_PreventStudentDelete
on Students
instead of delete
as
begin
if exists (
select * from Enrollments where StudentID in (select StudentID from deleted)
)
begin
raiserror ('Student has course enrollments and cannot be deleted', 16,1)
rollback transaction;
end
end;