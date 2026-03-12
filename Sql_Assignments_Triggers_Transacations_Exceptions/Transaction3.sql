create procedure sp_RecordExamMarks
@StudentID int,
@ExamID int,
@MarksObtained int
as
begin

begin try

begin transaction

insert into Marks(StudentID, ExamID, MarksObtained)
values(@StudentID, @ExamID, @MarksObtained)

update Exams
set ExamDate = getdate()
where ExamID = @ExamID

commit transaction

print 'Exam marks recorded successfully'

end try

begin catch

rollback transaction

print 'Error occurred while recording marks'
print error_message()

end catch

end

--1
exec sp_RecordExamMarks
101,
1,
85


--2
exec sp_RecordExamMarks
999,
1,
85