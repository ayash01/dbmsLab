-- Add 5 rows in the employee and dept tables
INSERT INTO department (dept_name, location)
VALUES
    ('Operations', 'Head Office'),
    ('HR', 'Head Office'),
    ('Sales', 'Branch Office'),
    ('IT', 'Branch Office'),
    ('Marketing', 'Head Office');
;

INSERT INTO employee (emp_name, DOB, address, doj, mobile_no, dept_no, salary, designation)
VALUES
    ('Ted J. Cloud', '1996-02-04', '4084 Lincoln Drive, Millerstown, PA 17062', '2022-04-23', '9829594246', '103', '50000', 'Sales Manager'),
    ('Larry S. Ackerman', '1997-04-20', '1885 Frederick Street, Midland, TX 79701', '2020-03-16', '4117136606', '104', '60000', 'IT Admin'),
    ('Danny M. Patterson', '1995-09-12', '996 Simpson Square, Tonkawa, OK 74653', '2021-04-19', '8113899890', '105', '70000', 'Marketing Head'),
    ('Marlon L. Brennan', '1997-10-08', '4039 Griffin Street, Phoenix, AZ 85040', '2022-06-05', '6934074979', '102', '100000', 'HR Manager'),
    ('Thomas C. Boston', '2000-11-03', '581 Michigan Avenue, New Castle, PA 16101', '2023-01-09', '6032868245', '101', '90000', 'Operations Analyst')
;

-- Display all the records from the above tables
SELECT * from employee as e INNER JOIN department as d ON e.dept_no = d.dept_no;

-- Display the emp_no and name of all the employees from department no. 2
SELECT emp_no, emp_name from employee WHERE dept_no = 102;

-- Display emp_no, name, designation, dept_no and salary in the descending order of salary
SELECT emp_no, emp_name, designation, dept_no, salary from employee ORDER BY salary DESC;

-- Display the emp_no and name of all employees whose salary is between 2000 and 5000
SELECT emp_no, emp_name from employee WHERE salary BETWEEN 2000 AND 5000;

-- Display all designations without duplicate values.
SELECT DISTINCT designation from employee;

-- Display the dept name and total salary of employees of each department.


-- Change the salary of employees to 25000 whose designation is ‘Typist’
UPDATE employee SET SALARY = 25000 WHERE designation = 'Typist';

-- Change the mobile no of employee named ‘john’
UPDATE employee SET mobile_no = '1234567890' WHERE emp_name = 'john';

-- Delete all employees whose salaries are equal to Rs.7000
DELETE * from employee WHERE salary = 7000;

-- Select the department that has total salary paid for its employees more than 25000






