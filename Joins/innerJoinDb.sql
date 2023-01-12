-- Create the innerJoinDb database and work inside it.
CREATE DATABASE innerJoinDb;
USE innerJoinDb;

DROP DATABASE innerJoinDb;

-- 1. Create the student table with the columns id, name and age.
-- Create the laptop table, with the id, brand and model properties.
-- Any child can have a laptop.
-- Read all the data of students wiho can have laptops.

CREATE TABLE laptop(
id INT PRIMARY KEY AUTO_INCREMENT,
brand VARCHAR(20),
model VARCHAR(20)
);

CREATE TABLE student(
id INT PRIMARY KEY AUTO_INCREMENT,
s_name VARCHAR(20),
s_age INT,
laptop_id INT,
FOREIGN KEY(laptop_id) REFERENCES laptop(id)
);

INSERT INTO laptop(brand, model) VALUES('Apple', 'Macbook');
INSERT INTO laptop(brand, model) VALUES('Dell','Latitude');
INSERT INTO laptop(brand, model) VALUES('Asus', 'VivoBook');

INSERT INTO student(s_name, s_age, laptop_id) VALUES('Andrei', 22, 1);
INSERT INTO student(s_name, s_age, laptop_id) VALUES('Andrei', 25, 2);
INSERT INTO student(s_name, s_age, laptop_id) VALUES('Elena', 22, null);

-- Cross Join
SELECT * FROM student s, laptop l WHERE s.laptop_id = l.id;

-- Inner Join
SELECT * FROM student s INNER JOIN laptop l ON s.laptop_id = l.id;

DROP TABLE student;
DROP TABLE laptop;

-- 2. Create the car table with the id, brand, horse_power properties.
-- Create the driver table, with the properties id, name and experience (years).
-- Any driver can have a car.
-- Read the car brand, horsepower and the driver's name using a join.

CREATE TABLE car(
id INT PRIMARY KEY AUTO_INCREMENT,
brand VARCHAR(20),
horse_power INT
);

CREATE TABLE driver(
id INT PRIMARY KEY AUTO_INCREMENT,
d_name VARCHAR(20),
d_experience INT,
car_id INT,
FOREIGN KEY(car_id) REFERENCES car(id)
);

INSERT INTO car(brand, horse_power) VALUES('Mercedes', 220);
INSERT INTO car(brand, horse_power) VALUES('Audi', 200);
INSERT INTO car(brand, horse_power) VALUES('Dacia', 180);

INSERT INTO driver(d_name, d_experience, car_id) VALUES('Andrei', 5, 1);
INSERT INTO driver(d_name, d_experience, car_id) VALUES('Andrei', 4, 2);
INSERT INTO driver(d_name, d_experience, car_id) VALUES('Elena', 8, null);

-- Cross Join
SELECT d.d_name, c.brand, c.horse_power FROM driver d, car c WHERE d.car_id = c.id;

-- Inner Join
SELECT d.d_name, c.brand, c.horse_power FROM driver d INNER JOIN car c ON d.car_id = c.id;


DROP TABLE driver;
DROP TABLE car;

-- 3. Create the order_table table, with the id, description and price properties.
-- Create the customer_table table, with the properties id, name and telephone_number.
-- Any order can have a customer.
-- Read the order description and price, the name and phone number of the customer for all oders over 100.

CREATE TABLE order_table(
id INT PRIMARY KEY AUTO_INCREMENT,
o_description VARCHAR(90),
o_price INT,
customer_id INT,
FOREIGN KEY(customer_id) REFERENCES customer_table(id)
);

CREATE TABLE customer_table(
id INT PRIMARY KEY AUTO_INCREMENT,
c_name VARCHAR(20),
telephone_number VARCHAR(10)
);

INSERT INTO customer_table(c_name, telephone_number) VALUES('Andrei', '0757588656');
INSERT INTO customer_table(c_name, telephone_number) VALUES('Elena', '0757588677');
INSERT INTO customer_table(c_name, telephone_number) VALUES('Adina', '0757588696');

INSERT INTO order_table(o_description, o_price, customer_id) VALUES('Description 1', 5000, 1);
INSERT INTO order_table(o_description, o_price, customer_id) VALUES('Description 2', 80, 2);
INSERT INTO order_table(o_description, o_price, customer_id) VALUES('Description 3', 600, 3);

-- Cross Join
SELECT o.o_description, o.o_price, c.c_name, c.telephone_number FROM order_table o, customer_table c WHERE o.customer_id = c.id AND o.o_price > 100;

-- Inner Join
SELECT o.o_description, o.o_price, c.c_name, c.telephone_number FROM order_table o INNER JOIN customer_table c ON o.customer_id = c.id WHERE o.o_price > 100;


DROP TABLE order_table;
DROP TABLE customer_table;


