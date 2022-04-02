-- Create and work inside the whereDB database;
CREATE DATABASE whereDB;
USE whereDB;
DROP DATABASE whereDB;

-- 1. Create the product table to store products.
-- The products will have a numeric type id, a name and the customer's name.
-- Enter 5 entries in the table.
-- Read all the data of the products bought by "John".

CREATE TABLE product(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
c_name VARCHAR(20)
);

INSERT INTO product(p_name, c_name) VALUES('Yogurt', 'John');
INSERT INTO product(p_name, c_name) VALUES('Laptop','John');
INSERT INTO product(p_name, c_name) VALUES('IPad','Mirela');
INSERT INTO product(p_name, c_name) VALUES('Peanuts', 'Anton');
INSERT INTO product(p_name, c_name) VALUES('Jacket', 'Maria');
SELECT * FROM product;
SELECT * FROM product WHERE c_name = 'John';

DROP TABLE product;

-- 2. Create the people table to store people.
-- People will have a numeric type id, a name and a description.
-- If a user does not specify a description, the text "unspecified" will be entered on the column.
-- Enter 5 entries in the table.
-- Read all data of people who have an unspecified description.

CREATE TABLE people(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_description VARCHAR(100) DEFAULT 'Unspecified'
);

INSERT INTO people(p_name, p_description) VALUES('Andrei', 'A very good person');
INSERT INTO people(p_name, p_description) VALUES('Mihai', 'A very constructive person');
INSERT INTO people(p_name) VALUES('Vasile');
INSERT INTO people(p_name) VALUES('Marius');
INSERT INTO people(p_name) VALUES('Elena');

SELECT * FROM people;
SELECT * FROM people WHERE p_description = 'Unspecified';
DROP TABLE people;

-- 3. Create the computer table to store computers.
-- Computers will have a brand, a ram memory, and a processor.
-- Enter 5 entries in the table.
-- Read all Samsung computer date.
-- Read all data on computers with a ram memory less than 8.

CREATE TABLE computer(
brand VARCHAR(20),
ram INT,
processor VARCHAR(20)
);

INSERT INTO computer(brand, ram, processor) VALUES('Samsung', 4, 'Intel i3');
INSERT INTO computer(brand, ram, processor) VALUES('Samsung', 6, 'Intel i5');
INSERT INTO computer(brand, ram, processor) VALUES('Asus', 8, 'Intel i7');
INSERT INTO computer(brand, ram, processor) VALUES('Samsung', 4, 'Intel i5');
INSERT INTO computer(brand, ram, processor) VALUES('Lenovo', 4, 'Intel i3');

SELECT * FROM computer WHERE brand= 'Samsung';
SELECT * FROM computer WHERE ram <8;
SELECT brand FROM computer WHERE ram <8;

DROP TABLE computer;
