CREATE DATABASE books;

USE books;

CREATE TABLE
    books (
        book_id INT NOT NULL AUTO_INCREMENT,
        title VARCHAR(100),
        author_fname VARCHAR(100),
        author_lname VARCHAR(100),
        released_year INT,
        stock_quantity INT,
        pages INT,
        PRIMARY KEY(book_id)
    );

INSERT INTO
    books (
        title,
        author_fname,
        author_lname,
        released_year,
        stock_quantity,
        pages
    )
VALUES (
        'The Namesake',
        'Jhumpa',
        'Lahiri',
        2003,
        32,
        291
    ), (
        'Norse Mythology',
        'Neil',
        'Gaiman',
        2016,
        43,
        304
    ), (
        'American Gods',
        'Neil',
        'Gaiman',
        2001,
        12,
        465
    ), (
        'Interpreter of Maladies',
        'Jhumpa',
        'Lahiri',
        1996,
        97,
        198
    ), (
        'A Hologram for the King: A Novel',
        'Dave',
        'Eggers',
        2012,
        154,
        352
    ), (
        'The Circle',
        'Dave',
        'Eggers',
        2013,
        26,
        504
    ), (
        'The Amazing Adventures of Kavalier & Clay',
        'Michael',
        'Chabon',
        2000,
        68,
        634
    ), (
        'Just Kids',
        'Patti',
        'Smith',
        2010,
        55,
        304
    ), (
        'A Heartbreaking Work of Staggering Genius',
        'Dave',
        'Eggers',
        2001,
        104,
        437
    ), (
        'Coraline',
        'Neil',
        'Gaiman',
        2003,
        100,
        208
    ), (
        'What We Talk About When We Talk About Love: Stories',
        'Raymond',
        'Carver',
        1981,
        23,
        176
    ), (
        "Where I'm Calling From: Selected Stories",
        'Raymond',
        'Carver',
        1989,
        12,
        526
    ), (
        'White Noise',
        'Don',
        'DeLillo',
        1985,
        49,
        320
    ), (
        'Cannery Row',
        'John',
        'Steinbeck',
        1945,
        95,
        181
    ), (
        'Oblivion: Stories',
        'David',
        'Foster Wallace',
        2004,
        172,
        329
    ), (
        'Consider the Lobster',
        'David',
        'Foster Wallace',
        2005,
        92,
        343
    );

SELECT * FROM books;

-- CONCAT FUNCTION

SELECT CONCAT("Hello", "world");

SELECT CONCAT('Hel', 'lo');

SELECT CONCAT(author_fname, '!!!') FROM books;

SELECT
    CONCAT(
        author_fname,
        " ",
        author_lname
    ) AS author_name
FROM books;

SELECT
    CONCAT_WS(
        "-",
        author_fname,
        author_lname
    ) AS author_name
FROM books;

-- SUBSTRING or SUBSTR FUNCTION

SELECT SUBSTRING("hello", 1, 2);

SELECT SUBSTRING("Hello World", 2, 5);

SELECT SUBSTRING('Hello World', 4);

SELECT SUBSTRING('Hello World', -1);

SELECT SUBSTRING('Hello World', -1);

SELECT SUBSTRING(title, 1, 15) FROM books;

SELECT
    SUBSTR(author_lname, 1, 1) AS author_initial,
    author_lname
FROM books;

SELECT
    CONCAT(SUBSTR(title, 1, 10), '.....') AS short_title
FROM books;

SELECT
    CONCAT(
        SUBSTR(author_fname, 1, 1),
        '.',
        SUBSTR(author_lname, 1, 1),
        '.',
    ) As initials
FROM books;

-- REPLACE FUNCTION

SELECT REPLACE("hwllo", 'w', 'e');

SELECT REPLACE ( 'cheese bread cofee milk', ' ', ' and ' ) AS rep;

SELECT REPLACE (title, ' ', '-') as updated FROM books;
