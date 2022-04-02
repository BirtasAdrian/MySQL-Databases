-- Create the sumDB database and work inside it.
CREATE DATABASE sumDB;
USE sumDB;

DROP DATABASE sumDB;

-- 1 Create the shoes table to store shoes.
-- The shoes will have a numeric type id, a brand and a price.
-- Enter 5 entries in the table.
-- Find the total sum of the products for the Adidas brand.


CREATE TABLE shoes(
id INT PRIMARY KEY AUTO_INCREMENT,
brand VARCHAR(20),
price INT 
);

INSERT INTO shoes(brand, price) VALUES('Adidas', 200);
INSERT INTO shoes(brand, price) VALUES('Nike', 2000);
INSERT INTO shoes(brand, price) VALUES('Puma', 250);
INSERT INTO shoes(brand, price) VALUES('Prada', 2300);
INSERT INTO shoes(brand, price) VALUES('Adidas', 800);

SELECT SUM(price) FROM shoes WHERE brand = 'Adidas';

DROP TABLE shoes;