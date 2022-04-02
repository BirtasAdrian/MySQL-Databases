-- Create and work on the storedProcedureDB database.
CREATE DATABASE storedProcedureDB;
USE storedProcedureDB;

DROP DATABASE storedProcedureDB;

-- Create a book table, having the columns id, book_name, and total_pages.
-- Create the student table, which has the id and student_name properties.
-- Any student can have a book.
-- Enter new entries in the student table, specifying only the student's name.
-- Each time an insert is made in our student table, all avaible books that are not already
-- in any student's possession will also be displayed.

-- Call the procedure 3 times.

CREATE TABLE book(
id INT PRIMARY KEY AUTO_INCREMENT,
book_name VARCHAR(20),
total_pages INT 
);

CREATE TABLE student(
id INT PRIMARY KEY AUTO_INCREMENT,
s_name VARCHAR(30),
book_id INT,
FOREIGN KEY (book_id) REFERENCES book(id)
);

DELIMITER $$
CREATE PROCEDURE insertStudentAndPrintAvailableBooks (IN student_name VARCHAR(30))
BEGIN
	INSERT INTO student(s_name) VALUES(student_name);
    SELECT * FROM book WHERE id NOT IN(SELECT book_id FROM student WHERE book_id IS NOT NULL);
END$$
DELIMITER ;

INSERT INTO book(book_name, total_pages) VALUES('Harry Potter', 500);
INSERT INTO book(book_name, total_pages) VALUES('Lord of the rings', 380);
INSERT INTO book(book_name, total_pages) VALUES('Star wars', 480);

CALL insertStudentAndPrintAvailableBooks('Adrian');
CALL insertStudentAndPrintAvailableBooks('Mathew');
CALL insertStudentAndPrintAvailableBooks('Alin');

-- If we insert another student, the first book_id that coresponds to Harry Potter will no longer be displayed. That book is not available.

CALL insertStudentAndPrintAvailableBooks('Bianca');

SELECT * FROM student;
SELECT * FROM book;

UPDATE student SET book_id = 1 WHERE id = 1;

DROP TABLE student;
DROP TABLE book;


