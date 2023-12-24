-- AGGREGATE FUNCTIONS
USE books;
SELECT *FROM books;
SELECT COUNT(*) FROM books;
SELECT COUNT(author_fname) FROM books;
INSERT INTO books() values();
INSERT INTO books() values();
SELECT COUNT(*) FROM books;
DELETE FROM books where book_id=25;
SELECT COUNT(DISTINCT author_lname) FROM books;
SELECT COUNT(DISTINCT title) FROM books;
SELECT COUNT(DISTINCT released_year ) FROM books;
SELECT COUNT(*) FROM books WHERE title LIKE '%The%';

-- GROUP BY FUNCTION
SELECT author_lname FROM books GROUP BY author_lname;
SELECT author_lname,COUNT(*) FROM books GROUP BY author_lname;
SELECT author_lname,COUNT(*) AS books_written FROM books GROUP BY author_lname ORDER BY books_written DESC;
SELECT released_year,COUNT(*) AS year from books GROUP BY released_year ORDER BY year DESC;
SELECT released_year,count(title) FROM books GROUP BY released_year;

-- SELECT *FROM books GROUP BY author_lname;

-- MIN MAX FUNCTIONS;
SELECT MIN(released_year) FROM books;
SELECT MIN(author_lname) FROM books;
SELECT MIN(pages) FROM books;
SELECT MAX(released_year) FROM books;
SELECT MAX(pages) FROM books;
SELECT MIN(released_year) FROM books;

SELECT title,pages FROM books ORDER BY pages DESC LIMIT 1;
SELECT title,pages FROM books ORDER BY pages LIMIT 3;
INSERT INTO books(title,pages) VALUES("MY life",634);
-- SUBQUERIES IN SQL
SELECT title,pages FROM books
WHERE pages=(SELECT MIN(pages) FROM books);
SELECT title,released_year FROM books
where released_year=(SELECT MIN(released_year) FROM books);
SELECT title,pages FROM books
WHERE pages=(SELECT MAX(pages) FROM books);
SELECT title,released_year FROM books
WHERE released_year=(SELECT MAX(released_year) FROM books);

SELECT author_fname,author_fname,COUNT(*) from books GROUP BY author_fname,author_lname;

SELECT CONCAT(author_fname,' ',author_lname) AS author,count(*) FROM books GROUP BY author;

SELECT author_lname,MIN(released_year),MAX(released_year) FROM books GROUP BY author_lname;
SELECT author_fname,MAX(released_year),MIN(released_year) FROM books GROUP BY author_fname;
