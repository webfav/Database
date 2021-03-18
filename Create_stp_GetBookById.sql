-- Create a new stored procedure called 'stp_GetBookById' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'stp_GetBookById'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.stp_GetBookById
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.stp_GetBookById
@bookId int
AS
BEGIN
    -- body of the stored procedure
    SELECT Id, Title, Summary, ISBN
    FROM [dbo].[Book]
    WHERE Id = @bookId
END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.stp_GetBookById
GO