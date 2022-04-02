-- Create the database leftJoinDatabase and work inside it.
CREATE DATABASE leftJoinDatabase;
USE leftJoinDatabase;

DROP DATABASE leftJoinDatabase;

-- 1. Create the student table with the columns id, name, age.
-- Create the major table, with the properties id, name, and duration (yers).
-- Any student can have a major.
-- Read all data for students and appropiate fields of study (wheter they exist or not)

CREATE TABLE major(
id INT PRIMARY KEY AUTO_INCREMENT,
m_name VARCHAR(20),
m_duration INT
);

CREATE TABLE student(
id INT PRIMARY KEY AUTO_INCREMENT,
s_name VARCHAR(20),
s_age INT,
major_id INT,
FOREIGN KEY(major_id) REFERENCES major(id)
);

INSERT INTO major (m_name, m_duration) VALUES ('Economics', 4);
INSERT INTO major (m_name, m_duration) VALUES ('Computer Science', 4);
INSERT INTO major (m_name, m_duration) VALUES ('Biology', 4);

INSERT INTO student(s_name, s_age, major_id) VALUES('StudentA', 18, 1);
INSERT INTO student(s_name, s_age, major_id) VALUES('StudentB', 18, 2);
INSERT INTO student(s_name, s_age, major_id) VALUES('StudentC', 18, 3);
INSERT INTO student(s_name, s_age, major_id) VALUES('StudentD', 18, null);
INSERT INTO student(s_name, s_age, major_id) VALUES('StudentE', 18, null);

SELECT * FROM student s LEFT JOIN major m ON m.id = s.major_id;

DROP TABLE student;
DROP TABLE major;

-- 2. Create the car table with the id, brand and horse_power properties.
-- Create the driver table with the properties id, name and age.
-- Every driver can have a car.
-- Read the names of all drivers and any corespondents in the car table: car brand and horsepower.

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

INSERT INTO car(brand, horse_power) VALUES('Audi', 200);
INSERT INTO car(brand, horse_power) VALUES('Mercedes', 210);

INSERT INTO driver(d_name, d_age, car_id) VALUES('Andy', 22, 1);
INSERT INTO driver(d_name, d_age, car_id) VALUES('Marius', 25, 2);
INSERT INTO driver(d_name, d_age, car_id) VALUES('Elena', 23, null);

SELECT d.d_name, c.brand, c.horse_power FROM driver d LEFT JOIN car c ON d.car_id = c.id;

DROP TABLE driver;
DROP TABLE car;

-- 3. Create the order_table table, with the properties id, description, price.
-- Create the customer_table table, with the id, name and telephone_number properties.
-- Each order can have a customer.
-- Read all the data of the placed orders, together with the possible coresponding data from customer table.

CREATE TABLE order_table(
id INT PRIMARY KEY AUTO_INCREMENT,
o_description VARCHAR(50),
o_price INT,
customer_id INT,
FOREIGN KEY(customer_id) REFERENCES customer_table(id)
);

CREATE TABLE customer_table(
id INT PRIMARY KEY AUTO_INCREMENT,
c_name VARCHAR(20),
c_telephone_number VARCHAR(10) 
);

INSERT INTO customer_table(c_name, c_telephone_number) VALUES('Andrei', '0757588656');
INSERT INTO customer_table(c_name, c_telephone_number) VALUES('Maria', '0757588555');
INSERT INTO customer_table(c_name, c_telephone_number) VALUES('Alina', '0757588999');

INSERT INTO order_table(o_description, o_price, customer_id) VALUES('Description 1', 1000, 1);
INSERT INTO order_table(o_description, o_price, customer_id) VALUES('Description 2', 2000, 2);
INSERT INTO order_table(o_description, o_price, customer_id) VALUES('Description 3', 3000, null);
INSERT INTO order_table(o_description, o_price, customer_id) VALUES('Description 4', 3000, 3);
INSERT INTO order_table(o_description, o_price, customer_id) VALUES('Description 5', 3000, null);

SELECT * FROM order_table o LEFT JOIN customer_table c ON o.customer_id = c.id;

DROP TABLE order_table;
DROP TABLE customer_table;