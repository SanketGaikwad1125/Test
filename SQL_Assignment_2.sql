
-- SQL_Assignment_03_PART_01 
-- Ebook Table
CREATE TABLE Ebook(Ebook_Id int primary key, First_Name varchar(200) NOT NULL, Last_Name varchar(200) NOT NULL, Company_Email nvarchar(500) unique NOT NULL, Company_Name varchar(100) NOT NULL, 
Job_Title varchar(200) NOT NULL, Phone_Number int NOT NULL, Country varchar(200) NOT NULL);

DESC Ebook;

-- Dance Table
CREATE TABLE Dance(Dance_Id int Primary Key, First_Name varchar(200) NOT NULL, Last_Name varchar(200) NOT NULL, Email nvarchar(500) unique NOT NULL,
Phone_Number int NOT NULL, Is_this_Your_First_Class varchar(100) NOT NULL);

DESC Dance;


-- Student Table
CREATE TABLE Student(Stud_Id int Primary Key, Stud_Name varchar(200) NOT NULL, Registred_Date date DEFAULT (current_date()), Dept varchar(200));

DESC Student;

INSERT INTO Student (Stud_Id, Stud_Name, Registred_Date, Dept)
VALUES (1, 'Raj', '2025-05-06', 'IT'), 
		(2, 'Nitin', '2026-07-04', 'Maths'), 
        (3, 'Patik', '2026-10-06', 'IT'), 
        (4, 'Keshav', '2025-05-08', 'Hindi');

-- Registred_Date taken DEFAULT 
INSERT INTO Student (Stud_Id, Stud_Name, Dept)
VALUES (5, 'Priya', 'Bio');
        
SELECT * FROM Student;

-- SQL_Assignment_03_PART_02

-- Department Table
CREATE TABLE Department(Dept_Id int Primary Key, Dept_Name varchar(250) NOT NULL unique);

DESC Department;

CREATE TABLE Employee(Emp_Id Int Primary Key, Emp_Name varchar(255) NOT NULL, Salary decimal(10, 2) check (Salary>0) NOT NULL, 
  Dept_Id INT NOT NULL, Foreign Key (Dept_Id) REFERENCES Department(Dept_Id));

DESC Employee;

INSERT INTO Department (Dept_Id, Dept_Name)
VALUES (1, 'IT'), (2, 'Maths'), (3, 'Hindi');

SELECT * FROM Department;

INSERT INTO Employee (Emp_Id, Emp_Name, Salary, Dept_Id )
VALUES (101, 'Raj', 30000.50, 1), (102, 'Nitin', 350000, 2), (103, 'Keshav', 250000, 3);

SELECT * FROM Employee;

-- Check constraint 'employee_chk_1' is violated.
INSERT INTO Employee (Emp_Id, Emp_Name, Salary, Dept_Id )
VALUES (104, 'Sam', 0, 4);

-- Cannot add or update a child row: a foreign key constraint fails (`shop_db`.`employee`, CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Dept_Id`) REFERENCES `department` (`Dept_Id`))	
INSERT INTO Employee (Emp_Id, Emp_Name, Salary, Dept_Id )
VALUES (104, 'Sam', 350000, 4);

-- Duplicate entry '103' for key 'employee.PRIMARY'
INSERT INTO Employee (Emp_Id, Emp_Name, Salary, Dept_Id )
VALUES (103, 'Sam', 350000, 1);

-- Column 'Emp_Name' cannot be null
INSERT INTO Employee (Emp_Id, Emp_Name, Salary, Dept_Id )
VALUES (104, NULL, 350000, 1);