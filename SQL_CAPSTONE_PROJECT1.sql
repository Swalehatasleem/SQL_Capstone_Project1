CREATE DATABASE CAPSTONEPROJECT; 
USE CAPSTONEPROJECT; 
CREATE TABLE Employee_hr_data (
    Employee_ID INT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Salary INT NOT NULL,
    Hire_Date DATE NOT NULL);
    INSERT INTO Employee_hr_data (Employee_ID, First_Name, Last_Name, Department, Salary, Hire_Date)
VALUES
  (1, 'Rahul', 'Sharma', 'IT', 50000, '2022-01-01'),
  (2, 'Priya', 'Singh', 'HR', 45000, '2022-02-01'),
  (3, 'Amit', 'Patel', 'Finance', 55000, '2022-03-01'),
  (4, 'Anjali', 'Jain', 'Marketing', 40000, '2022-04-01'),
  (5, 'Sanjay', 'Gupta', 'Marketing', 60000, '2022-05-01');
  #Q1-Update the “Department” column for “Employee_ID = 4” in the "employees" table, with value “Online marketing”
  SET SQL_SAFE_UPDATES=0;
  UPDATE Employee_hr_data 
  SET Department = 'Online marketing' 
  WHERE Employee_ID = 4;
  
  #Q2-Write a query to retrieve the records of employees who work in the Finance department?
  SELECT * FROM Employee_hr_data
  WHERE Department= 'Finance';
  
  #Q3-Retrieve the records of employees who joined before 1st april and also from the HR department?
  SELECT * FROM Employee_hr_data 
WHERE Hire_Date < '2022-04-01' AND Department = 'HR';

#Q4-Retrieve specific columns (e.g., Employee_ID, First_Name, Last_Name, Department) for all employees:
SELECT Employee_ID, First_Name, Last_Name, Department FROM Employee_hr_data;

#Q5-Retrieve employees from the 'IT' department:
SELECT * FROM Employee_hr_data WHERE Department = 'IT';

#Q6-Retrieve employees with a salary greater than 50000:

#Q7-Retrieve employees hired after '2022-03-01':
SELECT * FROM Employee_hr_data WHERE Hire_Date > '2022-03-01';

#Q8-Retrieve employees from the 'Marketing' department with a salary greater than or equal to 50000:
SELECT * FROM Employee_hr_data WHERE Department = 'Marketing' AND Salary >= 50000;

#Q9-Update the salary of employee with ID 3 to 60000:
UPDATE Employee_hr_data SET Salary = 60000 WHERE Employee_ID = 3;

#Q10-Insert a new employee:
INSERT INTO Employee_hr_data (Employee_ID, First_Name, Last_Name, Department, Salary, Hire_Date)
VALUES (6, 'Neha', 'Mishra', 'Finance', 58000, '2022-06-01');

#Q11-Retrieve the average salary for all employees:
SELECT AVG(Salary) AS AverageSalary FROM Employee_hr_data;

#Q12-Retrieve employees with a salary in a specific range (e.g., between 45000 and 55000):
SELECT * FROM Employee_hr_data WHERE Salary BETWEEN 45000 AND 55000;

#Q13-Update the salary for an employee (e.g., set salary to 52000 for employee with ID 1):
UPDATE Employee_hr_data SET Salary = 52000 WHERE Employee_ID = 1;










