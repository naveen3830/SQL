USE books;
-- NOT EQUALS OPERATOR
SELECT *FROM books WHERE released_year=2017;
SELECT *FROM books WHERE released_year!=2017 AND released_year!=2001; 
SELECT *FROM books WHERE author_lname!='Gaiman';
SELECT title FROM books where pages!=526;

-- NOT LIKE FUNCTION
SELECT title FROM books where title NOT LIKE '% %';
SELECT title,author_fname,author_lname FROM books WHERE author_fname NOT LIKE '%da%';
SELECT title FROM books WHERE title NOT LIKE '%a%'

-- GREATER THAN AND LESSER THAN OPERATORS
SELECT 80>45;
SELECT title,released_year FROM books WHERE released_year>2005;
SELECT title,pages FROM books WHERE pages>500;
SELECT 1 >NULL;

SELECT title,released_year FROM books WHERE released_year<2000;
SELECT title,pages FROM books where pages<500;
SELECT title,pages FROM books WHERE pages<=320 ORDER BY pages;
SELECT title,released_year FROM books where released_year>=2003 ORDER BY released_year;

-- LOGICAL AND,OR OPERATOR
SELECT 8>2 AND 4=4;
SELECT title,released_year FROM books WHERE author_lname='Eggers' AND released_year>2010;
SELECT title,pages FROM books where CHAR_LENGTH(title)>30 AND pages>500;

SELECT 1<5 OR 5<1;
SELECT title,pages FROM books where author_lname='Eggers' OR released_year>2010;
SELECT title,pages FROM books where CHAR_LENGTH(title)>30 OR pages>500;
SELECT title,pages FROM books WHERE pages<200 OR title LIKE '%stor%';

-- BETWEEN, NOT BETWEEN OPERATOR;
SELECT title,released_year FROM books WHERE released_year>=2004 AND released_year <=2015;
SELECT title,pages FROM books WHERE pages BETWEEN 200 AND 300;
SELECT title,released_year FROM books WHERE released_year BETWEEN 2004 AND 2014;
SELECT title,released_year FROM books where released_year BETWEEN 1900 AND 2000;

SELECT title,released_year FROM books where released_year NOT BETWEEN 2004 AND 2014;
