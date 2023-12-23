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


