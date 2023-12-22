-- To show existing databases
SHOW databases;
-- creating a new databases
CREATE DATABASE soap;
CREATE database data;

-- Deleting a database
DROP database soap;

-- Initializing a DATABASE
USE data;

--TO see in which database I am working
SELECT database();
CREATE DATABASE soap;
select database();

use data;
-- To create a table 
CREATE Table student(
    Name VARCHAR(100),
    RollNo VARCHAR(100),
    Place VARCHAR(100)
);
-- To describe the structure of the TABLE
show columns from student;
DESC student;
-- To DELETE a table
DROP TABLE STUDENT;
CREATE TABLE pastries(
    Name VARCHAR(20),
    QNT INT
    );
SHOW COLUMNS FROM pastries;
-- tO DELETE THE
DROP TABLE PASTRIES;

