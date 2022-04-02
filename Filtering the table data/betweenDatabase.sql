-- Create the database betweenDatabase and work inside it.
CREATE DATABASE betweenDatabase;
USE betweenDatabase;

DROP DATABASE betweenDatabase;

-- 1. Create the product table to store products.
-- The products will have a numeric type id, a name and the quantity in stock.
-- Enter 5 entries in the table.
-- Read all the data of the products that have limited stock.
-- A product will have limited stock id the quantity in stock is between 1 and 10.

CREATE TABLE product(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_quantity INT
);

INSERT INTO product(p_name, p_quantity) VALUES('Socks', 5);
INSERT INTO product(p_name, p_quantity) VALUES('Laptop', 3);
INSERT INTO product(p_name, p_quantity) VALUES('Tablet', 12);
INSERT INTO product(p_name, p_quantity) VALUES('Sofa', 8);
INSERT INTO product(p_name, p_quantity) VALUES('Playstation', 4);

SELECT * FROM product WHERE p_quantity BETWEEN 1 AND 10;
DROP TABLE product;

-- 2. Create the people table to store people.
-- People will have a numeric type id, a name and an age.
-- Enter 5 entries in the table.
-- Read all the data of people who are minors, using the keyword BETWEEN.
-- Also read all the data of the adults.

CREATE TABLE people(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_age INT
);

INSERT INTO people(p_name, p_age) VALUES('Andy', 30);
INSERT INTO people(p_name, p_age) VALUES('Andrei', 15);
INSERT INTO people(p_name, p_age) VALUES('Miruna', 14);
INSERT INTO people(p_name, p_age) VALUES('Ionut', 17);
INSERT INTO people(p_name, p_age) VALUES('Elena', 25);

SELECT * FROM people WHERE p_age BETWEEN 1 AND 18;
SELECT *FROM people WHERE p_age BETWEEN 18 AND 99;
DROP TABLE people;

-- 3. Create the computer table to store computers.
-- Computers will have a brand, a ram memory and a price.
-- Enter 5 entries in the table.
-- Read the brands of computers that have a ram memory bewteen 4 and 10 inclusive.

CREATE TABLE computer(
c_brand VARCHAR(20),
c_ram INT,
c_price INT
);

INSERT INTO computer VALUES('Asus', 8, 2400);
INSERT INTO computer VALUES('Lenovo', 16, 3600);
INSERT INTO computer VALUES('Apple', 4, 6000);
INSERT INTO computer VALUES('Acer', 6, 2800);
INSERT INTO computer VALUES('Tosihba', 2, 2000);

SELECT c_brand FROM computer WHERE c_ram BETWEEN 4 AND 10;
DROP TABLE computer;