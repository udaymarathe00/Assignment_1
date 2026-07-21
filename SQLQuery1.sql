--   Execute a literal select statement that returns your name.

SELECT 'Uday Vinod Marathe' AS Name;

--  Write the literal select statement that evaluates the product of 7 and 4.

select 7 * 4 AS product;

--   Write the literal select statement that takes the difference of 7 and 4 then multiplies that difference by 8.


select (7 - 4) * 8 AS product;


--   Write a literal select statement that returns the phrase “Brewster’s SQL Training Class”


select 'brewster''s  SQL training class' AS phrase;


-- Execute a literal SELECT statement that returns the phrase “Day 1 of Training” in one column and the result of 5*3 in another column.

SELECT 'Day 1 of Training' AS Training_Day,
       5 * 3 AS Result;

-- Insert a new employee record with all details provided directly.

 
Create database assisgment
Use assisgment
Create table company
( EID INT,
EName Varchar (20),
 EDepartment Varchar (20),
ESalary Money)

--  Insert a new employee record with all details provided directly.
INSERT INTO company values 
(101 , 'Rohit Sharma' , 'AI' , 50000)
SELECT	* from company


--Add multiple new team members to the HR department at once.
INSERT INTO company values 
(102 , 'Sudam Badak' , 'HR' , 26000),
(103 , 'Suraj Tupke' , 'HR' , 26000),
(104 , 'Chaitanya pawar' , 'HR' , 26000)
select * from company


--Register an employee who hasn't been assigned a salary yet.
INSERT INTO company (EID, EName , EDepartment)
 values (105 , 'Rohan Zalke' , 'Cloud')
SELECT	* from company



-- Update the salary to 85,000 for everyone working in the 'Cloud' department.
UPDATE company
SET ESalary = 85000
WHERE EDepartment = 'Cloud'


 --Change both the department and salary for a specific employee by name.
UPDATE company 
SET EDepartment = 'Cloud', ESalary = 60000
WHERE EName = 'Shubham Lohar'


--Give a flat 10% appraisal boost to employee working in AI department.
UPDATE company
SET ESalary = ESalary * 1.10
WHERE EDepartment = 'AI'


--Assign an initial entry-level salary of 30,000 to anyone whose salary column is completely blank.
 
UPDATE company 
SET ESalary = 30000
WHERE ESalary IS NULL

--Remove a specific employee from the system using their unique ID.
DELETE FROM company
WHERE EID = 105


--Remove all records belonging to a department that has been completely shut down.
DELETE FROM  company
WHERE EDepartment = 'CLoud'



--Drop records of any employee earning less than 20,000 in the Finance division.
DELETE FROM company
WHERE Esalary < 20000
  AND Edepartment = 'Finance';
 
 select * from company