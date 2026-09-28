create database job_placement;
use job_placement;
SHOW TABLES;
select * from job_placement;
select * from job_placement where stream="computer science";

-- Arithmetic operator
#used for mathematical calculation 
select name,salary,salary+500 as Bonus from job_placement;
select *from job_placement;
 
-- relational operator 
select *from job_placement where salary>=50000;
select *from job_placement where age=25;
select *from job_placement where age!=25;

-- logical operator
select *from job_placement where gender="male" and salary>60000;
select  name as Name,college_name,salary from job_placement where stream="mechanical engineering" and placement_status="placed";
select *from job_placement where stream="mechanical engineering" or placement_status="placed";
select *from job_placement where not gender="male";

-- special operator
use job_placement;
select *from job_placement where stream IN("computer science","electrical engineering","mechanical engineering");

select name,stream,gpa from job_placement WHERE  college_name IN ("Harvard university","standford university");
-- Not In 
select *from job_placement WHERE stream not in ("computer science","electrical engineering");

-- between
select *from job_placement WHERE salary between 55000 and 60000;
 select *from job_placement WHERE salary not between 55000 and 60000;
 
 -- Is Null
 select *from job_placement;
 select *from job_placement where salary is null;
 
 -- check whether is null or not
select *from job_placement where stream is null;
select*from job_placement where salary is not null;

#Like operator ------- > used to search for a pattern in text
#special symbols used % and_
-- %---- > repersents any number of characters
#_---repersent exactly one character

select *from job_placement WHERE college_name like "c%";
select *from job_placement;
select *from job_placement WHERE name like"a___";

#TO Get unique values
select distinct(stream)from job_placement;

#find distinct college name
select distinct(college_name) from job_placement;

-- Functions
select abs(-20);
select abs(-30) as result;

select *from job_placement;
select abs(gpa)from job_placement;

select round(4.6729,2) as result;
select ceiling(6.7)as result;
select floor(6.7)as result;

select power(2,5) as result;
select sqrt(150) as result;
select truncate(3.14789,2);
select rand();#create random number beteewn 0
select 10%3;
select sign(20);

-- String Function
select upper("aish");
select upper("hello world") as upper;
select length("Ashhhhhhhh") as length;
-- trim #removes leading and trailing spaces
select trim("       Magic Wonderland        ") as result;
select concat('hello' ,'world');
select concat('magic' ,'wonderland');

-- Replace()- replaces  a subsrting with another string
select replace('I like java', 'java','sql');


SELECT LTRIM(' Database');

#8.RTRIM() removes spaces from ther right side (end) of a string
#Syntax: RTRIM(string)
SELECT RTRIM('Database    ');

select *from job_placement;
select name,lower(name)as updated_name from job_placement;

select name,upper(name) from job_placement;

select concat(name,"-",stream)as std_with_name, college_name from job_placement;

-- date function 
select curdate();
#or 
select current_date();
select now();
 #gives date and time 
 
 select current_timestamp();
 select datediff(curdate(),"2026-07-01");
 select date_add(curdate(),interval 3 day);
 select date_sub(curdate(),interval 3 day);
 
 #to  extract year from a  date
 select year(current_date());
 select year("2026-07-01");
 SELECT month("2026-07-01");
 SELECT monthname("2001-09-20");
 SELECT day("2001-09-20");
 SELECT dayname("2001-08-20");
 
 
                          --  AGGREGATE FUNCTIONS ----
 #1)-- COUNT() ---- to count the values
 SELECT count(*) FROM job_placement;
 SELECT DISTINCT(college_name) from job_placement;
 SELECT count(distinct college_name)FROM job_placement;
 SELECT count(*)FROM job_placement WHERE stream ='Computer Science';
 SELECT count(salary)FROM job_placement;
 #2)-- SUM()
 SELECT sum(salary)FROM job_placement; #total salary
 #3)-- AVG()
 SELECT avg(salary)FROM job_placement;
 #4)-- MIN()-----minimum values
 SELECT min(salary)FROM job_placement;
 #5)-- MAX()----maximium values
 SELECT max(salary)FROM job_placement;
 #5)-- LIMIT() ----control how many records a user can watch
 SELECT * FROM job_placement limit 5;
 #6)-- ORDER BY -----used for sorting
 SELECT * from job_placement ORDER BY salary;
 SELECT * FROM job_placement ORDER BY years_of_experience DESC;
 SELECT * FROM job_placement ORDER BY years_of_experience DESC,salary DESC;
 SELECT * FROM job_placement WHERE stream='computer science' ORDER BY salary DESC;
 
                         ----- SUBQUERY -----
 SELECT avg(salary)FROM job_placement WHERE stream ='computer science';
 SELECT * FROM job_placement where salary>48359.456;
 #instead of above 2 queries..we can write this on a single query---that single query is known as subquery
 SELECT * FROM job_placement where salary > (SELECT avg(salary)FROM job_placement where stream='computer science');
 #another example for subquery
 SELECT * FROM job_placement where gpa > (SELECT avg(gpa) FROM job_placement where stream='computer science')ORDER BY salary DESC;

                        -- Case Conditional Statements ----
SELECT Name,age,stream,salary,
case
  WHEN salary < 25000
  THEN 'LOW SALARY'
  WHEN salary BETWEEN 25000 and 50000
  THEN 'MEDIUM SALARY'
ELSE
  'HIGH SALARY'
END
AS salary_range
from job_placement;

				            -- GROUP BY ---
SELECT stream,avg(salary)FROM job_placement GROUP BY stream;
#find maximum gpa according to stream
SELECT stream,max(gpa)FROM job_placement GROUP BY stream;
SELECT stream,placement_status,count(*) as no_of_status FROM job_placement GROUP BY stream,placement_status;
#count number of times college name repeats
SELECT college_name,count(*) as no_of_times FROM job_placement GROUP BY college_name;
#to see in descending order
SELECT college_name,count(*) as no_of_times FROM job_placement GROUP BY college_name ORDER BY no_of_times DESC;
#to see only top 5 info
SELECT college_name,count(*) as no_of_times FROM job_placement GROUP BY college_name ORDER BY no_of_times DESC LIMIT 5;
#to find candidate count in each stream
SELECT stream,count(*) as no_of_candidate FROM job_placement GROUP BY stream;
#based on stream find the students who are placed
SELECT stream,placement_status,count(*) as no_of_candidate FROM job_placement WHERE placement_status='Placed' GROUP BY stream;
#How many candidates are there by gender
SELECT gender,count(*) as no_of_candidates from job_placement GROUP BY gender;
