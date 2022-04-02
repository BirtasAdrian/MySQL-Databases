-- Create coalesceDB database and work inside it.
CREATE DATABASE coalesceDB;
USE coalesceDB;

DROP DATABASE coalesceDB;

-- 1. Create the task table to store tasks.
-- The tasks will have a name, a description and a deadline(the number of days to be solved).
-- Enter 5 entries in the table.
-- Read all the items, and if the task description is not specified, trat this case.

CREATE TABLE task(
t_name VARCHAR(30),
t_description VARCHAR(100),
t_deadline INT
);

INSERT INTO task VALUES('Insert user', 'Insert users in the database', 2);
INSERT INTO task VALUES('Fix login screen', 'The login screen does not work', 2);
INSERT INTO task VALUES('Implement radis cache', null, 2);
INSERT INTO task VALUES('Create aws lambda function A', 'it should do...', 2);
INSERT INTO task VALUES('Create aws lambda function B', null, 2);

SELECT t_name, COALESCE(t_description, 'Description not specified.') AS 't_description', t_deadline FROM task;
DROP TABLE task;


-- 2. Create the customer table to store clients.
-- Customers will have a numeric type id, a name and a phone number. The name must be entered.
-- Enter 5 entries in the table.
-- Read all data in the table, and if phone number is not specified, return "Phone not specified".

CREATE TABLE customer(
id INT PRIMARY KEY AUTO_INCREMENT,
c_name VARCHAR(20) NOT NULL,
c_telephone VARCHAR(10)
);

INSERT INTO customer (c_name, c_telephone) VALUES('Customer 1', null);
INSERT INTO customer (c_name, c_telephone) VALUES('Customer 2', null);
INSERT INTO customer (c_name, c_telephone) VALUES('Customer 3', '0757588656');
INSERT INTO customer (c_name, c_telephone) VALUES('Customer 4', null);
INSERT INTO customer (c_name, c_telephone) VALUES('Customer 5', '0755654123');

SELECT id, c_name, COALESCE(c_telephone, 'Telephone not specified') AS 'c_telephone' FROM customer;
DROP TABLE customer;

-- 3. Create the product table. The products will have an id, a name and a price.
-- Enter 5 entries in the table.
-- Read all product data. If the product does not have the specified price, 1000 will be returned.

CREATE TABLE product(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(30),
p_price INT
);

INSERT INTO product(p_name, p_price) VALUES('Shoes', 1900);
INSERT INTO product(p_name, p_price) VALUES('Gloves', 7000);
INSERT INTO product(p_name, p_price) VALUES('Jacket', null);
INSERT INTO product(p_name, p_price) VALUES('Pants', null);
INSERT INTO product(p_name, p_price) VALUES('Shoes2', 3000);

SELECT p_name, COALESCE(p_price, 1000) AS 'p_price' FROM product;




