--1
select StudentID, MarksObtained
from Marks
where MarksObtained >
(
    select avg(MarksObtained)
    from Marks
);

--2
select CourseName, Credits
from Courses
where Credits =
(
    select max(Credits)
    from Courses
);

--3
select StudentID
from Enrollments
group by StudentID
having count(CourseID) > 2;

--4
select TeacherFullName
from Teachers
where DepartmentID in
(
    select DepartmentID
    from Teachers
    where TeacherFullName = 'Sne Magdum'
);

--5
select StudentID, MarksObtained
from Marks
where MarksObtained =
(
    select max(MarksObtained)
    from Marks
);

--6
select DepartmentID, count(StudentID) as TotalStudents
from Students
group by DepartmentID
having count(StudentID) =
(
    select max(StudentCount)
    from
    (
        select count(StudentID) as StudentCount
        from Students
        group by DepartmentID
    ) as DeptCount
);