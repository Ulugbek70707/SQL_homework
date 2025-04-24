1. Data refers to raw facts, figures or information that, by itself, may not have meaning until it’s processed or organized. A database is an organized collection of related data stored and accessed electronically. It allows users to efficiently store, retrieve, and manage data.A relational database is a type of database that stores data in structured tables (rows and columns), where each table relates to others through key fields. It uses a Relational Database Management System (RDBMS) to maintain and query data based on relationships between different tables. A table is a structured format within a database that organizes data into rows and columns. Each table represents a specific entity (like Customers, Orders, or Products), and each row is a record, while each column represents a data attribute. 
2. Five key features of SQL Server: Data Storage & Management, Security & Access Control, Backup & Recovery, High Availability & Disaster Recovery (HA/DR), Business Intelligence (BI) & Analytics.
3. Windows Authentication Mode-this mode uses the Windows operating system’s user accounts and groups to manage access to SQL Server. SQL Server Authentication Mode-in this mode, SQL Server manages its own usernames and passwords.
4. CREATE DATABASE SchoolDB; GO
USE SchoolDB;
GO

5. CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);
GO
6. Term | What It Is | Purpose
SQL Server | RDBMS Software | Stores, manages, and processes databases and data
SSMS | Management Tool (GUI) | Interface for interacting with SQL Server using SQL queries
SQL | Programming Language | Used to query and manage data within SQL Server

7. DQL (Data Query Language) Purpose: Retrieve data from a database.
Main Command: SELECT
  Example:
SELECT * FROM Students;
 DML (Data Manipulation Language)
Purpose: Manage and manipulate data stored in tables.

Main Commands:

INSERT — Adds new data

UPDATE — Modifies existing data

DELETE — Removes data

Examples:
-- Add a new student
INSERT INTO Students (StudentID, Name, Age) VALUES (1, 'Alice', 20);

-- Update a student's age
UPDATE Students SET Age = 21 WHERE StudentID = 1;

-- Delete a student record
DELETE FROM Students WHERE StudentID = 1;
DDL (Data Definition Language)
Purpose: Define and manage database structures (tables, databases, schemas).

Main Commands:

CREATE — Creates objects

ALTER — Modifies structure

DROP — Deletes objects

TRUNCATE — Removes all data from a table
  Examples:
-- Create a table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100)
);

-- Add a column
ALTER TABLE Courses ADD Credits INT;

-- Remove the table
DROP TABLE Courses;
DCL (Data Control Language)
Purpose: Control access to data in the database.

Main Commands:

GRANT — Give user access privileges

REVOKE — Remove access privileges

Examples:
-- Grant SELECT permission
GRANT SELECT ON Students TO UserName;

-- Revoke SELECT permission
REVOKE SELECT ON Students FROM UserName;
TCL (Transaction Control Language)
Purpose: Manage transactions in the database to ensure data integrity.

Main Commands:

BEGIN TRANSACTION — Start a transaction

COMMIT — Save changes

ROLLBACK — Undo changes if something goes wrong

Examples:
BEGIN TRANSACTION;

UPDATE Students SET Age = 22 WHERE StudentID = 2;

-- Commit the change if successful
COMMIT;

-- Or undo the change if there's a problem
ROLLBACK;
8. create database homework_1
-- Create the Students2 table
CREATE TABLE Students2 (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);

-- Insert records into Students2
INSERT INTO Students2 (StudentID, Name, Age)
VALUES 
    (1, 'Alice', 20),
    (2, 'Bob', 21),
    (3, 'Charlie', 22);

-- Retrieve all records from Students2
SELECT * FROM Students2;
9. BACKUP DATABASE SchoolDB
TO DISK = 'C:\Backups\SchoolDB.bak'
WITH FORMAT,
     NAME = 'Full Backup of SchoolDB';
GO
-- Set the database to single-user mode to restore if it's in use
ALTER DATABASE SchoolDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

-- Restore the database from the backup file
RESTORE DATABASE SchoolDB
FROM DISK = 'C:\Backups\SchoolDB.bak'
WITH REPLACE;
GO

-- Set the database back to multi-user mode
ALTER DATABASE SchoolDB SET MULTI_USER;
GO





