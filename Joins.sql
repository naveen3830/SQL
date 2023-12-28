Use data;
show tables;
CREATE TABLE customers(
    id int PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
);

/*CREATE Table orders(
    id int PRIMARY key AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id int
);*/
DROP TABLE orders;
DROP TABLE customers;

-- CREATING A FOREIGN KEY
CREATE TABLE orders(
    id int PRIMARY key AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id int,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);
INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
    ('George', 'Michael', 'gm@gmail.com'),
    ('David', 'Bowie', 'david@gmail.com'),
    ('Blue', 'Steele', 'blue@gmail.com'),
    ('Bette', 'Davis', 'bette@aol.com');
SELECT *FROM customers;
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
    ('2017-11-11', 35.50, 1),
    ('2014-12-12', 800.67, 2),
    ('2015-01-03', 12.50, 2),
    ('1999-04-11', 450.25, 5);
INSERT INTO orders(order_date, amount, customer_id) VALUES ('2022-12-05',59.98,3);
SELECT *FROM orders;

-- TO FIND THE ORDERS PLACED BY GEORGE
SELECT id from customers where last_name='George';
SELECT *FROM orders where customer_id=1;
SELECT *FROM orders where customer_id=(SELECT id from customers where last_name='George');