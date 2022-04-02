-- Create and work inside the groupByDB database.
CREATE DATABASE groupByDB;
USE groupByDB;

-- GROUP BY is always used together with an aggregate function.

DROP DATABASE groupByDB;

-- 1. Create the movie table to store movies.
-- Movies will have a numeric id, a name, a reviewer_name and a rating.
-- For a particular movie, a reviewer may rate it.
-- Enter 10 entries in the table.
-- Read the average of ratings for each movie.

CREATE TABLE movie(
id INT PRIMARY KEY AUTO_INCREMENT,
m_name VARCHAR(20),
reviewer_name VARCHAR(20),
rating INT
);

INSERT INTO movie(m_name, reviewer_name, rating) VALUES('Harry Potter 1', 'Sandra', 10);
INSERT INTO movie(m_name, reviewer_name, rating) VALUES('Lord of the Rings', 'Andy', 10);
INSERT INTO movie(m_name, reviewer_name, rating) VALUES('The Shining', 'Marius', 9);
INSERT INTO movie(m_name, reviewer_name, rating) VALUES('Mr Bean Holiday', 'John', 8);
INSERT INTO movie(m_name, reviewer_name, rating) VALUES('The Shining', 'James', 7);
INSERT INTO movie(m_name, reviewer_name, rating) VALUES('Mr Bean Holiday', 'Andrew', 8);
INSERT INTO movie(m_name, reviewer_name, rating) VALUES('Lord of the Rings', 'Maximilian', 8);
INSERT INTO movie(m_name, reviewer_name, rating) VALUES('The Shining', 'Maria', 8);
INSERT INTO movie(m_name, reviewer_name, rating) VALUES('Harry Potter 1', 'Ioan', 9);
INSERT INTO movie(m_name, reviewer_name, rating) VALUES('Mr Bean Holiday', 'Camelia', 9);

SELECT m_name, AVG(rating) FROM movie GROUP BY m_name;

DROP TABLE movie;

-- 2. Create the borrow table to store book rentals.
-- The table will have a numeric type id, a name of the book that was borrowed,
-- and the name of person who borrowed the book.
-- Enter 7 entries in the table.
-- Read how many times each book has been rented.

CREATE TABLE borrow(
id INT PRIMARY KEY AUTO_INCREMENT,
b_name VARCHAR(30),
c_name VARCHAR(20)
);

INSERT INTO borrow(b_name, c_name) VALUES('Java from scratch', 'Mark');
INSERT INTO borrow(b_name, c_name) VALUES('Harry Potter1', 'Marie');
INSERT INTO borrow(b_name, c_name) VALUES('Harry Potter1', 'Ana');
INSERT INTO borrow(b_name, c_name) VALUES('The Shining', 'Dianne');
INSERT INTO borrow(b_name, c_name) VALUES('JavaScript from scratch', 'Andrew');
INSERT INTO borrow(b_name, c_name) VALUES('JavaScript from scratch', 'Mariana');
INSERT INTO borrow(b_name, c_name) VALUES('The Shining', 'Elena');
INSERT INTO borrow(b_name, c_name) VALUES('Java from scratch', 'Emily');

SELECT b_name, COUNT(c_name) FROM borrow GROUP BY b_name;

DROP TABLE borrow;

-- 3. Create the product table to store products.
-- The products will have an id, a name and a quantity.
-- Enter 5 entries in the table.
-- Read the total quantity of each product in the table.

CREATE TABLE product(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_quantity INT
);

INSERT INTO product(p_name, p_quantity) VALUES('Adidas Shoes', 50);
INSERT INTO product(p_name, p_quantity) VALUES('Puma Pants', 40);
INSERT INTO product(p_name, p_quantity) VALUES('Puma Jacket', 200);
INSERT INTO product(p_name, p_quantity) VALUES('Adidas Jacket', 300);
INSERT INTO product(p_name, p_quantity) VALUES('Nike Pants', 80);

SELECT p_name, SUM(p_quantity) FROM product GROUP BY p_name;

DROP TABLE product;
