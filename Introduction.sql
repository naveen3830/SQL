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


-- Exercise
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
-- Creating Table with DEFAULT values
CREATE TABLE people2(Name varchar(20) DEFAULT "No name",age INT DEFAULT 25);
DESC people2;
INSERT INTO people2(age) values(35);
INSERT INTO people2() values();
INSERT INTO people2(Name,age) values(NULL,NULL);
SELECT *FROM people2;
-- Creating table with Not null and default values
CREATE TABLE cats4 (    
    name VARCHAR(20) NOT NULL DEFAULT 'unnamed',    
    age INT NOT NULL DEFAULT 99 
);

INSERT INTO cats4(age) values(5);
INSERT INTO cats4(name,age) values("Helis",6);
SELECT *FROM cats4;
DROP TABLE cats4;

-- CREATING A PRIMARY KEY
CREATE TABLE cats4(catid int PRIMARY KEY,name VARCHAR(24),age int);
INSERT INTO cats4(catid,name,age) VALUES(1,"Bob",3),
                                        (2,"Bob",7),
                                        (3,"Ash",2),
                                        (4,"Tim",5);
            
-- Another way to create a primary key
CREATE TABLE cats4(catid int NOT NULL,name VARCHAR(24),age int,PRIMARY KEY(catid));
INSERT INTO cats4(catid,name,age) VALUES(1,"Bob",3),
                                        (2,"Bob",7),
                                        (3,"Ash",2),
                                        (4,"Tim",5);
            
SELECT *FROM cats4;
DESC cats4;