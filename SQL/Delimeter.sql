use job_placement;
create table students2 (
s_id int primary key,
s_name varchar(50),
age int,
place VARCHAR(50),
department VARCHAR(50),
email VARCHAR(50),
fees INT
);
insert into students2(s_id,s_name,age,place,department,email,fees)values
(1,'manju',21,'kochi','computer science','qwe@gmail.com',12000),
(2,'anju',22,'trivendrum','data science','asd@gmail.com',15000),
(3,'bob',22,'calict','electronics','bob@gmail.com',8000),
(4,'charlie',21,'kollam','data science','char@gmail.com',20000),
(5,'david',24,'kottayam','maths','david@gmail.com',20000),
(6,'eva',21,'thrissur','data science','eva@gmail.com',15000),
(7,'karthi',21,'aluva','data science','kar@gmail.com',15000);

select* from students2;
 
 delimiter //
create procedure ins_info4()
begin
select*from students2;
end //
delimiter ;
call ins_info4();

delimiter //
create procedure ins_info6(dep VARCHAR(50))
begin
select*from students2 where department =dep;
end//
delimiter ;
call ins_info6('maths');

delimiter //
create procedure in_2(id int,fees INT)
begin
update students2 set fees =fees
where s_id =id;
end//
delimiter ;
call in_2(2,70000);

delimiter //
create procedure q4(id int ,name varchar(50),age int,place varchar(50),department varchar(50),mail varchar(50),fees INT)
begin
insert into students2 (s_id,s_name,age,place,department,email,fees) values (id,name,age,place,department,mail,fees);
end//
delimiter ;
call q4(8,'dhanu',29,'malapuram','maths','dhanu@gmail.com',15000);
