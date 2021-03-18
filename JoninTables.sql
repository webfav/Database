
-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'

    SELECT Book.Id AS BookId, Author.Id AS AuthorId, Category.Id AS CategoryId, Title, CategoryName, FirstName, LastName, Summary, ISBN
    FROM [dbo].[Book]
    LEFT OUTER JOIN BookAuthor ON Book.Id = BookAuthor.BookId
    LEFT OUTER JOIN Author ON Author.Id = BookAuthor. AuthorId
    LEFT OUTER JOIN BookCategory ON Book.Id = BookCategory.BookId
    LEFT OUTER JOIN Category ON Category.Id = BookCategory. CategoryId
ORDER BY BookId;
GO

-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'

    SELECT Book.Id AS BookId, Author.Id AS AuthorId, Category.Id AS CategoryId, Title, CategoryName, FirstName, LastName, Summary, ISBN
    FROM Book, BookAuthor, Author, BookCategory, Category
    WHERE Book.Id = BookAuthor.BookId
    AND Author.Id = BookAuthor. AuthorId
    AND Book.Id = BookCategory.BookId
    AND Category.Id = BookCategory. CategoryId
ORDER BY BookId;
GO