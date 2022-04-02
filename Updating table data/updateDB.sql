-- Create the updateDB database and work inside it.
CREATE DATABASE updateDB;
USE updateDB;

DROP TABLE updateDB;

-- 1. Create the product table to store products.
-- The products will have a numeric type id, a name and a price.
-- Enter 5 entries in the table.
-- Change the price of all products called  "Pants"

CREATE TABLE product(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_price INT
);

INSERT INTO product(p_name, p_price) VALUES('Gloves', 150);
INSERT INTO product(p_name, p_price) VALUES('Pants', 1000);
INSERT INTO product(p_name, p_price) VALUES('Pants', 500);
INSERT INTO product(p_name, p_price) VALUES('Laptop', 3000);
INSERT INTO product(p_name, p_price) VALUES('Playstation', 3500);

UPDATE product SET p_price = 1000 WHERE p_name = 'Pants';
UPDATE product SET p_price = 1 WHERE p_name LIKE '%Pants%';

SELECT * FROM product;
DROP TABLE product;

-- 2. Create the people table to store people.
-- People will have a numeric type id, a name and a profession.
-- Enter 5 entries in the table.
-- Change the job of the person with id 3.

CREATE TABLE people(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_profession VARCHAR(30)
);

INSERT INTO people(p_name, p_profession) VALUES('Andrei', 'Doctor');
INSERT INTO people(p_name, p_profession) VALUES('Marius', 'Policeman');
INSERT INTO people(p_name, p_profession) VALUES('Mirela', 'Accountant');
INSERT INTO people(p_name, p_profession) VALUES('Vasile', 'Fireman');
INSERT INTO people(p_name, p_profession) VALUES('Anton', 'Call Center');

UPDATE people SET p_profession = 'Software Tester' WHERE id = 3;
SELECT * FROM people;

DROP TABLE people;

-- 3. Create the computer table to store computers.
-- Each computer will have a brand, a ram memory and a processor.
-- Enter 5 entries in the table.
-- All Samsung, Asus and Apple computers have been upgraded. They will have 24 ram.

CREATE TABLE computer(
brand VARCHAR(20),
ram INT,
processor VARCHAR(20)
);

INSERT INTO computer VALUES('Asus', 8, 'Intel i3');
INSERT INTO computer VALUES('Samsung', 16, 'Intel i7');
INSERT INTO computer VALUES('Apple', 8, 'Intel i5');
INSERT INTO computer VALUES('Acer', 8, 'Intel i5');
INSERT INTO computer VALUES('Samsung', 16, 'Intel i7');

SELECT * FROM computer;

UPDATE computer SET ram = 24 WHERE brand IN('Samsung', 'Asus', 'Apple');

DROP TABLE computer;




