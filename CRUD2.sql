-- Exercises
CREATE DATABASE shirts_db;
USE shirts_db;
CREATE TABLE shirts(shirt_id int AUTO_INCREMENT, 
                    article VARCHAR(100),
                    color VARCHAR(100),
                    shirt_size VARCHAR(5),
                    last_worn INT,
                    PRIMARY KEY(shirt_id));
DESC shirts;

INSERT INTO shirts(article,color,shirt_size,last_worn) VALUES
("t-shirt","white","S",10),
("t-shirt","green","S",200),
("polo shirt","black","M",10),
("tank top","blue","S",50),
("t-shirt","pink","S",0),
("polo shirt","red","M",5),
("tank top","white","S",200),
("tank top","blue","M",15);

INSERT INTO shirts(article,color,shirt_size,last_worn) VALUES('polo shirt','purple','M',50);
select *from shirts;
SELECT article,color FROM shirts;
select article,color,shirt_size,last_worn from shirts where shirt_size="M";

UPDATE shirts SET shirt_size="M" WHERE article="polo shirt";
SELECT *FROM shirts;
UPDATE shirts set last_worn=0 where last_worn=15;
UPDATE shirts set shirt_size="XS",color="off white" where color="white";
DELETE FROM shirts where last_worn=200;
DELETE FROM shirts where article="tank top";
DELETE FROM shirts;
DROP table shirts;
SELECT DATABASE();



