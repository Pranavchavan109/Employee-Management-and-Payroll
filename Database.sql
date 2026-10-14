
create Database employee_management_payroll;


use employee_management_payroll;


create table Employees(
employee_id Int primary key,
employee_name varchar(50) Not Null,
department varchar(50) Not Null,
designation varchar(50) Not Null,
basic_salary varchar(50) Not Null,
joining_date Date Not Null,
status varchar(50) Not null,
constraint chk_employee_status check(status in ('Active','Inactive')) 
);

Insert into Employees 
(employee_id, employee_name, department, designation, basic_salary, joining_date, status)
values (101, 'Pranav Chavan',  'IT', 'SQL Developer', 82000.00, '2026-10-14', 'Active'),
(102, 'Sakshi Gadiwadar',  'IT', 'SQL Developer', 68000.00, '2026-5-11', 'Active'),
(103, 'Mayur Pundkare',  'IT', 'Data Analyst', 50000.00, '2026-4-12', 'Inactive'),
(104, 'Shivranjani Daud',  'HR', 'HR Executive', 70000.00, '2026-6-10', 'Active'),
(105, 'Prathamesh Bhurewar',  'IT', 'Devops', 79000.00, '2026-4-12', 'Active'),
(106, 'Ritesh Kulkarni',  'Sales', 'Sales Executive', 18000.00, '2026-10-14', 'Active'),
(107, 'Amit Baderao',  'Marketing', 'Marketing Analyst', 49000.00, '2025-7-01', 'Inactive'),
(108, 'Nagesh Sawargave',  'HR', 'HR Executive', 77000.00, '2026-01-12', 'Active'),
(109, 'Dikshit Ainlod',  'IT', 'Security Lead', 10000.00, '2026-9-13', 'Active'),
(110, 'Sumith Dhage',  'IT', 'SQL Developer', 82000.00, '2026-5-14', 'Active'),
(111, 'Aadinath Karale',  'IT', 'Software Developer', 25000.00, '2026-10-14', 'Active'),
(112, 'Kailas Holkar',  'HR', 'HR Managerr', 28000.00, '2026-10-14', 'Active'),
(113, 'Amol Bandal',  'IT', 'SQL Developer', 83000.00, '2025-01-12', 'Active'),
(114, 'Rajendra Gadgul',  'Sales', 'Sales Executive', 66000.00, '2026-10-14', 'Active'),
(115, 'Aditya Ardadh',  'Marketing', 'Marketing Analyst', 68000.00, '2026-09-05', 'Inactive'),
(116, 'Suraj More',  'IT', 'SQL Developer', 61000.00, '2025-10-16', 'Active'),
(117, 'Amol Chavan',  'IT', 'Data Scientist', 27000.00, '2026-10-14', 'Active'),
(118, 'Prasad Karade',  'IT', 'SQL Developer', 90000.00, '2025-11-15', 'Inactive'),
(119, 'Pramey Metkar',  'HR', 'HR Manager', 91000.00, '2026-08-11', 'Active'),
(120, 'Rohan Ingale',  'IT', 'SQL Developer', 99000.00, '2025-10-10', 'Inactive');
    

select * from Employees;
