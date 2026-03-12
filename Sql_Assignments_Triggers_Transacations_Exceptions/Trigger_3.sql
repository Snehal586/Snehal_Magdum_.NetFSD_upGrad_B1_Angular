create table MarksAudit
(
AuditId int identity(1,1) primary key,
StudentId int,
ExamId int,
OldMarks int,
NewMarks int,
UpdatedDate datetime
);

create trigger trg_UpdateMarksAudit
on Marks
after update
as
begin
insert into MarksAudit(StudentID, ExamID, OldMarks, NewMarks, UpdatedDate)
select 
d.StudentID,
d.ExamID,
d.MarksObtained,
i.MarksObtained,
getdate()

from deleted d
join inserted i
on d.StudentID = i.StudentID
and d.ExamID = i.ExamID;
end;

update Marks
set MarksObtained = 85
where StudentID = 101 and ExamID = 1;

select * from MarksAudit