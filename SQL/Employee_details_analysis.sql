-- 1.Display all employees
use employee_data;
SELECT * FROM employees;
ALTER TABLE employees RENAME COLUMN `First Name`TO First_Name;
ALTER TABLE employees RENAME COLUMN `Last Name`TO Last_Name;
ALTER TABLE employees RENAME COLUMN `Start Date`TO Start_Date;
ALTER TABLE employees RENAME COLUMN `Monthly Salary` TO Monthly_Salary;
ALTER TABLE  employees RENAME COLUMN `Job Rate` TO Job_Rate;
ALTER TABLE employees RENAME COLUMN `Annual Salary`TO Annual_Salary;
ALTER TABLE employees RENAME COLUMN `Unpaid Leaves`TO Unpaid_Leaves;
ALTER TABLE employees RENAME COLUMN `Overtime Hours`TO Overtime_Hours;

-- 2.Show employees from egypt
SELECT * FROM employees WHERE country='Egypt';
-- 3. Show employees working in manufacturing department.ALTER
SELECT * FROM employees WHERE Department='manufacturing';
-- 4 Display employees whose job rate is 5
SELECT * FROM employees WHERE Job_Rate=5;
-- 5. Find employees with monthly salary greater than 3000
SELECT * FROM employees WHERE monthly_salary>3000;
-- 6. Find employees with annual salary less than 25000
SELECT * FROM employees WHERE Annual_Salary<25000;
-- 7.Employees having exactly 8 years of Experience
SELECT * FROM employees WHERE years=8;
-- 8.Employees having more than 8 years of Experience
SELECT * FROM employees WHERE years>8;
-- 9. Employees whose overtime hours are not zero
SELECT * FROM employees WHERE Overtime_Hours!=0;
-- 10 Employees with unpaid leaves greater than 2
SELECT * FROM employees WHERE Unpaid_Leaves>2;
-- 11. Employees from Egypt working in sales
SELECT * FROM employees WHERE Country='Egypt' AND Department;
-- 12. Employees earning more than 2500 and jobrate 5
SELECT * FROM employees WHERE Monthly_salary>2500 AND Job_Rate=5;
-- 13.  Employees with 8+ years experience and salary above 3000. 
SELECT * FROM employees WHERE Years>=8 AND Monthly_salary>3000;
-- 14. Female employees in Product Development. 
SELECT * FROM employees WHERE Gender='Female'AND Department='Product Development';
-- 15. Employees from Egypt OR Saudi Arabia. 
SELECT * FROM employees WHERE Country='Egypt' OR Country='Saudi Arabia';
-- 16.  Employees in Sales OR Marketing.
SELECT * FROM employees WHERE Department='Sales' OR Department='Marketing';
-- 17.  Employees with Job Rate 5 OR 4.5.
SELECT * FROM employees WHERE Job_Rate='5' OR Job_Rate='4.5';
-- 18. Employees not from Egypt.
SELECT * FROM employees WHERE NOT Country='Egypt';
-- 19. Employees not working in Manufacturing. 
SELECT * FROM employees WHERE Department NOT IN ('Manufacturing');
-- 20. Employees earning between 2000 and 3000. 
SELECT * FROM employees WHERE Monthly_salary BETWEEN '2000' AND '3000';
-- 21.  Employees with experience between 5 and 8 years.
SELECT * FROM employees WHERE Years BETWEEN '5' AND '8';
-- 22. Employees who joined in 2019. 
SELECT * FROM employees WHERE Start_Date='2019';
-- 23. Employees from Egypt, Syria and Saudi Arabia. 
SELECT * FROM employees WHERE Country IN ('Egypt', 'Syria' and 'Saudi Arabia');
-- 24.  Employees working in Sales, IT and Marketing. 
SELECT * FROM employees WHERE Department IN ('Sales', 'IT' and 'Marketing');
-- 25.  First name starts with A.
SELECT * FROM employees WHERE First_Name LIKE 'a%';
-- 26.  Last name ends with i. 
SELECT * FROM employees WHERE Last_Name LIKE '%i';
-- 27. First name contains "an".
SELECT * FROM employees WHERE First_Name LIKE '%an%';
-- 28.  Last names having exactly 5 letters. 
SELECT * FROM employees WHERE Last_Name LIMIT 5;
-- 29. Top 10 highest salary employees.
SELECT * FROM employees ORDER BY Monthly_salary LIMIT 10;
-- 30.Employees from Egypt having more than 8 years experience and salary above 2500. 
SELECT * FROM employees WHERE Country='Egypt' AND Years>8 AND Monthly_salary>2500;
-- 31.  Female employees working in Sales or Marketing. 
SELECT * FROM employees WHERE Gender='Female' AND Department IN('Sales' OR 'Marketing');
-- 32.  Employees having overtime greater than 100 hours and unpaid leave less than 2. 
SELECT * FROM employees WHERE Overtime_Hours>100 AND Unpaid_Leaves<2;
-- 33. Employees from UAE with Job Rate above 4. 
SELECT * FROM employees WHERE Country='United Arab Emirates' AND Job_Rate>4;
-- 34. Employees earning between 2000 and 4000 but not from Egypt.
SELECT * FROM employees WHERE Monthly_salary BETWEEN '2000' AND '4000' AND NOT Country='Egypt';
-- 35.  Employees with experience greater than 8 years OR salary above 3500. 
SELECT * FROM employees WHERE Years>8 OR Monthly_salary>3500;
-- 36. Employees who joined after 2019 and belong to North center. 
SELECT * FROM employees WHERE Start_Date > 2019 AND Center='North';
-- 37. Employees from Egypt or Saudi Arabia having Job Rate 5. 
SELECT * FROM employees WHERE Country='Egypt' OR Country='Saudi Arabia' AND Job_Rate =5;
-- 38.Employees from Egypt and having either Sales or Marketing department. 
SELECT * FROM employees WHERE Country='Egypt' AND Department IN('Sales' OR 'Marketing');
-- 39.  Employees with high salary or high experience but only females. 
SELECT * FROM employees WHERE Gender='Female' AND Monthly_salary >35000 AND Years>10  ;
-- 40.  Find employees from West center whose salary is greater than 2500.
SELECT * FROM employees WHERE Center='West' AND Monthly_salary>2500;
-- 41.  Display employees with more than 5 sick leaves.  
SELECT * FROM employees WHERE `Sick Leaves`>5;
-- 42. . Find employees whose first name starts with "M" and whose last name ends with "d".  
SELECT * FROM employees WHERE First_Name LIKE 'M%' AND Last_Name LIKE '%d';
-- 43.  Display employees who joined between 2018 and 2020.
SELECT * FROM employees WHERE  Start_Date BETWEEN '2018' AND '2020';
-- 44. Find employees with no unpaid leaves but overtime greater than 150 hours.  
SELECT * FROM employees WHERE Unpaid_Leaves=0 AND Overtime_Hours>150;
-- 45. Show employees working in Quality Control or Quality Assurance.  
SELECT * FROM employees WHERE Department='Quality Control'or Department= 'Quality Assurance';
-- 46.  Find employees who are not from Egypt and have a Job Rate of at least 4.5.  
SELECT * FROM employees WHERE NOT Country='Egypt' AND Job_Rate >=4.5 ORDER BY Job_Rate DESC;
-- 47.  Display employees whose Annual Salary is greater than 30,000 and Years are between 5 and 10. 
SELECT * FROM employees WHERE Annual_Salary> 30000 AND Years BETWEEN 5 AND 10;
-- 48.Find employees in the North or South center with Monthly Salary below 2000.  
SELECT * FROM employees WHERE Center='North' or 'South' AND Monthly_salary>2000;
-- 49. Retrieve employees whose Department contains the word "Management"
SELECT * FROM employees WHERE Department LIKE '%Management';
