-- CRUD - CREATE READ UPDATE DELETE
SHOW TABLES;
-- Create the new cats table:
CREATE TABLE cats (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
); 
DESC cats;
-- Insert some cats:
INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
    ('Cindy', 'Maine Coon', 10),
    ('Dumbledore', 'Maine Coon', 11),
    ('Egg', 'Persian', 4),
    ('Misty', 'Tabby', 13),
    ('George Michael', 'Ragdoll', 9),
    ('Jackson', 'Sphynx', 7);

-- READ THE DATA FROM TABLE;
-- TO GET ALL COLUMNS;
SELECT *FROM cats;
-- TO GET ONLY name COLUMN;
SELECT name FROM cats;
-- TO GET ONLY age COLUMN;
SELECT age FROM cats;
-- TO GET BOTH name and age COLUMN;
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





