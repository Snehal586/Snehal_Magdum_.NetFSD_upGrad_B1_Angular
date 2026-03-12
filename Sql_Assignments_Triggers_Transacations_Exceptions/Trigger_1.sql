-- Create table Audit
create table StudentAudit(
AuditID int identity(1,1) primary key,
StudentID int,
ActionType varchar(10),
ActionDate datetime
);

--create trigger
create trigger trg_StudentInsertAudit
on Students
after insert
as
begin
insert into StudentAudit(StudentID, ActionType, ActionDate)
select StudentID, 'INSERT', getdate()
from inserted;
end;

--1
insert into Students
(StudentID, FirstName, LastName, DateOfBirth, Gender, DepartmentID, AdmissionDate)
values
(134,'Shruu','Patil','2001-08-10','Female',11,'2025-06-20');

--2
select * from StudentAudit

--3
insert into Students
(StudentID, FirstName, LastName, DateOfBirth, Gender, DepartmentID, AdmissionDate)
values
(135,'Niraj','Chopda','2004-07-27','Male',11,'2025-06-20'),
(136,'Pankaj','Mohite','2001-12-24','Male',44,'2025-06-20');

select * from StudentAudit

