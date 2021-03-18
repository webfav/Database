SELECT TOP (1000) [Id]
      ,[Title]
      ,[Summary]
      ,[Price]
      ,[ISBN]
  FROM [dbo].[Book]

-- It would be wise to first check what the current identify value is. 
  DBCC CHECKIDENT (Book, NORESEED)

--The following SQL statement deletes all rows in the "Book" table, without deleting the table:
  DELETE FROM Book;

--To set the value of the next ID to be 1000, I can use this command:
-- DBCC CHECKIDENT (orders, RESEED, 999)
  DBCC CHECKIDENT (Book, RESEED, 0)
