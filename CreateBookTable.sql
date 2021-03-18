-- Create a new table called '[Book]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Book]', 'U') IS NOT NULL
DROP TABLE [dbo].[Book]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Book]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1), -- Primary Key column
    [Title] NVARCHAR(70),
    [Summary] NVARCHAR(300),
    [Price] DECIMAL (10,2),
    [ISBN] NVARCHAR(50) NOT NULL UNIQUE,
    -- Specify more columns here
);
GO