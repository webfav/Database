-- Create a new table called '[Category]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Category]', 'U') IS NOT NULL
DROP TABLE [dbo].[Category]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Category]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1), -- Primary Key column
    [CategoryName] NVARCHAR(70) NOT NULL, 
);
GO