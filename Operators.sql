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
CREATE TABLE Person (
    person_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);
DROP table person;
INSERT INTO Person (name, birthdate, birthtime, birthdt) VALUES
('John Doe', '1990-05-15', '12:30:00', '1990-05-15 12:30:00'),
('Jane Smith', '1985-08-20', '08:45:00', '1985-08-20 08:45:00'),
('Bob Johnson', '2000-11-10', '18:15:00', '2000-11-10 18:15:00');
SELECT *FROM person;
SELECT *FROM person WHERE YEAR(birthdate)<2000;
SELECT *FROM person WHERE birthtime > '9:00:00';
SELECT *FRom person WHERE hour(birthtime) >9;
SELECT *FROM person WHERE birthtime BETWEEN CAST('12:00:00' AS TIME) AND  CAST('16:00:00' AS TIME);
