    SELECT Book.Id AS BookId, Author.Id AS AuthorId, Title, FirstName, LastName, Summary, ISBN
    FROM [dbo].[Book]
    LEFT JOIN BookAuthor
    ON Book.Id = BookAuthor.BookId
    LEFT JOIN Author
    ON Author.Id = BookAuthor. AuthorId
    WHERE book.Id = 2