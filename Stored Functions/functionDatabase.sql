-- Create the functionDatabase and work inside it.
CREATE DATABASE functionDatabase;
USE functionDatabase;

DROP DATABASE functionDatabase;

-- 1. Create the car_registration table, which will have the following columns:id, state, number, letters.
-- Enter 5 items in the table.
-- Create a function that returns a concatenation: From our table, the first read column will represent
-- the car_registration id, and the second column will rpresent a single text made up of the 3 elements
-- of our table: state, number and letters.
-- Read the data in the table via the function.

CREATE TABLE car_registration(
id INT PRIMARY KEY AUTO_INCREMENT,
state VARCHAR(30),
c_number INT,
letters VARCHAR(10)
);

INSERT INTO car_registration(state, c_number, letters) VALUES('California', 023, 'ABC');
INSERT INTO car_registration(state, c_number, letters) VALUES('Texas', 883, 'GDF');
INSERT INTO car_registration(state, c_number, letters) VALUES('Washington', 193, 'HVD');
INSERT INTO car_registration(state, c_number, letters) VALUES('Florida', 523, 'RTY');
INSERT INTO car_registration(state, c_number, letters) VALUES('Hawaii', 323, 'SDF');

CREATE FUNCTION completeRegistration (stateInput VARCHAR(30), c_numberInput INT, lettersInput VARCHAR(10))
RETURNS VARCHAR(50) DETERMINISTIC
RETURN CONCAT(stateInput, ' ', c_numberInput, ' ', lettersInput);

SELECT * FROM car_registration;

SELECT id, completeRegistration(state, c_number, letters) AS 'full_registration' FROM car_registration;

DROP FUNCTION completeRegistration;
DROP TABLE car_registration;


-- 2. Create the product table to store products.
-- Our products will have an id, a name and a price in dollars.
-- Create two functions, which return the product value in euros, respectively pounds.
-- Read the product data in the 3 variants: dollars, euros and pounds.
-- (1 $ = 0.91 euro & 1 $ = 0.76 GBP)

CREATE TABLE product(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_price_dollars DECIMAL(5, 2)
);

INSERT INTO product(p_name, p_price_dollars) VALUES ('Gloves', 123.32);
INSERT INTO product(p_name, p_price_dollars) VALUES ('Scarf', 212.92);
INSERT INTO product(p_name, p_price_dollars) VALUES ('Jacket', 412.52);
INSERT INTO product(p_name, p_price_dollars) VALUES ('Pants', 162.32);
INSERT INTO product(p_name, p_price_dollars) VALUES ('Sweatshirts', 912.32);

CREATE FUNCTION convertToEuro(dollarsPrice DECIMAL(5, 2))
RETURNS DECIMAL(5, 2) DETERMINISTIC
RETURN dollarsPrice * 0.91;

CREATE FUNCTION convertToPounds(dollarsPrice DECIMAL(5, 2))
RETURNS DECIMAL(5, 2) DETERMINISTIC
RETURN dollarsPrice * 0.76;

SELECT id, p_name, p_price_dollars FROM product;
SELECT id, p_name, convertToEuro(p_price_dollars) AS 'p_price_euro' FROM product;
SELECT id, p_name, convertToPounds(p_price_dollars) AS 'p_price_pounds' FROM product;

DROP FUNCTION convertToEuro;
DROP FUNCTION convertToPounds;
DROP TABLE product;



