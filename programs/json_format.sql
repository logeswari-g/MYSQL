CREATE TABLE jsonexample (
    Emp_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Details JSON
);

drop table jsonexample;

use loki;

INSERT INTO jsonexample (Emp_ID, Name, Details) VALUES
(3, 'Alice', '{"Department": "HR", "Skills": ["Communication", "Recruitment"]}'),
(4, 'Bob', '{"Department": "IT", "Skills": ["Python", "SQL"]}'),
(5, 'Charlie', '{"Department": "HR", "Skills": ["Recruitment", "Training"]}');


SELECT * FROM jsonexample;

SELECT Details->'$.Department' AS Department FROM jsonexample;

SELECT Details->>'$.Department' AS Department FROM jsonexample;

SELECT JSON_EXTRACT(Details, '$.Skills[0]') AS First_Skill FROM jsonexample;

SELECT * FROM jsonexample 
WHERE JSON_CONTAINS(Details, '"HR"', '$.Department');

UPDATE jsonexample
SET Details = JSON_SET(Details, '$.Experience', 5)
WHERE Emp_ID = 3;

UPDATE jsonexample
SET Details = JSON_REPLACE(Details, '$.Department', 'Finance')
WHERE Emp_ID = 3;

UPDATE jsonexample
SET Details = JSON_REMOVE(Details, '$.Skills')
WHERE Emp_ID = 5;

SELECT * FROM jsonexample
WHERE JSON_SEARCH(Details, 'one', 'Recruitment') IS NOT NULL;

