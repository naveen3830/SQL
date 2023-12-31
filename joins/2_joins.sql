USE data;
SELECT *FROM customers;
SELECT *FROM orders;

-- TO PERFORM RIGHT JOIN
-- SELECT EVERYTHING FROM B ALONG WITH ANY MATCHING RECORD IN A
SELECT first_name,last_name,order_date,amount FROM customers
RIGHT JOIN orders ON customers.id=orders.customer_id;

SELECT order_date,amount,first_name,last_name FROM orders
RIGHT JOIN customers ON customers.id=orders.customer_id;

-- ON DELETE CASCADE
DELETE FROM customers where last_name='George';
CREATE TABLE customers(
    id int PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
);
CREATE TABLE orders(
    id int PRIMARY key AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id int,
    FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE CASCADE
);

DELETE FROM customers WHERE last_name='George';
SELECT *FROM customers;
SELECT *FROM orders;
DELETE FROM orders WHERE id=2;
DELETE FROM customers WHERE id=2;

-- EXERCISES;
CREATE TABLE students(id int PRIMARY key AUTO_INCREMENT,name VARCHAR(50) NOT NULL);
INSERT INTO students (name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

CREATE TABLE papers(student_id int,title VARCHAR(50),grade int,Foreign Key (student_id) REFERENCES students(id));
INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

SELECT *FROM students;
SELECT *FROM papers;

SELECT name,title,grade FROM students
INNER JOIN papers ON students.id=papers.student_id ORDER BY grade DESC;

SELECT name,title,grade FROM students
LEFT JOIN papers ON students.id=papers.student_id;

SELECT name,IFNULL(title,'MISSING'),IFNULL(grade,0) FROM students
LEFT JOIN papers ON students.id=papers.student_id;

SELECT name,IFNULL(avg(grade),0) AS average FROM students
LEFT JOIN papers ON students.id=papers.student_id GROUP BY name ORDER BY average DESC;
SELECT name,IFNULL(avg(grade),0) AS average,
CASE
WHEN IFNULL(avg(grade),0)>=75 THEN 'passing'
ELSE 'failing'
END AS passing_status
FROM students
LEFT JOIN papers ON students.id=papers.student_id
GROUP BY name 
ORDER BY average DESC;

