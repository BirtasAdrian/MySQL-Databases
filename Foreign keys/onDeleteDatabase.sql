-- Create the database onDeleteDatabase and work on it.
CREATE DATABASE onDeleteDatabase;
USE onDeleteDatabase;

DROP DATABASE onDeleteDatabase;

-- 1. Create the person table, with the column id, first_name, and last_name.
-- and phone, with the properties id, brand and model.
-- Each person will have a phone.
-- When a phone is deleted, the person will no longer have a specified phone.

CREATE TABLE phone(
id INT PRIMARY KEY AUTO_INCREMENT,
brand VARCHAR(20),
model VARCHAR(20)
);


CREATE TABLE person(
id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(20),
last_name VARCHAR(20),
phone_id INT,
FOREIGN KEY(phone_id) REFERENCES phone(id) ON DELETE SET NULL 
);

INSERT INTO phone(brand, model) VALUES('Samsung', 'S12');
INSERT INTO person(first_name, last_name, phone_id) VALUES ('Andrei', 'Pop', 1);

SELECT * FROM phone;
SELECT * FROM person;

DELETE FROM phone;
DROP TABLE phone;
DROP TABLE person;

-- 2. Create the car table, with the id, brand and horse_power properties, and driver, with the name and age id properties.
-- Every driver will have a car.
-- When the driver is deleted, the car will also be wiped.

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
FOREIGN KEY(car_id) REFERENCES car(id) ON DELETE CASCADE
);

INSERT INTO car(brand, horse_power) VALUES ('Mercedes', 220);
INSERT INTO driver(d_name, d_age, car_id) VALUES('Andy', 22, 1);


SELECT * FROM driver;
DELETE FROM car;

DROP TABLE driver;
DROP TABLE car;

