-- Create a new table called '[BookAuthor]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[BookAuthor]', 'U') IS NOT NULL
DROP TABLE [dbo].[BookAuthor]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[BookAuthor]
(
    [BookId] INT NOT NULL,
    [AuthorId] INT NOT NULL,
    PRIMARY KEY (BookId, AuthorId),
    FOREIGN KEY (BookId) REFERENCES Book(Id),
    FOREIGN KEY (AuthorId) REFERENCES Author(Id)
);
GO