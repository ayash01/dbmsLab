-- Display the emp_no, name, and salaries for employees whose average salary is higher than the salary of the organization
SELECT * FROM employee WHERE salary IN (SELECT MAX(salary) FROM employee);

-- Display the details of employees whose salary is equal to the minimum salary of organisation.
SELECT * FROM employee WHERE salary IN (SELECT MIN(salary) FROM employee);

-- Display the employee details by implementing left inner join
SELECT * FROM employee e LEFT JOIN department d ON e.dept_no = d.dept_no;

-- Display employee details by implementing a right outer join
SELECT * FROM employee e RIGHT OUTER JOIN department d ON e.dept_no = d.dept_no;