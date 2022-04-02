-- Create and work inside the offsetAndLimitDB database.
CREATE DATABASE offsetAndLimitDB;
USE offsetAndLimitDB;

DROP DATABASE offsetAndLimitDB;

-- 1. Create the cat table to store cats.
-- Cats will have a numeric id, a name and the name of the owne.
-- Enter 5 entries in the table.
-- Read the data of the first 3 cats.

CREATE TABLE cat(
id INT PRIMARY KEY AUTO_INCREMENT,
c_name VARCHAR(20),
c_owne VARCHAR(20)
);

INSERT INTO cat(c_name, c_owne) VALUES('Tom', 'Adrian');
INSERT INTO cat(c_name, c_owne) VALUES('Alice', 'Maria');
INSERT INTO cat(c_name, c_owne) VALUES('Bella', 'Marius');
INSERT INTO cat(c_name, c_owne) VALUES('Mira', 'Florin');
INSERT INTO cat(c_name, c_owne) VALUES('Nala', 'Andy');

SELECT * FROM cat;
SELECT * FROM cat LIMIT 3;
SELECT * FROM cat LIMIT 3 OFFSET 0;

DROP TABLE cat;

-- 2. Create the customer table to store customers.
-- Customers will have a numeric type id, a name and a budget.
-- Enter 5 entries in the table.
-- Starting from the second position, read the data of all clients with a budget greater than 100.

CREATE TABLE customer(
id INT PRIMARY KEY AUTO_INCREMENT,
c_name VARCHAR(20),
c_budget INT
);

INSERT INTO customer(c_name, c_budget) VALUES('Andrei', 3000);
INSERT INTO customer(c_name, c_budget) VALUES('Mihai', 4000);
INSERT INTO customer(c_name, c_budget) VALUES('Andrew', 5000);
INSERT INTO customer(c_name, c_budget) VALUES('Ana', 5000);
INSERT INTO customer(c_name, c_budget) VALUES('Maria', 6000);

SELECT * FROM customer WHERE c_budget >100 LIMIT 100 OFFSET 2;

DROP TABLE customer;

-- 3. Create the menu table to store products.
-- All products will have a name and a price.
-- Enter 8 entries in the table.
-- Read all our products in 3-item pages.

CREATE TABLE menu(
m_name VARCHAR(20),
m_price INT
);

INSERT INTO menu VALUES('Pizza', 300);
INSERT INTO menu VALUES('Burger', 200);
INSERT INTO menu VALUES('Cheeseburger', 250);
INSERT INTO menu VALUES('Salmon', 800);
INSERT INTO menu VALUES('Veggies', 40);
INSERT INTO menu VALUES('Meat', 140);
INSERT INTO menu VALUES('Lasagna', 230);
INSERT INTO menu VALUES('Coca Cola', 10);

SELECT * FROM menu LIMIT 3 OFFSET 0;
SELECT * FROM menu LIMIT 3 OFFSET 3;
SELECT * FROM menu LIMIT 3 OFFSET 6;

DROP TABLE menu;


