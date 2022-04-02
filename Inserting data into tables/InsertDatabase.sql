-- Create the insertDatabase and work inside it.
CREATE DATABASE insertDatabase;
USE insertDatabase;

-- 1. Create the product table to store products.
-- The products will have a numeric type id, a name and a description
-- Add 3 products in the table.

CREATE TABLE product(
id INT,
p_name VARCHAR(20),
p_description VARCHAR(100)
);

SELECT * FROM product;
INSERT INTO product VALUES (1, 'Pants', 'Best pants ever');
INSERT INTO product VALUES (2, 'Gloves', 'Warm winter glovs');
INSERT INTO product VALUES (3, 'Jacket', 'This is a nice Jacket');

-- 2. Create the student table to store students.
-- Students will have a numeric type id, a name, a phone humber and a X.YZ average
-- Add 5 students

CREATE TABLE student(
id INT,
 s_name VARCHAR(30),
 s_telephone_number VARCHAR(10),
 s_average DECIMAL(3, 2)
);

SELECT * FROM student;
INSERT INTO student VALUES(1, 'Mircea', '0757588989', 8.77);
INSERT INTO student VALUES(2, 'Adrian', '0777688989', 9.77);
INSERT INTO student VALUES(3, 'Mihai', '0758574989', 7.87);
INSERT INTO student VALUES(4, 'Florin', '0727586989', 6.55);
INSERT INTO student VALUES(5, 'Andrei', '0715587589', 8.88);

-- 3. Create the computer table to store computers.
-- Computers will have a brand, a ram memory. a processor and a price.
-- Add 3 computers in the table, specifying only the brand and processor.
-- Add 3 computers in the table, specifying only the brand and price.

CREATE TABLE computer(
brand VARCHAR(20),
ram INT,
processor VARCHAR(20),
price INT 
);

SELECT * FROM computer;

INSERT INTO computer (brand, processor) VALUES ('Intel', 'i3');
INSERT INTO computer (brand, processor) VALUES ('Intel', 'i5');
INSERT INTO computer (brand, processor) VALUES ('Intel', 'i7');

INSERT INTO computer (brand, price) VALUES ('INTEL', 500);
INSERT INTO computer (brand, price) VALUES ('INTEL', 1000);
INSERT INTO computer (brand, price) VALUES ('INTEL', 1600);

SHOW TABLES;

DROP TABLE computer;
DROP TABLE product;
DROP TABLE student;
