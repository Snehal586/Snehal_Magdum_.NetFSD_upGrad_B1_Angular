--1
create view StudentDepartmentView as
select Students.StudentID,
       Students.FirstName + ' ' + Students.LastName as StudentName,
       Departments.DepartmentName
from Students
join Departments
on Students.DepartmentID = Departments.DepartmentID;

select * 
from StudentDepartmentView;

--2
create view StudentCourseView as
select Students.FirstName + ' ' + Students.LastName as StudentName,
       Courses.CourseName,
       Enrollments.EnrollmentDate
from Students
join Enrollments
on Students.StudentID = Enrollments.StudentID
join Courses
on Enrollments.CourseID = Courses.CourseID;

select *
from StudentCourseView;

--3
create view ExamResultView as
select Students.FirstName + ' ' + Students.LastName as StudentName,
       Courses.CourseName,
       Exams.ExamType,
       Marks.MarksObtained
from Students
join Marks
on Students.StudentID = Marks.StudentID
join Exams
on Marks.ExamID = Exams.ExamID
join Courses
on Exams.CourseID = Courses.CourseID;

select *
from ExamResultView;

--4
update Students
set FirstName = 'Piya', LastName = 'Patel'
where StudentID = 101;

--5
drop view StudentDepartmentView;
drop view StudentCourseView;
drop view ExamResultView;