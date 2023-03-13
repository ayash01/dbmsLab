-- Create database
CREATE DATABASE details_db;
USE details_db;

-- Create tables 'department' and 'database'
-- Include necessary constraints.
CREATE TABLE department
(
    dept_no int PRIMARY KEY AUTO_INCREMENT,
    dept_name varchar(255) NOT NULL,
    location varchar(255) NOT NULL
);
ALTER TABLE department AUTO_INCREMENT=100;

CREATE TABLE employee
(
    emp_no int PRIMARY KEY AUTO_INCREMENT,
    emp_name varchar(200) NOT NULL,
    DOB date NOT NULL,
    address varchar(255) NOT NULL,
    doj date NOT NULL,
    mobile_no bigint NOT NULL,
    dept_no int NOT NULL,
    CONSTRAINT employee FOREIGN KEY (dept_no) REFERENCES department (dept_no),
    salary int NOT NULL
);
ALTER TABLE employee AUTO_INCREMENT=101000;

-- List all the tables in the current database
SELECT * FROM employee, department;

-- Display the structure of the employee table
DESC employee;

-- Add a new column 'Designation' to the employee table
ALTER TABLE employee ADD COLUMN designation varchar(255) NOT NULL;

-- Drop the column location from Dept table
ALTER TABLE department DROP COLUMN location;

-- Drop the tables
DROP TABLE IF EXISTS department, employee;

-- Delete the database
DROP SCHEMA details_db;


