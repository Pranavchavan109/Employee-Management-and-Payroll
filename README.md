# Employee Management and Payroll System (MYSQL)

## Overview
This project focuses on managing employee records and performing basic payroll calculations using MySQL. It was developed as part of a SQL Developer interview task to practice stored procedures, input parameters, conditional statements, and aggregate functions.

## Features
- Created an employee database with sample records from different departments.
- Generated salary reports based on department, minimum salary, and employee status.
- Calculated HRA, DA, PF, and net salary for individual employees.
- Assigned salary grades based on basic salary using CASE statements.
- Generated department-wise summaries with employee count and salary statistics.

## Database Structure

**Database:** `employee_management_payroll`

**Table:** `Employees`

| Column | Description |
|---|---|
| employee_id | Unique employee ID |
| employee_name | Name of the employee |
| department | Department name |
| designation | Job role |
| basic_salary | Basic salary |
| joining_date | Date of joining |
| status | Active or Inactive |

## Stored Procedures

### 1. GetEmployeeSalaryReport
Accepts a department name and minimum salary as input parameters. Returns employees who belong to the selected department, meet the salary condition, and have Active status.

### 2. CalculateEmployeeSalary
Accepts an employee ID and calculates the following salary components:

- HRA = 20% of basic salary
- DA = 10% of basic salary
- PF = 12% of basic salary
- Net Salary = Basic Salary + HRA + DA - PF

### 3. EmployeeSalaryGrade
Assigns a salary grade according to the employee's basic salary.

- Grade C: Below ₹30,000
- Grade B: ₹30,000 to ₹60,000
- Grade A: Above ₹60,000

### 4. GetDepartmentSummary
Returns department-wise employee statistics, including total employees, average salary, highest salary, lowest salary, and total salary expenditure.

## How to Execute
1. Clone or download this repository.
2. Open MySQL Workbench and connect to your MySQL server.
3. Run `Database.sql` to create the database, table, and sample records.
4. Run `Procedure.sql` to create the stored procedures.
5. Execute the `CALL` statements in the procedure file to test each procedure.

Example:

```sql
CALL GetEmployeeSalaryReport('IT', 50000);

CALL CalculateEmployeeSalary(103);

CALL EmployeeSalaryGrade(112);

CALL GetDepartmentSummary('IT');
```

## Skills Practiced
- MySQL database and table creation
- Stored procedures and input parameters
- WHERE conditions and filtering
- CASE statements and conditional logic
- Salary calculations and aliases
- Aggregate functions such as COUNT, AVG, MAX, MIN, and SUM

## Project Files

- `Database.sql` – Database creation, table structure, and sample data.
- `Procedure.sql` – Stored procedures and example execution queries.

---

## Author

## Pranav Chavan
