use sub;
select *from movies;
DESC movies;

--1) SELECT movie with highest rating
SELECT max(score) from movies;
SELECT *from movies where score=9.3;
--subquery
select *FROM movies
where score=(SELECT MAX(score) from movies);
