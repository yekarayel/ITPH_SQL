/*
-- ASSIGNMENT-2
-- Write the SQL-statement to create a new database, named ManyToMany.
-- Write the SQL-statements to create two tables in it: a project table and an employees table, each having a primary key column (e.g. projectID and employeeID).

-- There is a many-to-many relationship between these two tables: each employee can work in many projects, each project can have many employees.
-- Create a third table, with two columns: 
-- One column is the foreign key referencing the primairy key of the project table.
-- The other column is the foreign key referencing the primairy key of the employees table.
-- These two columns together are the primary key of this third table.

-- In de first two tables there must be defined at least three columns each.
-- Use the INSERT statement to populate the three tables with at least three rows each.

-- Write all these statements in one script file: ManyToMany.sql.   */


-- Create a new database called 'ManyToMany'
-- Connect to the 'master' database to run this snippet
USE ManyToMany
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT [name]
        FROM sys.databases
        WHERE [name] = N'ManyToMany'
)
CREATE DATABASE ManyToMany
GO

-- Create a new table called '[Project]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Project]', 'U') IS NOT NULL
DROP TABLE [dbo].[Project]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Project]
(
    [ProjectID] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [ProjectName] NVARCHAR(50) NOT NULL,
    [Location] NVARCHAR(50) NOT NULL
    -- Specify more columns here
);
GO

-- Insert into projects table 
INSERT INTO Project(
ProjectID, ProjectName, Location)
VALUES 
(1, 'Project1', 'Amsterdam'),
(2, 'Project2', 'Utrecht'),
(3, 'Project3', 'Zwolle')


-- Create a new table called '[Employees]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Employees]', 'U') IS NOT NULL
DROP TABLE [dbo].[Employees]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Employees]
(
    [employeeID] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [name] NVARCHAR(50) NOT NULL,
    [firstname] NVARCHAR(50) NOT NULL,
    [sex] NVARCHAR(50) NOT NULL,
    [language_id] NVARCHAR(50) NOT NULL,
    [service_id] NVARCHAR(50) NOT NULL,
    [birthdate] DATE NULL,
    [yearsalary] DECIMAL(10,2) NOT NULL,
    [holidayallowance] DECIMAL(10,2) NOT NULL,

    
    -- Specify more columns here
);
GO




INSERT INTO dbo.Employees
(employeeID,name,firstname,sex,language_id,service_id,birthdate,yearsalary,holidayallowance)

VALUES
(1,'Heyvaert'                      ,'Peter'                         ,'M',5,3,NULL,35000,3300),
(2,'Vermeiren'                     ,'Willy'                         ,'M',3,2,'19650112',18000,1600),
(3,'Pasmans'                       ,'Dirk'                          ,'M',5,1,'19700315',65000,6300),
(4,'Pattoor'                      ,'Wim'                           ,'M',5,3,'19901124',25000,2300),
(5,'Kloetens'                      ,'Marc'                          ,'M',5,4,NULL,17000,1500),
(6,'Nijsen'                        ,'Corinne'                       ,'V',5,4,'19810830',27000,2500),
(7,'Van Sanden'                    ,'Staf'                          ,'V',3,3,'19601026',23000,2100),
(8,'Van Puym'                      ,'Petra'                         ,'V',3,3,'19910317',33000,3100),
(9,'Piers'                     ,'Tamara'                        ,'V',5,2,'19870729',29000,2700),
(10,'Puyseleer'                     ,'Raf'                           ,'M',5,3,NULL,38000,3600),
(11,'Van Brande'                    ,'Ingrid'                        ,'V',3,3,'19701205',28000,2600),
(12,'Rombaut'                       ,'Jeroen'                        ,'M',5,1,'19730109',40000,3800),
(13,'De Fleur'                      ,'Thomas'                        ,'M',1,2,NULL,37000,3500),
(14,'Dierxcens'                     ,'Jacques'                       ,'M',3,2,'19950312',26000,2400),
(15,'Van Goethem'                   ,'Eric'                          ,'M',5,3,'19760102',22000,2000),
(16,'Huyghen'                       ,'Raf'                           ,'M',5,3,'19930428',35000,3200),
(17,'Stoffelen'                     ,'Jozef'                         ,'M',5,2,'19780411',22000,2000),
(18,'Moonen'                        ,'Staf'                          ,'M',3,2,NULL,19000,1700),
(19,'Ysebaert'                      ,'Sabine'                        ,'V',5,3,'19870809',36000,3400),
(20,'Michielsen'                    ,'Veerle'                        ,'V',3,3,'19681205',22000,2000),
(21,'Verpooten'                     ,'Marleen'                       ,'V',5,3,'19791222',23000,2100),
(22,'Machtels'                      ,'Marc'                         ,'M',5,3,NULL,29000,2700),
(23,'Michiels'                      ,'Hilde'                         ,'V',3,1,'19951201',36000,3400)


-- Create a new table called '[ProjectEmployees]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[ProjectEmployees]', 'U') IS NOT NULL
DROP TABLE [dbo].[ProjectEmployees]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[ProjectEmployees]
(
    ProjectID INT,
    employeeID INT,
    CONSTRAINT FK_ProjectID FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID),
    CONSTRAINT FK_employeeID FOREIGN KEY (employeeID) REFERENCES Employees(employeeID)
    -- Specify more columns here
);
GO



SELECT *
FROM Employees

SELECT *
FROM ProjectEmployees