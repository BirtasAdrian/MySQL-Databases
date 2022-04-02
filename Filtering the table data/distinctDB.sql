-- Create and work inside the distinctDB database.
CREATE DATABASE distinctDB;
USE distinctDB;

DROP DATABASE distinctDB;

-- 1. Create the student table to store students.
-- Students will have a numeric type id, a name and an age.
-- Enter 10 entries in the table.
-- Read reach individual name in our table.

CREATE TABLE student(
id INT PRIMARY KEY AUTO_INCREMENT,
s_name VARCHAR(20),
s_age INT
);

INSERT INTO student(s_name, s_age) VALUES('Dorin', 18);
INSERT INTO student(s_name, s_age) VALUES('Dorin', 18);
INSERT INTO student(s_name, s_age) VALUES('Matei', 21);
INSERT INTO student(s_name, s_age) VALUES('Matei', 21);
INSERT INTO student(s_name, s_age) VALUES('Mihai', 20);
INSERT INTO student(s_name, s_age) VALUES('Mihai', 20);
INSERT INTO student(s_name, s_age) VALUES('Sorin', 17);
INSERT INTO student(s_name, s_age) VALUES('Sorin', 17);
INSERT INTO student(s_name, s_age) VALUES('Flaviu', 22);
INSERT INTO student(s_name, s_age) VALUES('Flaviu', 22);

SELECT DISTINCT s_name FROM student;
DROP TABLE student;

-- 2. Create a borrow table to store book rentals.
-- The table will have a numeric type id, a name of the book that was borrowed and the name of person who borrowed the book.
-- Enter 7 entries in the table.
-- Read each individual book that has been borrowed.
-- Read every person who has ever borrowed a book.

CREATE TABLE borrow(
id INT PRIMARY KEY AUTO_INCREMENT,
b_name VARCHAR(30),
p_name VARCHAR(30)
);

INSERT INTO borrow(b_name, p_name) VALUES('Lord of the rings', 'Andrei');
INSERT INTO borrow(b_name, p_name) VALUES('Lord of the rings', 'Andrei');
INSERT INTO borrow(b_name, p_name) VALUES('The Hobbit', 'Mihai');
INSERT INTO borrow(b_name, p_name) VALUES('The Hobbit', 'Mihai');
INSERT INTO borrow(b_name, p_name) VALUES('Number the stars', 'Flaviu');
INSERT INTO borrow(b_name, p_name) VALUES('Number the stars', 'Flaviu');
INSERT INTO borrow(b_name, p_name) VALUES('The sound of the fury', 'Ionut');

SELECT DISTINCT b_name FROM borrow;
SELECT DISTINCT p_name FROM borrow;
DROP TABLE borrow;

-- 3. Create the ticket table to store plane tickets.
-- Tickets will have an id, a class and a price.
-- Enter 6 entries in the table.
-- Displays all existing ticket categories in our table.

CREATE TABLE ticket(
id INT PRIMARY KEY AUTO_INCREMENT,
t_class VARCHAR(15),
t_price INT
);

INSERT INTO ticket(t_class, t_price) VALUES('1st class', 100);
INSERT INTO ticket(t_class, t_price) VALUES('2nd class', 70);
INSERT INTO ticket(t_class, t_price) VALUES('1st class', 100);
INSERT INTO ticket(t_class, t_price) VALUES('3rd class', 40);
INSERT INTO ticket(t_class, t_price) VALUES('3rd class', 40);
INSERT INTO ticket(t_class, t_price) VALUES('2nd class', 70);

SELECT DISTINCT t_class FROM ticket;
DROP TABLE ticket;


