--creating database for homework_1

create database homework_1

--basic level tasks
--task_1

--Data –  informations like numbers, names, or dates. On its own, it doesn’t mean much until we organize it.

--Database – A place where data is stored in an organized way so it can be easily found and used.

--Relational Database – A type of database that stores data in tables and connects them using relationships like primary and foreign keys.

--Table – A structure inside a database that holds data in rows (records) and columns (fields).



----- task_2 
-----List five key features of SQL Server:

--Stores and manages large amounts of data.

--Supports secure login and user permissions.

--Allows backup and restore of data.

--Can copy data to other servers (replication).

--Has tools for moving and changing data (like SSIS for ETL).



----- task_3
----- What are the different authentication modes available when connecting to SQL Server?

--Windows Authentication – Uses your Windows login to connect to SQL Server. No need to enter a separate username or password.

--SQL Server Authentication – Uses a username and password created inside SQL Server to log in.



--Medium Level tasks

Create database SchoolDB

USE SchoolDB

CREATE TABLE Students (StudentID INT, Name VARCHAR(50))

SELECT * FROM Students



-- task_3 

---- 3. Describe the differences between SQL Server, SSMS, and SQL:

--SQL Server – It’s the actual database software where data is stored and managed. It runs in the background and handles data processing.

--SSMS (SQL Server Management Studio) – It’s the tool (or app) we use to interact with SQL Server. It gives a nice interface to write queries and manage databases.

--SQL (Structured Query Language) – It’s the language we use to talk to the database. We use it to create tables, insert data, search, update, and more.



----Hard Level Tasks

--task_1


--DQL: (Data Query Language)	Gets data from the database	 --  SELECT 

--DML: (Data Manipulation Language)  Adds, updates, deletes data	 --  INSERT, UPDATE, DELETE

--DDL: (Data Definition Language)	Creates or changes tables  -- 	CREATE, ALTER, DROP, TRUNCATE

--DCL: (Data Control Language)	Controls access to data	 --  GRANT, REVOKE

--TCL (Transaction Control Language)  Manages transactions	-- BEGIN TRAN, COMMIT TRAN, ROLLBACK TRAN


---- TASK_2



select * from Students

INSERT INTO Students ( StudentID, Name) VALUES (1, 'Anas')

INSERT INTO Students ( StudentID, Name) VALUES (2, 'Ahmad')

INSERT INTO Students ( StudentID, Name) VALUES (3, 'Sam')


Select * from Students



--TASK 3

----Steps to Restore AdventureWorksDW2022.bak in SQL Server:




--I opened SQL Server Management Studio (SSMS)

--Then I right-clicked on "Databases" in the left panel and chose "Restore Database..." from the menu

--In the window that popped up, I selected "Device" as the source and clicked the "..." button

--I clicked Add, and then I found and selected the file called
--AdventureWorksDW2022.bak 

--After clicking OK, the database name was filled in automatically

--Finally, I clicked OK to start restoring. After a few seconds, I got a message saying the database was restored successfully.
