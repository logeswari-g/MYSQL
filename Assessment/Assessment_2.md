**Joins**

Consider below tables:

```
+------------+---------+-----+
| Student_ID | Name    | Age |
+------------+---------+-----+
| 1          | John    | 18  |
| 2          | Alice   | 17  |
| 3          | Bob     | 19  |
| 4          | Charlie | 16  |
+------------+---------+-----+

+--------------+------------+-----------+
| Enrollment_ID | Student_ID | Course_ID |
+--------------+------------+-----------+
| 101          | 1          | C1        |
| 102          | 2          | C2        |
| 103          | 3          | C1        |
| 104          | 3          | C3        |
+--------------+------------+-----------+

+-----------+-------------+
| Course_ID | Course_Name |
+-----------+-------------+
| C1        | Math        |
| C2        | Science     |
| C3        | History     |
| C4        | English     |
+-----------+-------------+
```

1. List all students with their enrolled courses.

2. List all students and their enrolled courses (including those not enrolled)

3. List all courses and students enrolled (including courses with no students)

4. List all students and all courses (including non-matching data)

5. Find pairs of students with the same age

6. List all possible student-course combinations

7. Find students who are NOT enrolled in any course

8. Find courses that have NO students enrolled

9. Count the number of students in each course

10. Find students enrolled in multiple courses

**Aggregate Functions**

```
Students Table:

+------------+---------+-----+-------------+
| Student_ID | Name    | Age | City        |
+------------+---------+-----+-------------+
| 1          | John    | 18  | New York    |
| 2          | Alice   | 17  | Los Angeles |
| 3          | Bob     | 19  | Chicago     |
| 4          | Charlie | 16  | New York    |
| 5          | David   | 20  | Los Angeles |
+------------+---------+-----+-------------+

Marks Table:

+------------+---------+-------+
| Student_ID | Subject | Marks |
+------------+---------+-------+
| 1          | Math    | 80    |
| 1          | Science | 85    |
| 2          | Math    | 90    |
| 2          | Science | 70    |
| 3          | Math    | 75    |
| 3          | Science | 95    |
| 4          | Math    | 88    |
| 4          | Science | 78    |
| 5          | Math    | 92    |
| 5          | Science | 88    |
+------------+---------+-------+
```

1. Find the total number of students in the Students table.

2. Find the average marks scored in Math.

3. Find the highest and lowest marks in Science.

4. Find the total marks scored by each student whose total marks is more than 170.

5. Find the total marks scored by each student.

6. Find students who scored more than 85 in any subject.

**Like**

7. Find students whose names start with 'A'.

8. Find students whose names end with 'd'.

9. Find students whose names contain 'o'.

10. Find students whose names have exactly 5 letters.