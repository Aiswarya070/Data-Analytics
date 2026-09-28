use college_database;
CREATE TABLE employees(
id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary INT
);
Insert into employees(id,name,department,salary)VALUES
(1,'alice','HR',60000),
(2,'BOB','HR',70000),
(3,'charlie','HR',60000),
(4,'david','it',75000),
(5,'Eva','finance',90000),
(6,'tom','finance',90000),
(7,'john','finance',50000);

SELECT * FROM employees;
select
id,
name,
department,
salary,

row_number() over (PARTITION BY department ORDER BY salary desc) as row_num,
RANK() over (PARTITION BY department order by salary desc)as rnk,
DENSE_RANK() over(PARTITION BY department ORDER BY salary desc) as dense_rnk
from employees;
SELECT
id,
name,
department,
salary,
LAG(salary , 1,0) over(PARTITION BY department ORDER BY salary desc) as previous_salary ,
lead(salary,1,0) over(PARTITION BY department order by salary desc) as previous_salary
from employees;
select
id,
name,
department,
salary,
sum(salary) over (ORDER BY id)as running_total,
floor(avg(salary) over (partition by department)) as dep_avg_salary
from employees;
