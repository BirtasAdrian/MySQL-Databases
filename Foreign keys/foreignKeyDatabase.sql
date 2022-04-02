-- Create the foreignKeyDatabase and work inside it.
CREATE DATABASE foreignKeyDatabase;
USE foreignKeyDatabase;

DROP DATABASE foreignKeyDatabase;

-- 1. Create the child table, with the id, name and age columns, and the laptop table, with the id, brand, and color properties.

CREATE TABLE laptop(
id INT PRIMARY KEY AUTO_INCREMENT,
c_brand VARCHAR(20),
c_color VARCHAR(20)
);

INSERT INTO laptop(c_brand, c_color) VALUES('Asus', 'Black');
INSERT INTO laptop(c_brand, c_color) VALUES('Apple', 'White');

CREATE TABLE child(
id INT PRIMARY KEY AUTO_INCREMENT,
c_name VARCHAR(20),
c_age INT,
laptop_id INT,
FOREIGN KEY(laptop_id) REFERENCES laptop(id)
);

INSERT INTO child(c_name, c_age, laptop_id) VALUES('Child 1', '11', 1);
INSERT INTO child(c_name, c_age, laptop_id) VALUES('Child 2', '5', 2);

DROP TABLE child;
DROP TABLE laptop;

-- 2. Create the car table, with the id, brand and horse_power properties, and driver, with the id, name and age properties.

CREATE TABLE car(
id INT PRIMARY KEY AUTO_INCREMENT,
brand VARCHAR(20),
horse_power INT
);

INSERT INTO car(brand, horse_power) VALUES('Mercedes', 200);
INSERT INTO car(brand, horse_power) VALUES('Audi', 220);


CREATE TABLE driver(
id INT PRIMARY KEY AUTO_INCREMENT,
d_name VARCHAR(20),
d_age INT,
car_id INT,
FOREIGN KEY(car_id) REFERENCES car(id)
);

INSERT INTO driver(d_name, d_age, car_id) VALUES('Andy', 22, 1);
INSERT INTO driver(d_name, d_age, car_id) VALUES('Marius', 30, 2);


DROP TABLE driver;
DROP TABLE car;

-- 3. Create the order table, with the id, product name, description and price properties, and customer, with the id, name and telephone_number.

CREATE TABLE order_table(
id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(20),
o_description VARCHAR(100),
o_price INT,
customer_id INT,
FOREIGN KEY(customer_id) REFERENCES customer(id)
);

INSERT INTO order_table(product_name, o_description, o_price, customer_id) VALUES('Laptop','Best product ever', 1000, 1);
INSERT INTO order_table(product_name, o_description, o_price, customer_id) VALUES('Playstation', 'The best', 100, 2);


CREATE TABLE customer(
id INT PRIMARY KEY AUTO_INCREMENT,
c_name VARCHAR(20),
telephone_number VARCHAR(10)
);

INSERT INTO customer(c_name, telephone_number) VALUES('Andrei', '0757588465');
INSERT INTO customer(c_name, telephone_number) VALUES('Elena', '0757588465');

SELECT * FROM order_table;
SELECT * FROM customer;

DROP TABLE order_table;
DROP TABLE customer;

