-- Create a new stored procedure called 'stp_GetBookDetails' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'stp_GetBookDetails'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.stp_GetBookDetails
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.stp_GetBookDetails
    @bookId INT
AS
BEGIN
    -- body of the stored procedure
    SELECT Book.Id AS BookId, Author.Id AS AuthorId, Title, FirstName, LastName, Summary, ISBN
    FROM [dbo].[Book]
    LEFT JOIN BookAuthor
    ON Book.Id = BookAuthor.BookId
    LEFT JOIN Author
    ON Author.Id = BookAuthor. AuthorId
    WHERE book.Id = @bookId
END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.stp_GetBookDetails 1 /*value_for_param1*/, 2 /*value_for_param2*/
GO