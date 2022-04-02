-- Create database inDatabase and work inside it.

CREATE DATABASE inDatabase;
USE inDatabase;

DROP DATABASE inDatabase;

-- 1. Create the dog table to store dogs.
-- Dogs will have a numeric type id, a name and a breed.
-- Enter 5 entries in the table.
-- Read all data we have on German Shepards, Huskies and  Pugs.

CREATE TABLE dog(
id INT PRIMARY KEY AUTO_INCREMENT,
d_name VARCHAR(20),
d_breed VARCHAR(20)
);

INSERT INTO dog(d_name, d_breed) VALUES('Puky','German Shepard');
INSERT INTO dog(d_name, d_breed) VALUES('Rex','Pug');
INSERT INTO dog(d_name, d_breed) VALUES('Mike','German Shepard');
INSERT INTO dog(d_name, d_breed) VALUES('Snow','Huskie');
INSERT INTO dog(d_name, d_breed) VALUES('Azor','Golden Retriever');

SELECT * FROM dog;
SELECT * FROM dog WHERE d_breed IN('German Shepard', 'Huskie', 'Pug');
DROP TABLE dog;

-- 2. Create the student table to store students.
-- Students will have a numeric type id, a name and a grade.
-- Enter 5 entries in the table.
-- Read all the data for students with grades between 2 and 6.

CREATE TABLE student(
id INT PRIMARY KEY AUTO_INCREMENT,
s_name VARCHAR(20),
s_grade INT
);

INSERT INTO student(s_name, s_grade) VALUES('Andrei', 2);
INSERT INTO student(s_name, s_grade) VALUES('Mircea', 3);
INSERT INTO student(s_name, s_grade) VALUES('Mihai', 5);
INSERT INTO student(s_name, s_grade) VALUES('Anton', 10);
INSERT INTO student(s_name, s_grade) VALUES('Vasile', 9);

SELECT * FROM student WHERE s_grade IN(2, 3, 4, 5, 6);
DROP TABLE student;

-- 3. Create the employee table to store employees.
-- Enployees will have an id, a name, a department and a salary.
-- Enter 5 entries in the table.
-- Read the salaries of employees in the java and sql departments,

CREATE TABLE employee(
id INT PRIMARY KEY AUTO_INCREMENT,
e_name VARCHAR(20),
e_department VARCHAR(20),
e_salary INT
);

INSERT INTO employee(e_name, e_department, e_salary) VALUES('Andy', 'Java', 4500);
INSERT INTO employee(e_name, e_department, e_salary) VALUES('Andrei', 'Sql', 4000);
INSERT INTO employee(e_name, e_department, e_salary) VALUES('Mihai', 'Java', 5000);
INSERT INTO employee(e_name, e_department, e_salary) VALUES('Ioana', 'Sql', 3800);
INSERT INTO employee(e_name, e_department, e_salary) VALUES('Elena', 'Marketing', 4200);

SELECT e_salary FROM employee WHERE e_department IN('Java', 'Sql');
DROP TABLE employee;
