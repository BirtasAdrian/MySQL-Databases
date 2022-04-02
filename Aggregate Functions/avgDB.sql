-- Create and work inside the avgDb database.

CREATE DATABASE avgDB;
USE avgDB;

DROP DATABASE avgDB;

-- 1 Create the employee table to store employees.
-- Employees will have a numeric type id, a name and a productivity, which can have values between 1 and 100.
-- Enter 5 entries in the table.
-- Find out the average productivity of the company.

CREATE TABLE employee(
id INT PRIMARY KEY AUTO_INCREMENT,
e_name VARCHAR(20),
e_productivity INT
);

INSERT INTO employee(e_name, e_productivity) VALUES('Emp1', 100 );
INSERT INTO employee(e_name, e_productivity) VALUES('Emp2', 80 );
INSERT INTO employee(e_name, e_productivity) VALUES('Emp3', 77 );
INSERT INTO employee(e_name, e_productivity) VALUES('Emp4', 100 );
INSERT INTO employee(e_name, e_productivity) VALUES('Emp5', 80 );

SELECT AVG(e_productivity) FROM employee;

DROP TABLE employee;

-- 2 Create the tourist table to store tourists.
-- Tourists will have an ID, a name, a country of origin and an age.
-- Enter 5 entries in the table.
-- Find out the average age of American tourists.

CREATE TABLE tourist(
id INT PRIMARY KEY AUTO_INCREMENT,
t_name VARCHAR(20),
t_country VARCHAR(30),
t_age INT
);

INSERT INTO tourist(t_name, t_country, t_age) VALUES('Tourist1', 'America', 30);
INSERT INTO tourist(t_name, t_country, t_age) VALUES('Tourist2', 'Brasil', 25);
INSERT INTO tourist(t_name, t_country, t_age) VALUES('Tourist3', 'America', 22);
INSERT INTO tourist(t_name, t_country, t_age) VALUES('Tourist4', 'Romania', 55);
INSERT INTO tourist(t_name, t_country, t_age) VALUES('Tourist5', 'America', 44);

SELECT AVG(t_age) FROM tourist WHERE t_country = 'America';

DROP TABLE tourist;

-- 3 Create the student table to store students.
-- Each student will have an ID, a name and a general average.
-- Enter 5 entries in the table.
-- Find the general average of the whole school.

CREATE TABLE student(
id INT PRIMARY KEY AUTO_INCREMENT,
s_name VARCHAR(20),
s_average INT
);

INSERT INTO student(s_name, s_average) VALUES('Student1', 8.50);
INSERT INTO student(s_name, s_average) VALUES('Student2', 9);
INSERT INTO student(s_name, s_average) VALUES('Student3', 7.50);
INSERT INTO student(s_name, s_average) VALUES('Student4', 6);
INSERT INTO student(s_name, s_average) VALUES('Student5', 10);


SELECT AVG(s_average) FROM student;

DROP TABLE student;


