-- Lab 1: Create a new database named school_db and a table called students with the 
-- following columns: student_id, student_name, age, class, and address. 
-- Lab 2: Insert five records into the students table and retrieve all records using the SELECT statement.

CREATE DATABASE school_db;
USE school_db;
SET SQL_SAFE_UPDATES = 0;


CREATE TABLE students(
student_id INT PRIMARY KEY,
student_name VARCHAR(20),
age INT,
class VARCHAR(5),
address VARCHAR(20)
);

INSERT INTO students
(student_id,student_name,age,class,address)
VALUES
(101,"AYUSH",20,"A1","Surat"),
(102,"Umesh",21,"A2","Ahemdabad"),
(103,"Bhavya",19,"A3","Amreli"),
(104,"Raj",20,"A2","Rajkot"),
(105,"Zeel",22,"A3","Surat");

SELECT * FROM STUDENTS;


-- Lab 1: Write SQL queries to retrieve specific columns (student_name and age) from the 
-- students table. 
-- Lab 2: Write SQL queries to retrieve all students whose age is greater than 10.

SELECT student_name , age FROM students;

SELECT * FROM STUDENTS
WHERE AGE > 10;


-- Lab 1: Create a table teachers with the following columns: teacher_id (Primary Key), 
-- teacher_name (NOT NULL), subject (NOT NULL), and email (UNIQUE). 
-- Lab 2: Implement a FOREIGN KEY constraint to relate the teacher_id from the 
-- teachers table with the students table.

CREATE TABLE teachers(
Teacher_id INT PRIMARY KEY,
Teacher_name VARCHAR(20) NOT NULL,
Subject VARCHAR(20) NOT NULL,
email VARCHAR(50) UNIQUE);

ALTER TABLE students
ADD teacher_id INT;

ALTER TABLE students
ADD CONSTRAINT fk_teacher
FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id);



-- Lab 1: Drop the teachers table from the school_db database. 
-- Lab 2: Drop the students table from the school_db database and verify that the table has been removed.

DROP TABLE teachers;
DROP TABLE students;

DESC teachers;



-- Lab 1: Create two new users user1 and user2 and grant user1 permission to SELECT from the courses table. 
-- Lab 2: Revoke the INSERT permission from user1 and give it to user2.

CREATE DATABASE IF NOT EXISTS users_db;
USE users_db;

CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(20),
    surname VARCHAR(20)
);

INSERT INTO users VALUES (1, 'Alice', 'Johnson');
INSERT INTO users VALUES (2, 'Bob', 'Smith');

CREATE USER IF NOT EXISTS 'user3'@'localhost' IDENTIFIED BY '1234';
CREATE USER IF NOT EXISTS 'user4'@'localhost' IDENTIFIED BY '1234';

GRANT SELECT ON users_db.users TO 'user3'@'localhost';

REVOKE INSERT ON users_db.users FROM 'user3'@'localhost';
GRANT INSERT ON users_db.users TO 'user4'@'localhost';


FLUSH PRIVILEGES;


-- Lab 1: Create a table courses with columns: course_id, course_name, and 
-- course_credits. Set the course_id as the primary key. 
-- Lab 2: Use the CREATE command to create a database university_db.

SET SQL_SAFE_UpDATES = 0;


CREATE DATABASE IF NOT  EXISTS university_db;

USE university_db;
SET SQL_SAFE_UPDATES = 0;


CREATE TABLE courses(
course_id INT PRIMARY KEY,
course_name VARCHAR(20),
course_credits VARCHAR(5)
);


-- Lab 1: Modify the courses table by adding a column course_duration using the ALTER command. 
-- Lab 2: Drop the course_credits column from the courses table.

ALTER TABLE courses
ADD course_duration INT;

ALTER TABLE courses
DROP course_credits;


-- Lab 1: Insert three records into the courses table using the INSERT command. 
-- Lab 2: Update the course duration of a specific course using the UPDATE command. 
-- Lab 3: Delete a course with a specific course_id from the courses table using the DELETE command.

select * FROM courses;


INSERT INTO courses
(course_id,course_name,course_duration)
VALUES
(201, 'Mathematics', 4),
(202, 'Computer Science', 3),
(203, 'Physics', 4);

UPDATE courses
SET course_duration = 5 
WHERE course_name = 'Physics';

DELETE FROM courses
WHERE course_id = 203;

SELECT * FROM courses;



-- Lab 1: Retrieve all courses from the courses table using the SELECT statement. 
-- Lab 2: Sort the courses based on course_duration in descending order using ORDER BY. 
-- Lab 3: Limit the results of the SELECT query to show only the top two courses using LIMIT.


INSERT INTO courses (course_id, course_name, course_duration)
VALUES
(204, 'Chemistry', 4),
(205, 'Biology', 3),
(206, 'English Literature', 2),
(207, 'History', 3),
(208, 'Economics', 4);

SELECT * FROM courses;

SELECT * FROM courses ORDER BY course_duration DESC ;
SELECT * FROM courses ORDER BY course_duration DESC LIMIT 2;



-- Lab 1: Insert a few rows into the courses table and use COMMIT to save the changes. 
-- Lab 2: Insert additional rows, then use ROLLBACK to undo the last insert operation. 
-- Lab 3: Create a SAVEPOINT before updating the courses table, and use it to roll back specific changes.


INSERT INTO courses (course_id, course_name, course_duration)
VALUES 
(211, 'Sociology', 3),
(212, 'Psychology', 4);

COMMIT;

SELECT * FROM courses;

INSERT INTO courses (course_id, course_name, course_duration)
VALUES 
(209, 'Philosophy', 3),
(210, 'Art', 2);

ROLLBACK;
SELECT * FROM courses;

START TRANSACTION;
INSERT INTO courses (course_id, course_name, course_duration)
VALUES (215, 'Music', 2);

ROLLBACK;
SELECT * FROM courses;

INSERT INTO courses (course_id, course_name, course_duration)
VALUES 
(213, 'Geography', 3),
(214, 'Political Science', 4);

START TRANSACTION;

SAVEPOINT before_update;

UPDATE courses SET course_duration = 6 WHERE course_name = 'Geography';

ROLLBACK TO SAVEPOINT before_update;

-- Lab 1: Create two tables: departments and employees. Perform an INNER JOIN to 
-- display employees along with their respective departments. 
-- Lab 2: Use a LEFT JOIN to show all departments, even those without employees.

CREATE DATABASE IF NOT EXISTS companyDB;
USE companyDB;


CREATE TABLE departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);


CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(100) NOT NULL,
    job_title VARCHAR(100),
    salary DECIMAL(10,2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);


INSERT INTO departments (dept_name, location) VALUES
('HR', 'New York'),
('IT', 'San Francisco'),
('Finance', 'Chicago');

INSERT INTO employees (emp_name, job_title, salary, dept_id) VALUES
('Amit Sharma', 'HR Manager', 60000, 1),
('Neha Verma', 'Software Engineer', 75000, 2),
('Raj Patel', 'Accountant', 55000, 3),
('Sita Mehta', 'System Analyst', 72000, 2);

-- Employees with their respective department names
SELECT 
    e.emp_id,
    e.emp_name,
    e.job_title,
    e.salary,
    d.dept_name,
    d.location
FROM employees e
INNER JOIN departments d
    ON e.dept_id = d.dept_id;

-- All departments with employees (if any)
SELECT 
    d.dept_id,
    d.dept_name,
    d.location,
    e.emp_name,
    e.job_title,
    e.salary
FROM departments d
LEFT JOIN employees e
    ON d.dept_id = e.dept_id;
    
    
    
-- Lab 1: Group employees by department and count the number of employees in each 
-- department using GROUP BY. 

-- Number of employees in each department
SELECT 
    d.dept_name,
    COUNT(e.emp_id) AS total_employees
FROM departments d
LEFT JOIN employees e 
    ON d.dept_id = e.dept_id
GROUP BY d.dept_name;



-- Lab 2: Use the AVG aggregate function to find the average salary of employees in each department. 

-- Average salary in each department
SELECT 
    d.dept_name,
    AVG(e.salary) AS avg_salary
FROM departments d
LEFT JOIN employees e 
    ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- Lab 1: Write a stored procedure to retrieve all employees from the employees table based on department. 

DELIMITER $$

CREATE PROCEDURE GetEmployeesByDepartment(IN p_dept_id INT)
BEGIN
    SELECT 
        emp_id,
        emp_name,
        job_title,
        salary
    FROM employees
    WHERE dept_id = p_dept_id;
END $$

DELIMITER ;

CALL GetEmployeesByDepartment(2);  

-- Lab 2: Write a stored procedure that accepts course_id as input and returns the course details. 

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    course_credits INT
);

DELIMITER $$

CREATE PROCEDURE GetCourseDetails(IN p_course_id INT)
BEGIN
    SELECT 
        course_id,
        course_name,
        course_credits
    FROM courses
    WHERE course_id = p_course_id;
END $$

DELIMITER ;

CALL GetCourseDetails(101);  

 -- Create a view to show all employees along with their department names. 
 
 CREATE VIEW EmployeeDepartmentView AS
SELECT 
    e.emp_id,
    e.emp_name,
    e.job_title,
    e.salary,
    d.dept_name
FROM employees e
INNER JOIN departments d 
    ON e.dept_id = d.dept_id;

 SELECT * FROM EmployeeDepartmentView;

 
-- Lab 2: Modify the view to exclude employees whose salaries are below $50,000. 



CREATE VIEW EmployeeDepartmentViews AS
SELECT 
    e.emp_id,
    e.emp_name,
    e.job_title,
    e.salary,
    d.dept_name
FROM employees e
INNER JOIN departments d 
    ON e.dept_id = d.dept_id
WHERE e.salary >= 50000;

SELECT * FROM EmployeeDepartmentViews;
