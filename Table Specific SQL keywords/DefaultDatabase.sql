-- Create defaultDatabase and work inside it.
CREATE DATABASE defaultDatabase;
USE defaultDatabase;
DROP DATABASE defaultDatabase;

-- 1. Create the product table to store products.
-- The products will have a numeric type id, a name and the customer's name.
-- If the customer name is not specified, the text "IN STOCK" will be entered.

CREATE TABLE product(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(30),
c_name VARCHAR(35) DEFAULT 'IN STOCK'
);

INSERT INTO product(p_name) VALUES('car');
DROP TABLE product;
SELECT * FROM product;

-- 2. Create the people table to store people.
-- People will have a numeric type id, a name, a phone number and an email.
-- If a person does not specify their phone number or email, the text "Unspecified" will be entered.

CREATE TABLE people(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
telephone_number VARCHAR(15) DEFAULT 'Unspecified',
p_email VARCHAR(45) DEFAULT 'Unspecified'
);
INSERT INTO people(p_name, telephone_number) VALUES('Adrian','0757588988');
INSERT INTO people(p_name, p_email) VALUES('Adrian','birtas_adi@yahoo.com');
SELECT * FROM people;
DROP TABLE people;

-- 3. Create the computer table to store computers.
-- The computer will have a brand, a ram memory, a processor and an ip.
-- Any unspecified column will recieve the default value of that data type.

CREATE TABLE computer(
c_brand VARCHAR(20),
c_ram INT,
c_processor VARCHAR(25), 
c_ip VARCHAR(20)
);

INSERT INTO computer(c_ram, c_ip) VALUES(8, '102.89.96.100');
INSERT INTO computer(c_brand, c_ram) VALUES('Lenovo', 8);
INSERT INTO computer(c_processor, c_ip) VALUES('Intel i3', '102.89.96.100');

SELECT * FROM computer;
DROP TABLE computer;
