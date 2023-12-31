USE data;
SELECT title,rating,CONCAT(first_name,' ',last_name) AS name from reviews 
INNER JOIN series ON reviews.series_id=series.id
INNER JOIN reviewers ON reviews.series_id=reviewers.id;

-- TO CREATE A VIEW
CREATE VIEW full_review AS
SELECT title,rating,CONCAT(first_name,' ',last_name) AS name,genre,released_year from reviews 
INNER JOIN series ON reviews.series_id=series.id
INNER JOIN reviewers ON reviews.series_id=reviewers.id;
DROP VIEW full_review;
SELECT *FROM  full_review;

SELECT genre,AVG(rating) FROM full_review GROUP BY genre ORDER BY genre;
SELECT DISTINCT title,released_year,genre FROM full_review ORDER BY title;

-- A view is not updatable if it contains any of the following:
-- Aggregate functions or window functions (SUM(), MIN(), MAX(), COUNT(), and so forth)
-- DISTINCT
-- JOINS
-- SUB QUERY
-- GROUP BY
-- HAVING  etc

DELETE FROM full_review WHERE released_year=2009;
CREATE VIEW ordered_series AS
SELECT *FROM series ORDER BY released_year;
SELECT *FROM ordered_series;
INSERT INTO ordered_series (title,released_year,genre) VALUES('The Great',2014,'Comedy');
DELETE FROM ordered_series WHERE title='The GreaT';

-- REPLACING/ALTERING THE VIEW
CREATE OR REPLACE VIEW ordered_series AS
SELECT *FROM series ORDER BY released_year DESC;

ALTER VIEW ordered_series AS
SELECT *FROM series ORDER BY released_year;
DROP VIEW ordered_series;

-- HAVING FUNCTION
SELECT *FROM full_review;
SELECT title,avg(rating) FROM full_review 
GROUP BY title HAVING COUNT(rating)>2;

-- WITH ROLLUP FUNCTION
SELECT title,avg(rating) FROM full_review GROUP BY title WITH ROLLUP;
SELECT title,count(rating) FROM full_review GROUP BY title WITH ROLLUP;
SELECT released_year,genre,avg(rating) FROM full_review GROUP BY released_year,genre WITH ROLLUP;