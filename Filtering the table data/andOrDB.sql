CREATE DATABASE andOrDB;
USE andOrDB;

DROP DATABASE andOrDB;

-- 1. Create the product table to store products.
-- The products will have a numeric type id, a name and the customer's name.
-- Enter 5 entries in the table.
-- Read all the data of the products bought by Andrew or Stevan.

CREATE TABLE product(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
c_name VARCHAR(20)
);

INSERT INTO product(p_name, c_name) VALUES('Gloves','Andrew');
INSERT INTO product(p_name, c_name) VALUES('Books','Stevan');
INSERT INTO product(p_name, c_name) VALUES('Laptop','Stevan');
INSERT INTO product(p_name, c_name) VALUES('Playstation','Andrew');
INSERT INTO product(p_name, c_name) VALUES('Tv','Paul');

SELECT * FROM product WHERE c_name ='Andrew' OR c_name = 'Stevan';
DROP TABLE product;

-- 2. Create the people table to store people.
-- People will have a numeric type id, a name, a phone number and an email.
-- Enter 5 entries in the table.
-- Read all data for people with id 1, 2 or 3.

CREATE TABLE people(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(25),
p_telephone VARCHAR(10),
p_email VARCHAR(40)
);

INSERT INTO people(p_name, p_telephone, p_email) VALUES('Matei','0757588988', 'matei_1@yahoo.com');
INSERT INTO people(p_name, p_telephone, p_email) VALUES('Andrei','0787588988', 'andrei_1@yahoo.com');
INSERT INTO people(p_name, p_telephone, p_email) VALUES('Mircea','0747588988', 'mircea_1@yahoo.com');
INSERT INTO people(p_name, p_telephone, p_email) VALUES('Vasile','0737565588', 'vasile_1@yahoo.com');
INSERT INTO people(p_name, p_telephone, p_email) VALUES('Elena','0759588988', 'elena_1@yahoo.com');

Select * FROM people WHERE id = 1 OR id = 2 OR id = 3;
SELECT * FROM people WHERE id <= 3;

DROP TABLE people;

-- 3. Create the computer table to store computers.
-- The computers will have a brand, a ram memory and a processor.
-- Enter 5 entries in the table.
-- Read the computer data that have the 'i3' processor and 8 ram memory.

CREATE TABLE computer(
c_brand VARCHAR(20),
c_ram INT,
c_processor VARCHAR(10)
);

INSERT INTO computer VALUES('Asus', 8, 'i3');
INSERT INTO computer VALUES('Acer', 8, 'i5');
INSERT INTO computer VALUES('Apple', 8, 'i7');
INSERT INTO computer VALUES('Lenovo', 16, 'i5');
INSERT INTO computer VALUES('Asus', 8, 'i3');

SELECT * FROM computer WHERE c_processor = 'i3' AND c_ram = 8;

DROP TABLE computer;

