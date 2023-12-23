USE books;
-- REVERSE FUNCTION
SELECT REVERSE('Hello world');
SELECT REVERSE(NULL);
SELECT REVERSE(author_lname) FROM books;

-- CHAR_LENGTH FUNCTION

SELECT CHAR_LENGTH("HELLO");
SELECT LENGTH("HELLO");
SELECT CHAR_LENGTH(title), title from books;

-- UPPER AND LOWER CASE;

SELECT UPPER('hello');
SELECT LOWER('NAVeEN'); 

SELECT UPPER(title) FROM books;

SELECT CONCAT('I Love ',upper(title),' !!!') FROM books;

-- INSERT FUNCTION
SELECT INSERT("Hello Bobby",6,0,' there');
SELECT INSERT("Hello Bobby",6,4," there");
SELECT INSERT("Hello Bobby",6,6,"there");

-- LEFT and Right Function
SELECT LEFT("Chidambaram",5);
SELECT RIGHT("Chidambaram",3);
SELECT LEFT(title,3) From books;

-- Repeat function
SELECT REPEAT("MySQL ",3);
SELECT REPEAT(" Hi",5)

-- TRIM function

SELECT Trim("    Boston    ");
SELECT Trim("    Hello   World   ");
SELECT TRIM(Leading "." FROM "......Hello.>>");
SELECT TRIM(TRAILING ".>>" FROM "......Hello.>>");
SELECT TRIM(BOTH "." FROM "......Hello....");

-- Exercises
SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));

SELECT REPLACE(CONCAT('I'," ","like"," ","cats"),
' ',
'-');
select *from books;
SELECT REPLACE(title," ","-") From books;
SELECT author_fname AS forwards,author_lname AS backwords FROM books;
SELECT UPPER(CONCAT(author_fname," ",author_lname)) AS fullname_in_caps FROM books;
SELECT CONCAT(title," was realeased in",released_year) AS blurb FROM books;
SELECT title,LENGTH(title) FROM books;

SELECT 
    CONCAT(LEFT(TITLE, 10), '...') AS short_title,
    CONCAT(LEFT(author_fname, 6)," ", LEFT(author_lname, 4)) AS author,
    CONCAT(stock_quantity," ","in"," ","stock") AS quantity
FROM books WHERE released_year=2001;

