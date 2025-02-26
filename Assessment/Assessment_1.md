**Create Table**

1. Write a  MySQL query to create a simple table countries including columns country_id, country_name and region_id.

2. Write a MySQL query to create a simple table countries including columns country_id, country_name and region_id which is already exists.

3. Write a MySQL query to create the structure of a table dup_countries similar to countries.

**Insert Rows**

1. Write a  MySQL query to insert a record with your own value into the table countries against each columns.

Here is the structure of the table "countries".

```plaintext
+-------------+--------------+------+-----+---------+
| Field       | Type         | Null | Key | Default |
+-------------+--------------+------+-----+---------+
| COUNTRY_ID  | varchar(2)   | YES  | null | null   |
| COUNTRY_NAME| varchar(40)  | YES  | null | null   |
| REGION_ID   | decimal(10,0)| YES  | null | null   |
+-------------+--------------+------+-----+---------+
```

2. Write a  MySQL query to insert a record with your own value into the table countries against each columns.

Here is the structure of the table "countries".

```
+--------------+---------------+------+-----+--------
| Field        | Type         | Null | Key | Default|
+--------------+---------------+------+-----+--------
| COUNTRY_ID   | varchar(2)    | YES  |     | NULL |
| COUNTRY_NAME | varchar(40)   | YES  |     | NULL |
| REGION_ID    | decimal(10,0) | YES  |     | NULL |
+--------------+---------------+------+-----+--------
```

3. Write a MySQL query to insert NULL values against region_id column for a row of countries table.

4. Write a MySQL query insert rows from country_new table to countries table.

5. Write a MySQL query to insert 3 rows by a single insert statement.

**CONSTRAINTS**

1. Write a MySQL query to create a table countries set a constraint NULL.

```
+--------------+---------------+------+-----+--------
| Field        | Type          | Null | Key | Default 
+--------------+---------------+------+-----+--------
| COUNTRY_ID   | varchar(2)    | NO   |     | NULL    
| COUNTRY_NAME | varchar(40)   | NO   |     | NULL    
| REGION_ID    | decimal(10,0) | NO   |     | NULL    
+--------------+---------------+------+-----+--------
```

2. Write a MySQL query to create a table named jobs including columns job_id, job_title, min_salary, max_salary and check whether the max_salary amount exceeding the upper limit 25000.

```
+------------+--------------+------+-----+---------+
| Field      | Type         | Null | Key | Default |
+------------+--------------+------+-----+---------+
| JOB_ID     | varchar(10)  | NO   |     | NULL    |
| JOB_TITLE  | varchar(35)  | NO   |     | NULL    |
| MIN_SALARY | decimal(6,0) | YES  |     | NULL    |
| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |
+------------+--------------+------+-----+---------+
```


3. Create a table Books with the following constraints:

BookID: Primary Key.
Title: Cannot be null.
Price: Should always be greater than 0.
ISBN: Must be unique.

4. Write a query to add a foreign key constraint to the Orders table that references the Customers table.

5. What happens if you try to insert a duplicate value in a column with a UNIQUE constraint? Write a query to demonstrate.

**ALTERS**

1. Write a  SQL statement to rename the table countries to country_new.

2. Write a SQL statement to add a column region_id to the table locations.

3. Write a SQL statement to add a columns ID as the first column of the table locations.

4. Write a SQL statement change the data type of the column country_id to integer in the table locations.

5. Write a SQL statement to drop the column city from the table locations.

6. Write a SQL statement to change the name of the column state_province to state, keeping the data type and size same.

**UPDATE**

1. Write a  SQL statement to change the email column of employees table with 'not available' for all employees.

2. Write a  SQL statement to change the email and commission_pct column of employees table with 'not available' and 0.10 for all employees.

3. Write a  SQL statement to change the email column of employees table with 'not available' for those employees who belongs to the 'Accouning' department.

4. Write a  SQL statement to change job ID of employee which ID is 118, to SH_CLERK if the employee belongs to department, which ID is 30 and the existing job ID does not start with SH.
