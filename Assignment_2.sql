--1. Write a query to display all employees whose salary is greater than 50,000.
--2. Retrieve employees who work in the IT department and have more than 5 years ofexperience.
--3. Write a query to display employees whose salary is between 45,000 and 60,000.
--4. Display employees whose city is either Mumbai or Delhi.
--5. Write a query to display employee name along with their annual income
--6. Find employees whose name starts with the letter 'A'.
--7. Find the highest salary among all employees.
--8. Find the total bonus paid to employees in the IT department.
--9. Display the minimum and maximum experience of employees.
--10.Count the number of employees in each department.
--11. Find the total bonus paid to employees in the IT department.
--12. Write an SQL statement to add a new column named Email of type VARCHAR(100) to the Employees table.
--13. Write an SQL statement to modify the Salary column so that it becomesDECIMAL(10,2).
--14. Write an SQL statement to drop the Bonus column from the Employees table.


create database assignment_2

use assignment_2

create table IT_Company(
EmployeeID int,
name varchar (20),
Dpartment varchar(30),
salary money,
Bonus money,
Experience int,
city  varchar(40)
)

select * from IT_Company



insert into IT_Company (EmployeeID, Name, Dpartment, salary, bonus, Experience, city)

values(1 , 'Om patil', 'IT', 60000, 12000, 3, 'Pune'),
      (2 , 'Rahul Shinde','IT', 55000, 10000, 2,'Mumbai'),
      (3 , 'Ajay kale' ,'IT', 45000, 8000, 1, 'Delhi'),
      (4 , 'Pavan Patil','AIDS',70000, 15000,5, 'Pune'),
      (5 , 'Raj Kumwat', 'Civil',90000,12000,6,'Banglore'),
      (6 , 'Adii Panchal','Mechanical', 45000, 8000,6, 'Pune'),
      (7 , 'shridhar Patil','Electrical',65000,10000,4,'Mumbai'),
      (8 , 'rohan Zalke','IT',100000, 20000, 10 , 'Pune'),
      (9 , 'Kunal kale', 'Mechnical', 40000,6000,2,'Delhi');

      select * from IT_Company



--1. Write a query to display all employees whose salary is greater than 50,000.

SELECT *
FROM IT_Company
WHERE Salary > 50000;


--2. Retrieve employees who work in the IT department and have more than 5 years of experience.

Select*
From IT_Company
Where Experience > 5
and Dpartment = 'IT'

--3.Write a query to display employees whose salary is between 45,000 and 60,000.

Select *
From IT_Company
Where Salary Between 45000 and 60000


--4.Display employees whose city is either Mumbai or Delhi.

Select *
 From IT_Company
 where  city = 'Mumbai' or City= 'Delhi'


 --5.Write a query to display employee name along with their annual income

 Select name,(salary * 12) As Annual_income
 from IT_Company

-- 6. Find employees whose name starts with the letter 'A'.

select *
from IT_Company
Where Name like  'A%';


--7. Find the highest salary among all employees.

 
select max (salary) as highest_salary
from IT_Company 
 

 --8. Find the total bonus paid to employees in the IT department.

 select sum (bonus) as total_bonus
 from IT_company
 where dpartment = 'IT'


 --9. Display the minimum and maximum experience of employees.

 select min(Experience) as minExperience, max (Experience) as maxExperience 
 from IT_company

 
 ---10.Count the number of employees in each department.

 select Dpartment, count(*) AS NumberOfEmployees
 from IT_company
group by Dpartment;

--11. Find the total bonus paid to employees in the IT department.

select sum (bonus) as total_bonus
 from IT_company
 where dpartment = 'IT'


-- 12. Write an SQL statement to add a new column named Email of type VARCHAR(100) to the Employees table.

alter table IT_Company
add Email Varchar(100)


--13. Write an SQL statement to modify the Salary column so that it becomes DECIMAL(10,2).

Alter table IT_Company
alter column salary decimal (10,2);


--14. Write an SQL statement to drop the Bonus column from the Employees table.

Alter table IT_Company
drop column Bonus
