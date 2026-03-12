create procedure sp_InsertMarks
@StudentID int,
@ExamID int,
@MarksObtained int
as
begin

if @MarksObtained < 0 or @MarksObtained > 100
begin
    raiserror('Invalid Marks',16,1)
    return
end

insert into Marks(StudentID, ExamID, MarksObtained)
values(@StudentID, @ExamID, @MarksObtained)

print 'Marks inserted successfully'

end

--1
exec sp_InsertMarks
137,
1,
85

--2
exec sp_InsertMarks
137,
1,
180