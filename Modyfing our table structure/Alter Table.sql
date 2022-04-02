-- Create the database homework2Database and work inside it

CREATE DATABASE homework2Database;
USE homework2Database;

-- 1. Create the product table and store products
-- The products will have a numeric type id, a name and a double XX.YZ price.
-- Delete the price column from the table.

CREATE TABLE product(
id INT,
p_name VARCHAR(30),
p_price DECIMAL(4,2)
);

SELECT * FROM product;
ALTER TABLE product DROP p_price;

-- 2. Create the people table to store people.
-- People will habe a numeric type ID, a name, a phone number, a date of birth, and a height.
-- Add a column representing the person's gender(M or F)
-- And a column to represent the person's IQ.

CREATE TABLE people(
id INT,
p_name VARCHAR(20),
p_telephone_number VARCHAR(10),
p_birthday DATE,
p_height DECIMAL(4,2)
);

SELECT * FROM people;

ALTER TABLE people ADD gender VARCHAR(1);
ALTER TABLE people ADD p_iq INT;
DROP TABLE people;

-- 3. Create the computer table to store computers.
-- Computers will have a brand, a ram memory, a processor and a price.
-- Delete the memory and processor columns.
-- Add the c_color and c_description columns.

CREATE TABLE computer(
brand VARCHAR(20),
ram INT,
processor VARCHAR(20),
price INT
);

SELECT * FROM computer;

ALTER TABLE computer DROP COLUMN ram;
ALTER TABLE computer DROP COLUMN processor;

ALTER TABLE computer ADD c_color VARCHAR(15);
ALTER TABLE computer ADD c_description VARCHAR(100);




