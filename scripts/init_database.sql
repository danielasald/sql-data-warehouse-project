/*
===============================================================
Create Database and Schemas
===============================================================
Script purpose:
  This script creates a new databse names 'DataWarehouse' after checking if it already exist.
  If the database exists, it is dropped and recreated. Additionally, the script sets ip three
  schemas within the database: 'bronze', 'silver', and 'gold'.

WARNING:
  Running this script will drop the entire 'DataWarehouse' database if it exist. All data in 
  the database will be permanentely deleted. Proceed with caution and ensure you hace proper 
  backups befor running this script.
*/

USE master;
GO

-- Dop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create Darabase 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO
  
USE DataWarehouse;
GO

-- Create schemas
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
