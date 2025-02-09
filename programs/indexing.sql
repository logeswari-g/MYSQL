
/* UNIQUE Index */
CREATE UNIQUE INDEX unique_employeee ON employees(name);

SELECT * FROM Employees WHERE Name = 'guru';

/* Normal Index */

CREATE INDEX idx_salary ON Employees(Salary);

SELECT * FROM Employees WHERE Salary > 50000;

/* view indexing */

SHOW INDEX FROM Employees;

DROP INDEX unique_employeee ON Employees;
DROP INDEX idx_salary ON Employees;


