-- Create the deleteDB database and work inside it.
CREATE DATABASE deleteDB;
USE deleteDB;

DROP DATABASE deleteDB;

-- 1. Create the employee table to store employees.
-- Employees will have a numeric type id, a name and a salary.
-- Enter 5 entries in the table.
-- Delete the first 2 employees.

CREATE TABLE employee(
id INT PRIMARY KEY AUTO_INCREMENT,
e_name VARCHAR(20),
e_salary INT
);

INSERT INTO employee(e_name, e_salary) VALUES('Andrei', 3200);
INSERT INTO employee(e_name, e_salary) VALUES('Vasile', 4200);
INSERT INTO employee(e_name, e_salary) VALUES('Matei', 2200);
INSERT INTO employee(e_name, e_salary) VALUES('Mihai', 3200);
INSERT INTO employee(e_name, e_salary) VALUES('Florin', 3200);

SELECT * FROM employee;

DELETE FROM employee WHERE id = 1;
DELETE FROM employee WHERE id = 2;
DELETE FROM employee WHERE id BETWEEN 1 AND 2;

TRUNCATE TABLE employee;
DROP TABLE employee;

-- 2. Create the people table to store people.
-- People will have a numeric type id, a name and an email. The email must be specified.
-- Enter 5 entries in the table.
-- Delete all people named 'John'

CREATE TABLE people(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_email VARCHAR(50) UNIQUE 
);

INSERT INTO people(p_name, p_email) VALUES('Andrei', 'andrei.1@gmail.com');
INSERT INTO people(p_name, p_email) VALUES('John', 'john.2@gmail.com');
INSERT INTO people(p_name, p_email) VALUES('Alex', 'alex.3@gmail.com');
INSERT INTO people(p_name, p_email) VALUES('John', 'john.4@gmail.com');
INSERT INTO people(p_name, p_email) VALUES('Florin', 'florin.5@gmail.com');

SELECT * FROM people;
DELETE FROM people WHERE p_name = 'john';
DELETE FROM people WHERE id IN(2, 4);

TRUNCATE people;
DROP TABLE people;

-- 3. Create the laptop table to store laptop computers.
-- The laptops will have a brand, a ram memory and a price.
-- Enter 5 entries in the table.
-- Wipe all Samsung laptops under 12 ram.

CREATE TABLE laptop(
brand VARCHAR(20),
ram INT,
price INT
);

INSERT INTO laptop VALUES('Asus', 8, 2500);
INSERT INTO laptop VALUES('Samsung', 8, 3000);
INSERT INTO laptop VALUES('Acer', 16, 3500);
INSERT INTO laptop VALUES('Samsung', 8, 3500);
INSERT INTO laptop VALUES('Samsung', 12, 4500);

SELECT * FROM laptop;
DELETE FROM laptop WHERE brand = 'Samsung' AND ram < 12;

TRUNCATE laptop;
DROP TABLE laptop;




