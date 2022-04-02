-- Create the orderByDb database and work inside it.
CREATE DATABASE orderByDb;
USE orderByDb;

DROP DATABASE orderByDb;

-- 1. Create the programming_language table to store programming languages.
-- The languages will have a numeric type id, a name and a difficulty.
-- Enter 5 programming languages in the table.
-- Read the first 4 languages, sorted by name.

CREATE TABLE programming_language(
id INT PRIMARY KEY AUTO_INCREMENT,
l_name VARCHAR(20),
l_difficulty INT
);

INSERT INTO programming_language(l_name, l_difficulty) VALUES('Java', 4);
INSERT INTO programming_language(l_name, l_difficulty) VALUES('Python', 2);
INSERT INTO programming_language(l_name, l_difficulty) VALUES('PHP', 4);
INSERT INTO programming_language(l_name, l_difficulty) VALUES('JavaScript', 5);
INSERT INTO programming_language(l_name, l_difficulty) VALUES('Pascal', 4);

SELECT * FROM programming_language ORDER BY l_name LIMIT 4;

DROP TABLE programming_language;

-- 2. Create a teacher table to store teachers.
-- Teachers will have a numeric type id, a name and a subject taught.
-- Enter 5 tab entries.
-- Read all the teachers sorted by the subject taught.

CREATE TABLE teacher(
id INT PRIMARY KEY AUTO_INCREMENT,
t_name VARCHAR(20),
t_subject VARCHAR(20)
);

INSERT INTO teacher(t_name, t_subject) VALUES ('Andrei', 'Math');
INSERT INTO teacher(t_name, t_subject) VALUES ('Tudor', 'SQL');
INSERT INTO teacher(t_name, t_subject) VALUES ('Maria', 'Science');
INSERT INTO teacher(t_name, t_subject) VALUES ('John', 'English');
INSERT INTO teacher(t_name, t_subject) VALUES ('Matei', 'Java');

SELECT * FROM teacher ORDER BY t_subject;

DROP TABLE teacher;

-- 3. Create the videos table to store video data.
-- The videos will have a numeric type id, a name, and a size(MB).
-- Enter 5 entries in the table.
-- Read the names of videos sorted by size.

CREATE TABLE videos(
id INT PRIMARY KEY AUTO_INCREMENT,
v_name VARCHAR(50),
v_size INT
);

INSERT INTO videos(v_name, v_size) VALUES('Java Tutorial', 400);
INSERT INTO videos(v_name, v_size) VALUES('SQL from zero to hero', 500);
INSERT INTO videos(v_name, v_size) VALUES('Cats destroying stuff', 3400);
INSERT INTO videos(v_name, v_size) VALUES('Spiderman 3 scene', 150);
INSERT INTO videos(v_name, v_size) VALUES('Draw my life', 450);

SELECT videos.v_name FROM videos ORDER BY v_size;
SELECT * FROM videos ORDER BY v_size;

DROP TABLE videos;




