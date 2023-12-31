-- SUM FUNCTION
USE books;
SELECT author_lname,MIN(released_year),MAX(released_year) FROM books GROUP BY author_lname;
SELECT author_fname,MAX(released_year),MIN(released_year) FROM books GROUP BY author_fname;
SELECT author_lname,COUNT(*) AS books_written,MIN(released_year) AS earliest_release,MAX(released_year) AS latest_release FROM books GROUP BY author_lname ORDER BY books_written;
SELECT
    author_fname,
    author_lname,
    COUNT(*) AS books_written,
    MIN(released_year) AS earliest_written,
    MAX(released_year) AS latest_written 
FROM 
    books 
GROUP BY 
    author_fname, author_lname;
SELECt SUM(3+4);
SELECT SUM(pages) FROm books;
SELECt author_lname,SUM(pages) FROM books GROUP BY author_lname;
SELECT author_lname,sum(released_year) FROM books GROUP BY author_lname;
SELECT SUM(author_lname) FROM books;

-- AVERAGE FUNCTION
SELECT AVG(released_year) FROM books;
SELECT AVG(pages) FROM books;
SELECT AVG(stock_quantity) FROM books;
SELECT AVG(author_lname) FROM books;
SELECT released_year,AVG(stock_quantity),COUNT(*) FROM books GROUP BY released_year ORDER BY released_year DESC;

-- EXERCISES
SELECT COUNT(*) FROM books;
SELECT 
released_year,
COUNT(*) FROM books 
GROUP BY released_year;
SELECT SUM(stock_quantity) FROM books;
SELECT
author_fname,author_lname,
AVG(released_year) FROM books
GROUP BY author_fname,author_lname;
SELECT 
CONCAT(author_fname,' ', author_lname) AS author,
pages FROM books 
WHERE pages=(SELECT MAX(pages) FROM books);
SELECT 
released_year,
COUNT(*) AS '#books',
AVG(pages) AS 'avg_pages'from books 
GROUP BY released_year;