USE books;
SELECT *FROM books;
-- IN, NOT IN OPERATOR;
SELECT *FROM books WHERE author_lname='Lahiri' OR author_lname='Carver';
SELECT *FROM books WHERE author_lname IN ('Lahiri','Carver');
SELECT title,released_year from books WHERE released_year IN (2003,2000);
SELECT title,author_lname FROM books where author_lname NOT IN ('Lahiri,Carver','Eggers');
SELECT title,released_year FROM books where released_year>2000 AND released_year %2 !=0;

-- CASE FUNNCTION
SELECT title,released_year,
CASE
    WHEN released_year>2000 THEN 'modern literature'
    ELSE '20th century literature'
END AS genre
FROM books;

SELECT title,stock_quantity,
CASE
WHEN stock_quantity BETWEEN 0 AND 40 THEN '*'
WHEN stock_quantity BETWEEN 41 AND 70 THEN '**'
WHEN stock_quantity BETWEEN 71 AND 100 THEN '***'
WHEN stock_quantity BETWEEN 101 AND 140 THEN '****'
ELSE '*****'
END AS ex
FROM books;

SELECT title,stock_quantity,
CASE
WHEN stock_quantity <=40 THEN '*'
WHEN stock_quantity <=70 THEN '**'
WHEN stock_quantity <=100 THEN '***'
WHEN stock_quantity <=140 THEN '****'
ELSE '*****'
END AS rating
FROM books;

-- IS NULL, NOT NULL OPERATORS
SELECT *FROM books WHERE author_lname IS NULL;
SELECT *FROM books where title IS NULL; 
DELETE FROM books WHERE title IS NULL;

-- EXERCISES
SELECT title,released_year FROM books WHERE released_year<1980;
SELECT title,author_lname FROM books WHERE author_lname='Eggers' OR author_lname='Chabon';
SELECT title,author_lname,released_year FROM books WHERE author_lname='Lahiri' AND released_year>2000;
SELECT title,pages FROM books WHERE pages BETWEEN 100 AND 200;
SELECT title,author_lname FROM books WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';

SELECT title,author_lname,
CASE
WHEN title LIKE '%stories%' THEN 'short stories'
WHEN title ='A Heartbreaking Work of Staggering Genius' OR title='Just Kids' THEN 'Memoir'
ELSE 'Novel'
END AS 'TYPE'
FROM books; 

SELECT author_fname,author_lname,CONCAT(COUNT(*),' ','book') AS 'COUNT' FROM books GROUP BY author_fname,author_lname;