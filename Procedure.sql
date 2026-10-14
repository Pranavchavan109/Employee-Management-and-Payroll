
use employee_management_payroll;


-----------------------------------------------
-- Task 1 – Employee Salary Report Procedure
-----------------------------------------------


Delimiter //
create procedure GetEmployeeSalaryReport(	
In department_name varchar(50),
In minimum_salary Decimal(10,2))
Begin 
select employee_id, employee_name, department, designation, basic_salary, joining_date
from Employees
where department = department_name and basic_salary >= minimum_salary and status= "Active";
End //
Delimiter ;

call GetEmployeeSalaryReport('IT', 50000);

-----------------------------------------------
-- Task 2 – Employee Salary Calculation Procedure
-----------------------------------------------


Delimiter //
create procedure CalculateEmployeeSalary(
In emp_id Int)
Begin 
select employee_name, basic_salary, basic_salary * 0.20 as HRA, basic_salary * 0.10 as DA, basic_salary * 0.12 as PF, 
basic_salary + basic_salary * 0.20  + basic_salary * 0.10 - basic_salary * 0.12 as Net_salary
from Employees
where employee_id = emp_id;
End //
Delimiter ;

call CalculateEmployeeSalary(103);


-----------------------------------------------
-- Task 3 – Salary Grade Procedure
-----------------------------------------------


Delimiter //
create procedure EmployeeSalaryGrade(
In emp_id Int)
Begin
select employee_name, basic_salary, 
case 
when basic_salary < 30000 then 'C'
when basic_salary <= 60000 then 'B'
else 'A' end as salary_grade
from employees
where employee_id = emp_id;
End //
Delimiter ;

call EmployeeSalaryGrade(112);


-----------------------------------------------
-- Bonus Task – Department Summary
-----------------------------------------------


Delimiter //
create procedure GetDepartmentSummary(
department_name varchar(50))
begin
select department, count(*) as Total_employees, round(avg(basic_salary),2) as Average_Salary, max(basic_salary) as Highest_Salary, min(basic_salary) as Lowest_Salary,
sum(basic_salary) as Total_Salary_Expenditure
from Employees
where department = department_name
Group by department;
End//
Delimiter ;


call GetDepartmentSummary('IT');






