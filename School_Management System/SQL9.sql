--1
create index idx_student_lastname
on Students(LastName);

--2
create index idx_teacher_email
on Teachers(Email);

--3
create index idx_enrollment_student_course
on Enrollments(StudentID, CourseID);

--4
create unique index idx_department_name
on Departments(DepartmentName);

--5
drop index idx_student_lastname
on Students;