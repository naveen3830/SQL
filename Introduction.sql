-- To show existing databases
SHOW databases;

-- creating a new databases
CREATE DATABASE soap;
CREATE database data;

-- Deleting a database
DROP database soap;

-- INtializing a DATABASE
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

INSERT into student(Name,RollNo,place) values("Abhi",1,"Bengaluru");
INSERT into student(Name,RollNo,place) values("Anu",2,"Mysore");
INSERT into student(RollNo,Name,place) values(3,"Adi","Bengaluru");

-- TO insert multiple values
INSERT INTO STUDENT(RollNo,Name,place)  values(4,"Bharat","Udupi"),
                                        (5,"Chinmay","Mysore"),
                                        (6,"Chirag","Tumkur");
select *from Student;

CREATE TABLE people(first_name VARCHAR(20),last_name VARCHAR(20),age int);
show columns from people;
DESC people;

INSERT INTO people(first_name,last_name,age) values("Tina","Belcher",13);
INSERT INTO people(first_name,last_name,age) values("BOb","Belcher",42),
                                                    ("Linda","Belcher",45),
                                                    ("Phillip","Frond",38),
                                                    ("Calvin","Fischoeder",70);
SELECT *FROM people;

INSERT INTO people(first_name,age) values("Tina",13);

drop table people;
-- Creating a table where null values are not allowed
CREATE TABLE people1(Name varchar(20) NOT NULL,age INT NOT NULL);
DESC people1;

INSERT into people1(Name,age) values("Naveen",25);
SELECT *FROM people1;