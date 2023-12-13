/* -- ASSIGNMENT-1
-- Write the statement to create a new database, named ProjectWork.
-- Write the SQL-statements to create two tables in it: a project table and een employees table.
-- There is a one-to-many relationship between these two tables: each employee can only work in one project, 
    each project can have many employees.

-- In de two tables there must be defined at least three columns each, a primary key, and in one of them a foreign key.
-- Use the INSERT statement to populate the tables with at least three rows each.
-- -- The content of the Persons table must be used to populate the employees table.
-- -- The project table must have at least the three columns ProjectID, ProjectName and Location.

-- Write all these statements in one script file: Projectwork1.sql.  */





-- Create a new database called 'ProjectWork'
-- Connect to the 'ProjectWork' database to run this snippet
USE ProjectWork
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT [name]
        FROM sys.databases
        WHERE [name] = N'ProjectWork'
)
CREATE DATABASE ProjectWork
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
    [ProjectID] INT NULL 
    CONSTRAINT FK_ProjectID FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID)
    
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


SELECT *
FROM Employees