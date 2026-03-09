alter table Students add PhoneNumber varchar(30)

alter table Teachers add Salary int

alter table Teachers alter column Salary DECIMAL(10,2);

alter table Teachers add constraint chk_salary check(salary>20000)

alter table Students
Drop column PhoneNumber

EXEC sp_rename 'Teachers.TeacherName', 'TeacherFullName', 'COLUMN';



