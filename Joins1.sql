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

-- To perform a (kind of useless) cross(cartesian) join:
SELECT *FROM customers,orders;

-- TO PERFORM INNER JOIN
SELECT *FROM customers
INNER JOIN orders ON customers.id=orders.customer_id;

SELECT first_name,last_name,amount from customers
INNER JOIN orders ON customers.id=orders.customer_id;

SELECT customers.id,first_name,customer_id from customers
INNER join orders ON customers.id=orders.customer_id;

SELECT first_name,last_name,sum(amount) as total FROM customers
INNER JOIN orders ON customers.id=orders.customer_id
GROUP BY first_name,last_name ORDER BY total;

-- TO PERFORM LEFT JOIN
SELECT first_name,last_name,amount as total from customers
LEFT JOIN orders ON customers.id=orders.customer_id;

SELECT first_name,last_name,sum(amount) as total from customers
LEFT JOIN orders ON customers.id=orders.customer_id GROUP BY first_name,last_name;

SELECT order_date,amount,first_name,last_name from orders
LEFT JOIN customers ON customers.id=orders.customer_id;

-- USE OF ISNULL() FUNCTION
SELECT first_name,last_name,IFNULL(SUM(amount),0) as total from customers
LEFT JOIN orders ON customers.id=orders.customer_id GROUP BY first_name,last_name;