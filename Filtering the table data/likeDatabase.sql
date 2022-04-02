-- Create database likeDatabase and work on it.
CREATE DATABASE likeDatabase;

DROP DATABASE likeDatabase;

-- 1. Create the movie table to store movies.
-- The movies will have a numeric type id, a name and a genre,
-- which will contain genres of the movie(action, comedy, thriller, and so on).
-- separated by comma.
-- Enter 5 entries in the table.
-- Read all the names of comedy movies.
-- Read all the action movie names.

CREATE TABLE movie(
id INT PRIMARY KEY AUTO_INCREMENT,
m_name VARCHAR(50),
m_genre VARCHAR(100)
);

INSERT INTO movie(m_name, m_genre) VALUES('Prince of Persia', 'Action, Fantasy');
INSERT INTO movie(m_name, m_genre) VALUES('Lord of the rings', 'Fatasy, Action, Adventure');
INSERT INTO movie(m_name, m_genre) VALUES('Harry Potter', 'Action, Fantasy');
INSERT INTO movie(m_name, m_genre) VALUES('Mr Bean Holiday', 'Comedy');
INSERT INTO movie(m_name, m_genre) VALUES('Titanic', 'Romance, Action, Drama');

SELECT * FROM movie WHERE m_genre LIKE '%Comedy%';
SELECT * FROM movie WHERE m_genre LIKE '%Action%';

DROP TABLE movie;

-- 2. Create the people table to store people.
-- People will have a numeric type id, a name and an email.
-- Enter 5 entries in the table.
-- Read all the data of people who have gmail.
-- Read all the data of people who have yahoo mail.

CREATE TABLE people(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_email VARCHAR(20)
);

INSERT INTO people(p_name, p_email) VALUES('Andy', 'andy.1@gmail.com');
INSERT INTO people(p_name, p_email) VALUES('Andrei', 'andrei.2@yahoo.com');
INSERT INTO people(p_name, p_email) VALUES('Miruna', 'miruna.5@gmail.com');
INSERT INTO people(p_name, p_email) VALUES('Ionut', 'ionut.55@yahoo.com');
INSERT INTO people(p_name, p_email) VALUES('Elena', 'elena.55@gmail.com');

SELECT * FROM people WHERE p_email LIKE '%gmail.%';
SELECT *FROM people WHERE p_email LIKE '%yahoo.%';

DROP TABLE people;

-- 3. Create the student table to store students.
-- Students will have an id, a name and a specialization.
-- Enter 5 entries in the table.
-- Read all the data of the students who in their specialization have to word "Master".

CREATE TABLE student(
id INT PRIMARY KEY AUTO_INCREMENT,
s_name VARCHAR(20),
s_specialization VARCHAR(60)
);

INSERT INTO student(s_name, s_specialization) VALUES('Andrei', 'Law Master');
INSERT INTO student(s_name, s_specialization) VALUES('Adrian', 'Economic Studies Bachelor degree');
INSERT INTO student(s_name, s_specialization) VALUES('Miruna', 'Medicine Bachelor degree');
INSERT INTO student(s_name, s_specialization) VALUES('Elena', 'Medicine Master');
INSERT INTO student(s_name, s_specialization) VALUES('Patricia', 'Law Bachelor degree');

SELECT * FROM student WHERE s_specialization LIKE '%Master';
SELECT * FROM student WHERE s_specialization LIKE '%Bachelor degree%';
DROP TABLE student;


