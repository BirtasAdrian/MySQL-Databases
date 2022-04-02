-- Create the rightJoinDatabase and work on it.
CREATE DATABASE rightJoinDatabase;
USE rightJoinDatabase;

DROP DATABASE rightJoinDatabase;

-- 1. Create the kid table, with the properties id, name and age.
-- Create the toy table, with the id, name and color properties.
-- Any kid can have a toy.
-- Read the names of all existing toys together with their potential owner's name.

CREATE TABLE toy(
id INT PRIMARY KEY AUTO_INCREMENT,
t_name VARCHAR(20),
t_color VARCHAR(20)
);

CREATE TABLE kid(
id INT PRIMARY KEY AUTO_INCREMENT,
k_name VARCHAR(20),
k_age INT,
toy_id INT,
FOREIGN KEY(toy_id) REFERENCES toy(id)
);

INSERT INTO toy(t_name, t_color) VALUES('Doll', 'White');
INSERT INTO toy(t_name, t_color) VALUES('Car', 'Black');
INSERT INTO toy(t_name, t_color) VALUES('TeddyBear', 'Brown');
INSERT INTO toy(t_name, t_color) VALUES('Computer', 'White');
INSERT INTO toy(t_name, t_color) VALUES('Stick', 'Brown');

INSERT INTO kid(k_name, k_age, toy_id) VALUES('Suzy', 5, 1);
INSERT INTO kid(k_name, k_age, toy_id) VALUES('Matt', 7, 3);
INSERT INTO kid(k_name, k_age, toy_id) VALUES('Suzan', 5, 4);

SELECT t.t_name, k.k_name FROM kid k RIGHT JOIN toy t ON k.toy_id=t.id;

DROP TABLE kid;
DROP TABLE toy;

-- 2. Create the car table with the id, brand and horse_power properties.
-- Create the driver table, with the properties id, name and age.
-- Any driver can have a car.
-- Read the data of all the cars, together with the possible drivers.

CREATE TABLE car(
id INT PRIMARY KEY AUTO_INCREMENT,
brand VARCHAR(20),
horse_power INT
);

CREATE TABLE driver(
id INT PRIMARY KEY AUTO_INCREMENT,
d_name VARCHAR(20),
d_age INT,
car_id INT,
FOREIGN KEY(car_id) REFERENCES car(id)
);

INSERT INTO car(brand, horse_power) VALUES('Audi', 180);
INSERT INTO car(brand, horse_power) VALUES('Bmw', 200);
INSERT INTO car(brand, horse_power) VALUES('Mercedes', 220);
INSERT INTO car(brand, horse_power) VALUES('Dacia', 160);
INSERT INTO car(brand, horse_power) VALUES('Hyundai', 180);

INSERT INTO driver(d_name, d_age, car_id) VALUES('Mihai', 22, 1);
INSERT INTO driver(d_name, d_age, car_id) VALUES('Vasile', 25, 2);
INSERT INTO driver(d_name, d_age, car_id) VALUES('Andrei', 28, 3);


SELECT * FROM driver d RIGHT JOIN car c ON d.car_id = c.id;

DROP TABLE driver;
DROP TABLE car;

-- 3. Create the order table, with the properties id, description and price.
-- Create the customer table, with the properties id, name and telephone number.
-- Each order will have a customer.
-- Read all the data of the individual customers, together with their orders.

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
c_telephone_number VARCHAR(10)
);



INSERT INTO customer_table(c_name, c_telephone_number) VALUES('Andrei', '0757565456');
INSERT INTO customer_table(c_name, c_telephone_number) VALUES('Maria', '0757685456');
INSERT INTO customer_table(c_name, c_telephone_number) VALUES('Alina', '0756665456');
INSERT INTO customer_table(c_name, c_telephone_number) VALUES('Petru', '0757885456');
INSERT INTO customer_table(c_name, c_telephone_number) VALUES('Elena', '0757995456');

INSERT INTO order_table(o_description, o_price, customer_id) VALUES('Description1', 1000, 1);
INSERT INTO order_table(o_description, o_price, customer_id) VALUES('Description2', 2000, 3);
INSERT INTO order_table(o_description, o_price, customer_id) VALUES('Description3', 3000, 5);

SELECT * FROM order_table ot RIGHT JOIN customer_table ct ON ot.customer_id = ct.id;

DROP TABLE order_table;
DROP TABLE customer_table;


