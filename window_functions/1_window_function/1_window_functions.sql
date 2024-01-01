USE data;
CREATE TABLE employees (
    emp_no INT PRIMARY KEY AUTO_INCREMENT,
    department VARCHAR(20),
    salary INT
);
 
INSERT INTO employees (department, salary) VALUES
('engineering', 80000),
('engineering', 69000),
('engineering', 70000),
('engineering', 103000),
('engineering', 67000),
('engineering', 89000),
('engineering', 91000),
('sales', 59000),
('sales', 70000),
('sales', 159000),
('sales', 72000),
('sales', 60000),
('sales', 61000),
('sales', 61000),
('customer service', 38000),
('customer service', 45000),
('customer service', 61000),
('customer service', 40000),
('customer service', 31000),
('customer service', 56000),
('customer service', 55000);

SELECT *FROM employees;
DESC employees;

SELECT department,AVG(salary) FROM employees GROUP BY department;
SELECT AVG(salary) from employees;
SELECT AVG(salary) OVER() from employees;
SELECT department,salary,AVG(salary) over() FROM employees;
SELECT department,salary,AVG(salary) OVER(),MIN(salary) OVER(),MAX(salary) over() FROM employees;

-- PARTITION BY FUNCTION
SELECT 
    emp_no,
    department,
    salary,
    AVG(salary) OVER(PARTITION BY department) AS dept_avg,
    AVG(salary) OVER() AS comp_avg
FROM employees;
SELECT emp_no,department,salary,COUNT(*) OVER(PARTITION BY department) FROM employees;

SELECT 
    emp_no,
    department,
    salary,
    SUM(salary) OVER(PARTITION BY department) AS dept_payroll,
    SUM(salary) OVER() AS total_payroll
FROM employees; 

SELECT 
    emp_no,
    department,
    salary,
    SUM(salary) OVER(PARTITION BY department ORDER BY salary) AS rolling_dept_payroll,
    SUM(salary) OVER(PARTITION BY department) AS dept_payroll
FROM employees; 

SELECT 
    emp_no, 
    department, 
    salary, 
    MIN(salary) OVER(PARTITION BY department ORDER BY salary DESC) as rolling_min
FROM employees;