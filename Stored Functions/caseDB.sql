-- Create and work on the caseDB database.
CREATE DATABASE caseDB;
USE caseDB;

DROP DATABASE caseDB;

-- Create the person table, which has the following columns: id, name and age.
-- Create a function that returns the name of the people in the table and a status.

-- 1. The condition can have two values: ADULT or MINOR - it will be decided according to age.

CREATE TABLE person(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_age INT 
);

INSERT INTO person(p_name, p_age) VALUES('Andrew', 25);
INSERT INTO person(p_name, p_age) VALUES('Matei', 15);
INSERT INTO person(p_name, p_age) VALUES('Florin', 30);
INSERT INTO person(p_name, p_age) VALUES('Andy', 8);

CREATE FUNCTION decideIfAdult(age INT)
RETURNS VARCHAR(5) DETERMINISTIC
RETURN CASE
	WHEN age >=18 THEN 'Adult'
    ELSE 'Minor'
    END;
    
SELECT id, p_name, decideIfAdult(p_age) AS 'minorOrAdult' FROM person;
    
-- 2. The condition can have three values: ADULT if the age is over 18, adolescent if it is over 12 and child otherwise

CREATE FUNCTION decideSituation(age INT)
RETURNS VARCHAR(10) DETERMINISTIC
RETURN CASE
	WHEN age >= 18 THEN 'Adult'
    WHEN age > 12 THEN 'Adolescent'
    ELSE 'Child'
    END;

SELECT id, p_name, decideSituation(p_age) AS 'age_situation' FROM person;
