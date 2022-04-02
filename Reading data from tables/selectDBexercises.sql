-- Create and work inside the selectDB database.
CREATE DATABASE selectDB;
USE selectDB;

-- 1.Create the product table to store products.
-- The products will have a numeric type id, a name and the customer's name.
-- Enter 5 entries in the table.
-- Read all product data.
-- Read just the id and the name of the products.

CREATE TABLE product(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
c_name VARCHAR(20)
);

INSERT INTO product(p_name, c_name) VALUES('Book','Andrei Popescu');
INSERT INTO product(p_name, c_name) VALUES('Headphones','Mircea Vintila');
INSERT INTO product(p_name, c_name) VALUES('car','Ioan Pop');
INSERT INTO product(p_name, c_name) VALUES('Laptop','Elena Minu');
INSERT INTO product(p_name, c_name) VALUES('Playstation','Ioana Toma');

SELECT * FROM product;
SELECT id, p_name FROM product;
DROP TABLE product;

-- 2. Create the people table to store the people.
-- People will have a numeric type id, a name ,a phone number and an email.
-- Enter 5 entries in the table.
-- Read all persons data.
-- Just read people's phone numbers and emails.

CREATE TABLE people(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
telephone_number VARCHAR(10),
email VARCHAR(50)
);

INSERT INTO people(p_name, telephone_number, email) VALUES('Andrei', '0757588982', 'andrei.1@gmail.com');
INSERT INTO people(p_name, telephone_number, email) VALUES('Mihai', '0757488982', 'mihai.1@gmail.com');
INSERT INTO people(p_name, telephone_number, email) VALUES('Alin', '0757585982', 'alin.1@gmail.com');
INSERT INTO people(p_name, telephone_number, email) VALUES('Elena', '0757588882', 'elena1@gmail.com');
INSERT INTO people(p_name, telephone_number, email) VALUES('Maria', '0766588982', 'maria.1@gmail.com');
SELECT * FROM people;
SELECT telephone_number, email FROM people;
DROP TABLE people;

-- 3. Create the computer table to store the computers.
-- The computers will have a brand, a ram memory, a processor and an ip.
-- Enter 5 entries in the table.
-- Read all computer data.
-- Read just the brand, ram memory and computer processor.

CREATE TABLE computer(
brand VARCHAR(20),
ram INT,
processor VARCHAR(20),
c_ip VARCHAR(20)
);

INSERT INTO computer VALUES('Lenovo', 8, 'Intel i3', '22.45.100.88');
INSERT INTO computer VALUES('Acer', 16, 'Intel i5', '12.44.104.88');
INSERT INTO computer VALUES('Toshiba', 8, 'Intel i7', '65.35.150.77');
INSERT INTO computer VALUES('Samsung', 32, 'Intel i5', '55.44.55.88');
INSERT INTO computer VALUES('APPLE', 16, 'Intel i3', '33.343.100.48');

SELECT * FROM computer;
SELECT brand, ram,processor FROM computer;
DROP TABLE computer;
