-- CRUD - CREATE READ UPDATE DELETE
USE data;
SHOW TABLES;
-- Create the new cats table:
CREATE TABLE cats (
    cat_id INT auto_increment,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
); 
DESC cats;-- Insert some cats:
INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
    ('Cindy', 'Maine Coon', 10),
    ('Dumbledore', 'Maine Coon', 11),
    ('Egg', 'Persian', 4),
    ('Misty', 'Tabby', 13),
    ('George Michael', 'Ragdoll', 9),
    ('Jackson', 'Sphynx', 7);
Drop TABLE cats;
-- READ THE DATA FROM TABLE;
-- TO GET ALL COLUMNS;
SELECT *FROM cats;
-- TO GET ONLY name COLUMN;
SELECT name FROM cats;
-- TO GET ONLY age COLUMN;
SELECT age FROM cats;
-- TO GET BOTH name and breed COLUMN;
SELECT name,breed FROM cats;
-- Use where to specify a condition:
SELECT *FROM cats WHERE age=4;
-- Use AND to specify multiple conditions:
SELECT name,breed FROM cats WHERE name="Ringo";
SELECT *FROM cats WHERE age=4 AND breed="Tabby";
-- Use OR to specify multiple conditions:
SELECT *FROM cats WHERE age=4 OR breed="Tabby";
-- Use NOT to specify multiple conditions:
SELECT *FROM cats WHERE NOT breed="Tabby";
-- Use LIMIT to specify the number of rows to return:

-- EXERCISES
SELECT cat_id from cats;
SELECT name,breed from cats;
SELECT name,age from cats WHERE breed="Tabby";
SELECT cat_id,age from cats where age=cat_id;
-- Use 'AS' to alias a column in your results (it doesn't actually change the name of the column in the table)
SELECT cat_id AS id  from cats;

--Updating Data
UPDATE cats SET breed="pom" where name="Ringo";
SELECT *FROM cats;
UPDATE cats  SET name="Harry" where age=11;
UPDATE cats SET age=8 WHERE name="Jackson";
UPDATE cats SET name='Jack' WHERE name='Jackson';
UPDATE cats SET breed="British Shorthair" WHERE name='Ringo';
UPDATE cats SET age=12 WHERE breed="Maine Coon";
SELECT *FROM employee1;

-- Deleting data from the table
DELETE FROM employee1 WHERE id=1; 
DELETE FROM cats WHERE name="Egg";
DELETE from employee1;
SELECT *FROM cats;
UPDATE cats set age=7 WHERE name='Jack';
DELETE FROM cats where age=4;
DELETE FROM cats where age=cat_id;
DELETE from cats;