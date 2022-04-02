-- Create the countDB database and work inside it.
CREATE DATABASE countDB;
USE countDB;

DROP DATABASE countDB;

-- 1 Create the product table to store products.
-- The products will have a numeric type id, a name and a price.
-- Enter 5 entries in the table.
-- Find the total number of products in stock.

CREATE TABLE product(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_price INT
);

INSERT INTO product(p_name, p_price) VALUES('Gloves', 108);
INSERT INTO product(p_name, p_price) VALUES('Shoes', 10);
INSERT INTO product(p_name, p_price) VALUES('T-shirt', 50);
INSERT INTO product(p_name, p_price) VALUES('Jacket', 200);
INSERT INTO product(p_name, p_price) VALUES('Pants', 100);

SELECT COUNT(id) FROM product;

DROP TABLE product;

-- 2. Create the computer table to store computers.
-- The computer will have a brand and a ram memory.
-- Enter 10 entries in the table.
-- Find out how many dell laptops with a RAM memory larger than 4 GB exist in the table.

CREATE TABLE product(
id INT PRIMARY KEY AUTO_INCREMENT,
p_brand VARCHAR(20),
ram INT
);

INSERT INTO product(p_brand, ram) VALUES('Asus', 16);
INSERT INTO product(p_brand, ram) VALUES('Acer', 8);
INSERT INTO product(p_brand, ram) VALUES('Lenovo', 8);
INSERT INTO product(p_brand, ram) VALUES('Asus', 2);
INSERT INTO product(p_brand, ram) VALUES('Apple', 4);
INSERT INTO product(p_brand, ram) VALUES('Lenovo', 2);
INSERT INTO product(p_brand, ram) VALUES('Dell', 8);
INSERT INTO product(p_brand, ram) VALUES('Apple', 2);
INSERT INTO product(p_brand, ram) VALUES('Dell', 32);
INSERT INTO product(p_brand, ram) VALUES('Asus', 3);

SELECT COUNT(id) FROM product WHERE p_brand = 'DELL' AND ram >= 8;

DROP TABLE product;