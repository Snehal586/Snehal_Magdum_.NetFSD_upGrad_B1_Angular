--1
select Students.FirstName, Students.LastName, Departments.DepartmentName
from Students
JOIN Departments
on Students.DepartmentID = Departments.DepartmentID;

--2
select courses.coursename, teachers.teacherfullname
from courses
join teachers
on courses.teacherid = teachers.teacherid;

--3
select students.firstname, students.lastname, courses.coursename
from students
join enrollments
on students.studentid = enrollments.studentid
join courses
on enrollments.courseid = courses.courseid;

--4
select students.firstname, students.lastname, exams.examid, marks.marksobtained
from students
join marks
on students.studentid = marks.studentid
join exams
on marks.examid = exams.examid;

--5
select courses.coursename, teachers.teacherfullname
from courses
left join teachers
on courses.teacherid = teachers.teacherid;

--6
select teachers.teacherfullname
from teachers
left join courses
on teachers.teacherid = courses.teacherid
where courses.teacherid is null;
