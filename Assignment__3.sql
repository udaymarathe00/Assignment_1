--Write a query to display each Department and the total number of employees working in that department from the Employee table.

Select  Dpartment, Count(*) AsTotal_Employees
From IT_Company
Group by Dpartment;

--2.Write a query to find the Department, the highest salary (MAX), and the average salary (AVG) for each department.

Select Dpartment, Max(Salary) As Highest_Salary, Avg(Salary) As Average_Salary
From IT_Company
Group by Dpartment;


--3Write a query to count how many employees are in each Department.

Select  Dpartment, Count(*) AsTotal_Employees
From IT_Company
Group by Dpartment;


--4. Write a query to find the minimum salary in each Department


select dpartment , min (salary) as MInimum_salary
from IT_Company
Group by Dpartment


--5. Write a query to show departments that have more than 2 employees

select dpartment , count (*) as employee_count
from IT_Company
group by Dpartment
having count (*) > 2


--6.Write a query to show departments where the total salary payout is greater than 100,000

select dpartment , sum(salary) As total_salary
from IT_Company
group by Dpartment
having sum (salary) >100000 



--7. Write a query to find departments where the average salary is above 60,000

select dpartment , avg (salary) as average_salary
from IT_Company
group by Dpartment 
having avg (salary) > 60000


--8. Write a query to show departments that have exactly 1 employee

select dpartment , count (*) as employee_count
from IT_Company
group by Dpartment
having count (*) =1 

--9.Write a query to list all employees sorted by Salary from highest to lowest

Select *
from IT_Company
order by Salary desc;

--10.Write a query to list all employees sorted by Ename in alphabetical order

select *
from IT_Company
order by name asc

--11.Write a query to list all employees sorted by Department alphabetically, and then by Ename alphabetically.

select * 
from IT_Company
order by dpartment asc , name asc
