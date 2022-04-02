-- Create and work inside the notNullDb database
CREATE DATABASE notNullDb;
USE notNullDb;

-- 1. Create products table to store products
-- The products will have a numeric type id, a name and a double XX.YZ price.
-- The name must always be specified.
-- Enter an entry in the table without specifying the product name
-- Enter an entry in the table specifying only the name and price.

CREATE TABLE product(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20) NOT NULL,
p_price DECIMAL(4,2)
);

INSERT INTO product(p_price) VALUES(22.55);
INSERT INTO product(p_name,p_price) VALUES('Book', 32.55);
SELECT * FROM product;
DROP TABLE porduct;

-- 2. Create the people table to store people
-- People will have a numeric type ID, a name, a phone number, a date of birth and a height.
-- The name and phone number must always be specified.
-- Enter and entry in the table without specifying the name.
-- Enter and entry in the table without specifying the phone number.
-- Enter and entru in the table specifying all the data.

CREATE TABLE people(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(30) NOT NULL,
p_phone_number VARCHAR(10) NOT NULL,
p_birthday VARCHAR(15),
p_height DECIMAL(3,2)
);

INSERT INTO people (p_phone_number, p_birthday, p_height) VALUES('0757588989', '11.03.1997', 1.80);
INSERT INTO people (p_name, p_birthday, p_height) VALUES('Adrian', '11.03.1997', 1.80);
INSERT INTO people(p_name,p_phone_number, p_birthday, p_height) VALUES('Adrian','0757588989','11.03.1997', 1.80);
SELECT * FROM people;
DROP TABLE people;

-- 3. Create the computer table to store computers.
-- Computers will have a brand, a ram memory, a processor and a price.
-- All the data must be specified.
-- Enter 3 entries in the table.

CREATE TABLE computer (
brand VARCHAR(20) NOT NULL,
ram_memory INT NOT NULL,
processor VARCHAR(10) NOT NULL,
price INT NOT NULL
);

INSERT INTO computer VALUES('Apple', 8, 'i5', 8000);
INSERT INTO computer VALUES('Samsung', 16, 'i7', 6000);
INSERT INTO computer VALUES('Acer', 32, 'i7', 5000);
INSERT INTO computer(brand, ram_memory) VALUES('Acer', 26);
SELECT * FROM computer;
DROP TABLE computer;

