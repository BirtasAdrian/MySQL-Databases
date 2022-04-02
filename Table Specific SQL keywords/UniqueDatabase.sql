-- Create and work inside the uniqueDatabase database.

CREATE DATABASE uniqueDatabase;
USE uniqueDatabase;
DROP DATABASE uniqueDatabase;

-- 1. Create the person table to store people.
-- People will have a numeric type id, a name and a social security number.
-- 2 persons will never be able to have the same social security number.
-- Enter two entries in the table.

CREATE TABLE person(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
s_s_number VARCHAR(10) UNIQUE
);

INSERT INTO person(p_name, s_s_number) VALUES('Adrian','9874565432');
INSERT INTO person(p_name, s_s_number) VALUES('Andrew','9874565432');
INSERT INTO person(p_name, s_s_number) VALUES('Mariu','9874565433');
SELECT * FROM person;
DROP TABLE person;

-- 2. Create the customer table to store customers.
-- Customers will have a numeric type id, a name and an email.
-- No two users will ever be able to have the same email.
-- Enter two entries in the table.

CREATE TABLE customer(
id INT PRIMARY KEY AUTO_INCREMENT,
c_name VARCHAR(20),
c_email VARCHAR(50) UNIQUE
);

INSERT INTO customer(c_name, c_email) VALUES('Marian','marian_andy@yahoo.com');
INSERT INTO customer(c_name, c_email) VALUES('Andrei','marian_andy@yahoo.com');
INSERT INTO customer(c_name, c_email) VALUES('Mihai','mihai_florin@yahoo.com');
SELECT * FROM customer;
DROP TABLE customer;

-- 3. Create the credit_card table to store credit cards.
-- Credit cards will have a numeric type id, a series, a name, a month of expiration, a year of expiration and a ccv.
-- Two cards will never be able to have the same series.
-- Enter two entries in the table.

CREATE TABLE credit_card(
id INT PRIMARY KEY AUTO_INCREMENT,
series VARCHAR(20) UNIQUE,
c_name VARCHAR(40),
c_year INT,
c_month INT,
ccv INT
);

INSERT INTO credit_card(series, c_name, c_month, c_year, ccv) VALUES ('12345abcd','Popescu Mihai', 7, 2022, 489);
INSERT INTO credit_card(series, c_name, c_month, c_year, ccv) VALUES ('12345abcd','Andrei Badea', 8, 2022, 488);
INSERT INTO credit_card(series, c_name, c_month, c_year, ccv) VALUES ('12345abce','Mircea Fodor', 5, 2022, 564);
SELECT * FROM credit_card;
DROP TABLE credit_card;

