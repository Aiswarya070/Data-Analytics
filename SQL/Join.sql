CREATE DATABASE new_schema;
USE new_schema;
CREATE TABLE employees(emp_id int PRIMARY KEY,f_name VARCHAR(20),department_id INT );
INSERT INTO employees VALUES (1,"Amalu",1001),(2,"Jessi",1002),(3,"Monica",1003),(4,"David",1004),(5,"Davood",1005);

CREATE TABLE department(dep_id INT PRIMARY KEY,dep_name varchar(25));
INSERT INTO department VALUES(1001,"Cyber Security"),(1002,"Python"),(1003,"Java"),(1004,"AI"),(1005,"Digital Marketing");
SHOW tables;
SELECT * FROM employees;
SELECT * FROM department;
                             -- JOIN-- INNER JOIN ---
SELECT e.emp_id,e.f_name,d.dep_name FROM employees e
INNER JOIN department d on e.department_id = d.dep_id;  #we can give short names to each name

-- To join primary key from a table to foreignkey of another table----first create 2 tables ---

CREATE TABLE customers(cust_id INT PRIMARY KEY,cust_name VARCHAR(20),city varchar(30));

CREATE TABLE orders(ord_id INT PRIMARY KEY,
cust_id INT,order_amount INT,
FOREIGN KEY(cust_id)REFERENCES customers(cust_id));

INSERT INTO customers VALUES(1,"Akshara","Wayanad"),(2,"Shifna","Kannur"),(3,"Aparna","Idukki"),(4,"Litty","Kannur");
INSERT INTO orders VALUES
(101,1,2000),(102,2,3500),(103,3,4000),(104,4,2500);
SHOW TABLES;
SELECT c.cust_id,c.cust_name,c.city,o.ord_id,o.order_amount FROM customers c INNER JOIN orders o on c.cust_id=o.cust_id;

      -- OUTER JOIN --LEFT JOIN
SELECT e.emp_id, e.f_name,d.dep_name FROM employees e LEFT JOIN department d on e.department_id = d.dep_id;
SELECT e.emp_id, e.f_name,d.dep_name FROM department d LEFT JOIN employees e on e.department_id = d.dep_id;
 
               -- RIGHT JOIN
SELECT e.emp_id,e.f_name,d.dep_name FROM employees e RIGHT JOIN department d on e.department_id=d.dep_id;

                 -- UNION 
SELECT e.emp_id,e.f_name,d.dep_name FROM  department d LEFT JOIN employees e on e.department_id=d.dep_id
UNION
SELECT e.emp_id,e.f_name,d.dep_name FROM  employees e RIGHT JOIN department d on e.department_id=d.dep_id;


CREATE TABLE student_commerce(Roll_no INT PRIMARY KEY,Name VARCHAR(50), branch VARCHAR(50));
CREATE TABLE student_science(Roll_no INT PRIMARY KEY,Name VARCHAR(50),branch VARCHAR(50));
INSERT INTO student_commerce VALUES(1,"Abhi","commerc"),(2,"Ali","commerce"),(3,"Manu","commerce");
INSERT INTO student_science VALUES(1,"Varun","science"),(2,"Vyshnav","science"),(3,"Zen","science");
SELECT * FROM student_commerce UNION SELECT * FROM student_science;
SELECT * FROM student_commerce UNION ALL SELECT * FROM student_science;

-- SELECT * FROM student_commerce intersect SELECT * FROM student_science;
-- SELECT * FROM student_commerce except SELECT * FROM student_science;
