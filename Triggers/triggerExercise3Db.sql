-- Create the triggerExercise3Db database and work on it.
CREATE DATABASE triggerExercise3Db;
USE triggerExercise3Db;

DROP DATABASE triggerExercise3Db;

-- The student table is given, with the properties id, first_name and last_name.
-- Each time a new student is entered in the table, the specified first_name must be converted to uppercase.
-- Each time a student is modified, last_name will need to be converted to lower case.

CREATE TABLE student(
id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(20),
last_name VARCHAR(20)
);

CREATE TRIGGER uppercase_first_name_before_insert
BEFORE INSERT ON student
FOR EACH ROW
SET NEW.first_name = UPPER(NEW.first_name);

INSERT INTO student(first_name, last_name) VALUES ('John','Smith');
INSERT INTO student(first_name, last_name) VALUES ('Matew','Roberts');


CREATE TRIGGER last_name_lowercase_on_update
BEFORE UPDATE ON student
FOR EACH ROW
SET NEW.last_name = LOWER(NEW.last_name);

UPDATE student set last_name = 'JONES' WHERE id =2;

SELECT * FROM student;
