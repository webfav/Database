-- Create a new table called '[BookCategory]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[BookCategory]', 'U') IS NOT NULL
DROP TABLE [dbo].[BookCategory]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[BookCategory]
(
    [BookId] INT NOT NULL,
    [CategoryId] INT NOT NULL,
    PRIMARY KEY (BookId, CategoryId),
    FOREIGN KEY (BookId) REFERENCES Book(Id),
    FOREIGN KEY (CategoryId) REFERENCES Category(Id)
);
GO