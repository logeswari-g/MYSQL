
use loki;

drop table students;
drop table Enrollments;
drop table Courses;

create table students(
Student_ID int,
Name varchar(20),
Age int
);

create table Enrollments(
Enrollment_ID int,
Student_ID int,
Course_ID varchar(5)
);

create table Courses(
Course_ID varchar(5),
Course_Name varchar(20)
);
INSERT INTO students (Student_ID, Name, Age) VALUES
(1, "John", 18),
(2, "Alice", 17),
(3, "Bob", 19),
(4, "Charlie", 16);
 
INSERT INTO Enrollments (Enrollment_ID, Student_ID, Course_ID) VALUES
(101, 1, "C1"),
(102, 2, "C2"),
(103, 3, "C1"),
(104, 2, "C3");
INSERT INTO Enrollments (Enrollment_ID, Student_ID, Course_ID) VALUES
(101, 2, "C1");

select * from Enrollments;

INSERT INTO Courses (Course_ID, Course_Name) VALUES
("C1", "Math"),
("C2", "Science"),
("C3", "History"),
("C4", "English");

insert into Courses (Course_ID, Course_Name) VALUES ("C5", "Tamil");

/****** Single-Row Subquery *****/
/* Returns one value */

SELECT Name, Age  
FROM Students  
WHERE Age > (SELECT MIN(Age) FROM Students);

/********** Multi-Row Subquery *********/
/*Returns multiple values*/

SELECT Name  
FROM Students  
WHERE Student_ID IN (SELECT Student_ID FROM Enrollments WHERE Course_ID in  
                     (SELECT Course_ID FROM Enrollments WHERE Student_ID =
                      (SELECT Student_ID FROM Students WHERE Name = 'Alice')));

 /* Correlated query */
 
SELECT Name  
FROM Students S 
WHERE (SELECT COUNT(*) FROM Enrollments E WHERE E.Student_ID = S.Student_ID) > 1;