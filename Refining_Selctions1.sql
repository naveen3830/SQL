USE books;
INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
        ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
        ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

SELECT *FROM books;
SELECT author_lname from books;
-- DISTINCT function
SELECT DISTINCT author_lname from books;
SELECT DISTINCT released_year from books;
SELECT DISTINCT (CONCAT(author_fname, " ",author_lname) )from books;
SELECT DISTINCT author_fname,author_lname FROM books;
SELECT DISTINCT released_year,title FROM books;

-- Sorting our data using ORDER BY
SELECT book_id,title,author_lname FROM books;
INSERT INTO books(title,author_lname) VALUES("My Life","Naveen");
SELECT title,author_lname from books ORDER BY author_lname;
DELETE FROM books where title="My life";
SELECT title,author_lname FROM books ORDER BY author_lname DESC;
SELECT title,author_lname FROM books  ORDER BY released_year ASC;
SELECT title,released_year FROM books ORDER BY released_year;
SELECT title,released_year FROM books ORDER BY released_year DESC;
SELECT *FROM books ORDER BY pages DESC;
SELECT *FROM books ORDER BY released_year;

SELECT author_lname,released_year FROM books ORDER BY 2;
SELECT *FROM books ORDER BY pages;
SELECT *FROM books ORDER BY 7;
SELECT author_lname,released_year,title FROM books ORDER BY author_lname,released_year;
SELECT CONCAT(author_fname,' ',author_lname) AS author from books ORDER BY author;

-- LIMIT function
SELECT *FROM books ORDER BY PAGES DESC LIMIT 5;
SELECT *FROM books ORDER BY pages LIMIT 5;
SELECT title,released_year FROM books ORDER BY released_year LIMIT 5;
SELECT title,released_year FROM books ORDER BY released_year LIMIT 3,5;
SELECT title,pages,released_year FROM books ORDER BY pages,released_year LIMIT 15,2556332;
SELECT *FROM books LIMIT 5,15;

-- LIKE function
SELECT title,author_fname,author_lname FROM books WHERE author_lname like '%da%';
SELECT title FROM books WHERE title LIKE '%:%';           

SELECT *FROM books WHERE author_fname LIKE '_____';
SELECT *FROM books WHERE author_lname LIKE '%_n%';
SELECT *FROM books where title LIKE '%\%%';
SELECT *FROM books;
-- EXCERCISES;
SELECT title,pages  FROM books ORDER BY pages DESC LIMIT 1;
SELECT CONCAT(title,'-',released_year ) AS summary FROM books ORDER BY released_year DESC LIMIT 3;
SELECT title,author_lname FROM books WHERE author_lname LIKE '% %';
SELECT title,released_year,stock_quantity FROM books ORDER BY stock_quantity LIMIT 3;