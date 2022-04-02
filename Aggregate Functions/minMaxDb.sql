-- Create and work inside the minMaxDb database.
CREATE DATABASE minMaxDb;
USE minMaxDb;

DROP DATABASE minMaxDb;

-- 1 Create the employee table to store employees.
-- Employees will have a numeric type id, a name and a salary.
-- Enter 5 entries in the table.
-- Find out what is the highest salary given to an employee by our company.

CREATE TABLE employee(
id INT PRIMARY KEY AUTO_INCREMENT,
e_name VARCHAR(20),
e_salary INT
);

INSERT INTO employee(e_name, e_salary) VALUES('Andrei', 3000);
INSERT INTO employee(e_name, e_salary) VALUES('Vlad', 2500);
INSERT INTO employee(e_name, e_salary) VALUES('Elena', 3200);
INSERT INTO employee(e_name, e_salary) VALUES('Marius', 4200);
INSERT INTO employee(e_name, e_salary) VALUES('Ioana', 5200);

SELECT MAX(e_salary) FROM employee;

DROP TABLE employee;

-- 2 Create a clothes table to store clothes.
-- Each coat product have a name, a material and a price.
-- Enter 5 entries in the table
-- Find out what is the lowest and highest price of the products in our database.

CREATE TABLE clothes(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_material VARCHAR(20),
p_price INT 
);


INSERT INTO clothes(p_name, p_material, p_price) VALUES('Gloves', 'Wool', 50);
INSERT INTO clothes(p_name, p_material, p_price) VALUES('T-shirt', 'Cotton', 80);
INSERT INTO clothes(p_name, p_material, p_price) VALUES('Jacket', 'Nylon', 130);
INSERT INTO clothes(p_name, p_material, p_price) VALUES('T-shirt', 'Polyester', 140);
INSERT INTO clothes(p_name, p_material, p_price) VALUES('Socks', 'Cotton', 10);

SELECT MIN(p_price) FROM clothes;
SELECT MAX(p_price) FROM clothes;

DROP TABLE clothes;

-- 3 Create the genius table to store people.
-- Each person will have an id, a name and an iq.
-- Enter 5 entries in the table.
-- Find out which is the largest and smallest iq in our table.

CREATE TABLE genius(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_iq INT
);

INSERT INTO genius(p_name, p_iq) VALUES('Person1', 100);
INSERT INTO genius(p_name, p_iq) VALUES('Person2', 80);
INSERT INTO genius(p_name, p_iq) VALUES('Person3', 70);
INSERT INTO genius(p_name, p_iq) VALUES('Person4', 110);
INSERT INTO genius(p_name, p_iq) VALUES('Person5', 60);

SELECT MIN(p_iq) FROM genius;
SELECT MAX(p_iq) FROM genius;

DROP TABLE genius;

