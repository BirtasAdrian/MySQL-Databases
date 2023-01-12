-- Create the SalaryManagement database and work on it.

-- 1. Create the positions table to store positions.
-- Positions will have a numeric id, positionName, working days per month, minimum salary and maximum Salary.
-- Enter 10 entries in the table

-- 2. Create the employee table to store employees.
-- Employee will have a numeric id, first name, middle name, last name, date of birth, address, phone number, work status and an id for position (use as a foreign key).
-- Enter 10 entries in the table

-- 3. Create the payroll table to store employee situation.
-- Payroll will have a numeric id, an employee id, number of days worked, bonus salary, over time pay, absent days, net salary, payroll date and an id for account (use as a foreign key).
-- Enter 10 entries in the table

-- 4. Create the account table to store employee accounts info.
-- Account will have a numeric id, an user name, password and an account type.
-- Enter 10 entries in the table

CREATE DATABASE SalaryManagement;
USE SalaryManagement;

CREATE TABLE positions(
id INT PRIMARY KEY auto_increment,
positionName VARCHAR(45),
workingDaysPerMonth INT,
minimumSalary INT,
maximumSalary INT
);

INSERT INTO positions(positionName, workingDaysPerMonth, minimumSalary, maximumSalary) VALUES('HR', 20, 1800, 3800);
INSERT INTO positions(positionName, workingDaysPerMonth, minimumSalary, maximumSalary) VALUES('Accountant', 20, 2500, 5000);
INSERT INTO positions(positionName, workingDaysPerMonth, minimumSalary, maximumSalary) VALUES('Manual Tester', 20, 2700, 13000);
INSERT INTO positions(positionName, workingDaysPerMonth, minimumSalary, maximumSalary) VALUES('Manager', 20, 3000, 8000);
INSERT INTO positions(positionName, workingDaysPerMonth, minimumSalary, maximumSalary) VALUES('Automation Tester', 20, 3500, 15000);
INSERT INTO positions(positionName, workingDaysPerMonth, minimumSalary, maximumSalary) VALUES('Data Analyst', 20, 2800, 4500);
INSERT INTO positions(positionName, workingDaysPerMonth, minimumSalary, maximumSalary) VALUES('Assistant Manager', 20, 3000, 5000);
INSERT INTO positions(positionName, workingDaysPerMonth, minimumSalary, maximumSalary) VALUES('Marketing', 20, 2800, 5000);
INSERT INTO positions(positionName, workingDaysPerMonth, minimumSalary, maximumSalary) VALUES('Tourism Agent', 20, 1800, 3000);
INSERT INTO positions(positionName, workingDaysPerMonth, minimumSalary, maximumSalary) VALUES('Hotel Receptionist', 20, 1800, 2800);

CREATE TABLE employee(
id INT PRIMARY KEY AUTO_INCREMENT,
firstName VARCHAR(45),
lastName VARCHAR(45),
middleName VARCHAR(45),
dateOfBirth DATE,
address VARCHAR(45),
phoneNumb VARCHAR(45),
statuse VARCHAR(45),
positionID INT
);

INSERT INTO employee(firstName, lastName, middleName, dateOfBirth, address, phoneNumb, statuse, positionID) VALUES('Mihai', 'Dragomir', 'Florin', '1997-03-11', 'Strada Liliacului, nr 5', '07757566566', 'active', 1);
INSERT INTO employee(firstName, lastName, middleName, dateOfBirth, address, phoneNumb, statuse, positionID) VALUES('Elena', 'Tanase', 'Mihaela', '1995-05-1', 'Strada Castanilor, nr 8', '075566448890', 'medical', 2);
INSERT INTO employee(firstName, lastName, middleName, dateOfBirth, address, phoneNumb, statuse, positionID) VALUES('Mihaela', 'Miron', 'Andreea', '1988-07-12', 'Strada Crinilor, nr 12', '07854444835', 'active', 3);
INSERT INTO employee(firstName, lastName, middleName, dateOfBirth, address, phoneNumb, statuse, positionID) VALUES('Ioana', 'Martin', 'Maria', '1995-08-13', 'Strada Mihai Eminescu, nr 18', '07554433835', 'medical', 33);
INSERT INTO employee(firstName, lastName, middleName, dateOfBirth, address, phoneNumb, statuse, positionID) VALUES('Eliza', 'Pop', 'Crina', '1991-05-22', 'Strada Ion Creanga, nr 13', '07584439845', 'medical', 5);
INSERT INTO employee(firstName, lastName, middleName, dateOfBirth, address, phoneNumb, statuse, positionID) VALUES('Mihai', 'Mocanu', 'Andrei', '1995-09-26', 'Strada Florilor, nr 19', '07889435845', 'active', 6);
INSERT INTO employee(firstName, lastName, middleName, dateOfBirth, address, phoneNumb, statuse, positionID) VALUES('Vasile', 'Popscu', 'Florin', '1988-09-15', 'Strada Teilor, nr 28', '07594444845', 'active', 17);
INSERT INTO employee(firstName, lastName, middleName, dateOfBirth, address, phoneNumb, statuse, positionID) VALUES('Maximilian', 'Codrut', 'Anton', '1978-12-22', 'Strada Perilor, nr 22', '07599559845', 'active', 8);
INSERT INTO employee(firstName, lastName, middleName, dateOfBirth, address, phoneNumb, statuse, positionID) VALUES('Ion', 'Vasian', 'Vasile', '1990-08-28', 'Strada Ion Barbu, nr 13', '07586637745', 'medical', 9);
INSERT INTO employee(firstName, lastName, middleName, dateOfBirth, address, phoneNumb, statuse, positionID) VALUES('Adrian', 'Cosma', 'Florin', '1998-06-15', 'Strada Rozelor , nr 9', '0754884555', 'medical', 15);


CREATE TABLE payroll(
id INT PRIMARY KEY AUTO_INCREMENT,
employeeid INT,
numOfDaysWorked INT,
bonus FLOAT,
overtimePay FLOAT,
absentDays INT,
netSalary FLOAT,
payrollDate DATE,
accountId INT 
 );


 INSERT INTO payroll(employeeid, numOfDaysWorked, bonus, overtimePay, absentDays, netSalary, payrollDate, accountId) VALUES(2, 15, 200, 550, 5, 4000, '2022-10-10', 2);
 INSERT INTO payroll(employeeid, numOfDaysWorked, bonus, overtimePay, absentDays, netSalary, payrollDate, accountId) VALUES(1, 20, 300, 600, 3, 2500, '2022-10-15', 1);
 INSERT INTO payroll(employeeid, numOfDaysWorked, bonus, overtimePay, absentDays, netSalary, payrollDate, accountId) VALUES(4, 22, 400, 600, 2, 6000, '2022-10-10', 4);
 INSERT INTO payroll(employeeid, numOfDaysWorked, bonus, overtimePay, absentDays, netSalary, payrollDate, accountId) VALUES(3, 19, 500, 650, 4, 8000, '2022-10-15', 3);
 INSERT INTO payroll(employeeid, numOfDaysWorked, bonus, overtimePay, absentDays, netSalary, payrollDate, accountId) VALUES(6, 20, 400, 450, 6, 3000, '2022-10-20', 6);
 INSERT INTO payroll(employeeid, numOfDaysWorked, bonus, overtimePay, absentDays, netSalary, payrollDate, accountId) VALUES(5, 20, 430, 550, 5, 9000, '2022-10-12', 5);
 INSERT INTO payroll(employeeid, numOfDaysWorked, bonus, overtimePay, absentDays, netSalary, payrollDate, accountId) VALUES(8, 20, 260, 350, 4, 3500, '2022-10-14', 8);
 INSERT INTO payroll(employeeid, numOfDaysWorked, bonus, overtimePay, absentDays, netSalary, payrollDate, accountId) VALUES(7, 20, 300, 250, 2, 3600, '2022-10-15', 7);
 INSERT INTO payroll(employeeid, numOfDaysWorked, bonus, overtimePay, absentDays, netSalary, payrollDate, accountId) VALUES(10, 20, 200, 250, 3, 2200, '2022-10-12', 10);
 INSERT INTO payroll(employeeid, numOfDaysWorked, bonus, overtimePay, absentDays, netSalary, payrollDate, accountId) VALUES(9, 22, 330, 300, 4, 2500, '2022-10-14', 9);
 
 CREATE TABLE account(
 id INT PRIMARY KEY AUTO_INCREMENT,
 userNAME VARCHAR(45),
 passworda VARCHAR(45),
 accountType VARCHAR(45)
 );
 
 INSERT INTO account(userNAME, passworda, accountType) VALUES('mihai1218', '1234', 'salary');
 INSERT INTO account(userNAME, passworda, accountType) VALUES('elena3000', '0000', 'salary');
 INSERT INTO account(userNAME, passworda, accountType) VALUES('mihaela2000', '1111', 'salary');
 INSERT INTO account(userNAME, passworda, accountType) VALUES('ioana3300', '2200', 'salary');
 INSERT INTO account(userNAME, passworda, accountType) VALUES('eliza2300', '5555', 'salary');
 INSERT INTO account(userNAME, passworda, accountType) VALUES('mihai2300', '6666', 'salary');
 INSERT INTO account(userNAME, passworda, accountType) VALUES('vasile4555', '7777', 'salary');
 INSERT INTO account(userNAME, passworda, accountType) VALUES('max5050', '8888', 'salary');
 INSERT INTO account(userNAME, passworda, accountType) VALUES('ion2300', '9659', 'salary');
 INSERT INTO account(userNAME, passworda, accountType) VALUES('adrian1218', '8569', 'salary');
 
 
-- Which are the days when at least 2 salaries were paid?

SELECT payrollDate, COUNT(*) AS nr_pay_days
FROM payroll
GROUP BY payrollDate
HAVING COUNT(*) >= 2;

-- - Which employees are on medical leave? (employee - status)

SELECT firstName, middleName, lastName, statuse
FROM employee
WHERE statuse = 'medical';

-- What are the phone numbers of the top 5 employees with the most absences ?

SELECT firstName, middleName, lastName, phoneNumb, absentDays
FROM payroll p INNER JOIN employee e ON p.id = e.id
ORDER BY absentDays DESC
LIMIT 5;

-- Who are the top 3 highest paid employees?

SELECT firstName, middleName, lastName, positionID, netSalary
FROM payroll p INNER JOIN employee e ON e.id = p.id
ORDER BY netSalary  DESC
LIMIT 3;

--  Who got the biggest bonus?

SELECT employeeid, bonus, firstName, middleName, lastName
FROM payroll p INNER JOIN employee e ON p.employeeid = e.id
WHERE bonus =(SELECT MAX(bonus) AS 'The biggest bonus'
FROM payroll);

-- Other example with 3 Joins

 SELECT employeeid, bonus, firstName, middleName, lastName, positionName, userNAME
FROM positions pp INNER JOIN employee e ON pp.id = e.positionID INNER JOIN payroll p ON p.employeeid = e.id
INNER JOIN account a ON p.accountId = a.id
WHERE bonus =(SELECT MAX(bonus) 
FROM payroll);

  -- Who has more absences?
  
SELECT e.firstName, e.lastName, e.middleName, p.employeeid, p.absentDays
FROM payroll p INNER JOIN employee e ON p.employeeid = e.id
WHERE absentDays =(SELECT MAX(absentDays) AS 'Max absent days'
FROM payroll);
 
