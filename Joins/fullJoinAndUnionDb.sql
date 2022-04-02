-- Create the fullJoinAndUnionDb database and work on it.
CREATE DATABASE fullJoinAndUnionDb;
USE fullJoinAndUnionDb;

DROP DATABASE fullJoinAndUnionDb;

-- We will use UNION because in MySQL Database the syntax FULL JOIN is not allowed.

-- 1. Create the student table with the id, name and age properties.
-- Create the laptop table, with the properties id, brand and ram.
-- Any student can have a laptop.
-- Read all the data from student table and laptop table.

CREATE TABLE student(
id INT PRIMARY KEY AUTO_INCREMENT,
s_name VARCHAR(20),
s_age INT,
laptop_id INT,
FOREIGN KEY(laptop_id) REFERENCES laptop(id)
);

CREATE TABLE laptop(
id INT PRIMARY KEY AUTO_INCREMENT,
brand VARCHAR(20),
ram INT
);

INSERT INTO laptop(brand, ram) VALUES('Asus', 4);
INSERT INTO laptop(brand, ram) VALUES('Dell', 8);
INSERT INTO laptop(brand, ram) VALUES('Apple', 16);

INSERT INTO student(s_name, s_age, laptop_id) VALUES('Mihai', 23, null);
INSERT INTO student(s_name, s_age, laptop_id) VALUES('Elena', 21, 1);
INSERT INTO student(s_name, s_age, laptop_id) VALUES('Ancuta', 22, 2);
INSERT INTO student(s_name, s_age, laptop_id) VALUES('Alin', 24, null);
INSERT INTO student(s_name, s_age, laptop_id) VALUES('Ionut', 20, null);


SELECT s.s_name, s.s_age, s.laptop_id, l.brand, l.ram FROM student s LEFT JOIN laptop l ON s.laptop_id = l.id
UNION
SELECT s.s_name, s.s_age, s.laptop_id, l.brand, l.ram FROM student s RIGHT JOIN laptop l ON s.laptop_id = l.id;

DROP TABLE student;
DROP TABLE laptop;