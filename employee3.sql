-- Display the emp_no, name, and salaries for employees whose average salary is higher than the salary of the organization
SELECT * FROM employee WHERE salary IN (SELECT MAX(salary) FROM employee);

-- Display the details of employees whose salary is equal to the minimum salary of organisation.
SELECT * FROM employee WHERE salary IN (SELECT MIN(salary) FROM employee);

-- Display all the employees whose designation is same as that of 'Arun"


-- Display the emp_no and name of employees who earn more than any employee in dept 1


-- Display the empno, name, departments that the departments are same in both the emp and dept


-- Display the employee details by implementing left inner join
SELECT * FROM employee e LEFT JOIN department d ON e.dept_no = d.dept_no;

-- Display employee details by implementing a right outer join
SELECT * FROM employee e RIGHT OUTER JOIN department d ON e.dept_no = d.dept_no;
