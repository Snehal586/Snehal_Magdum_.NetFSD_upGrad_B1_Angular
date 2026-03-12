create view vw_DepartmentStudentCount
as
select Departments.DepartmentName,
       count(Students.StudentID) as TotalStudents
from Departments
join Students
on Departments.DepartmentID = Students.DepartmentID
group by Departments.DepartmentName;

--1
select *
from vw_DepartmentStudentCount
where TotalStudents > 10;

--2
select *
from vw_DepartmentStudentCount
order by TotalStudents desc;

--3
select * from vw_DepartmentStudentCount;