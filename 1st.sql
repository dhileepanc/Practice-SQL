/* Database creation*/
create database employee;  

/* to view our databases */
show databases;

/* you must add use database */
use employee;

/* to create table and columns*/
create table user(id int not null auto_increment primary key , first_name varchar(100), last_name varchar(100), Date date);

/* to view our all tables*/
show tables;

/*to view our data tables*/
select * from user;

/* to insert our datas*/
insert into employee.user(first_name, last_name, Date)values('Dhileepan','C',19950620);
insert into employee.user(first_name, last_name, Date)values('Vijay','C',20221125);
insert into employee.user(first_name, last_name, Date)values('Dhileepan2','C',20221223);
insert into employee.user(first_name, last_name, Date)values('Dhileepan3','C',19950620);

/* to delete our table datas*/
truncate table user; 

/* to delete our entire table datas*/
drop table employee.user;

use employee;
create table user(id int not null auto_increment primary key , first_name  varchar(100) not null, last_name varchar(100) not null, Date date not null , Age int not null, email varchar(100) not null);
show tables;

/* view our columns */
describe user;

insert into employee.user(first_name, last_name,Gender, Date,Age,email,city,Mob)values('Dhileepan','C','male',19950620,27,'dhileep2503@gmial.com','madurai',8682817160);
insert into employee.user(first_name, last_name, Date,Age,email)values('Dhileepan1','C',19970325,25,'dhileep@gmail.com');
insert into employee.user(first_name, last_name, Date,Age,email)values('Dhileepan2','C',19920325,30,'dhileep255@gmail.com');
insert into employee.user(first_name, last_name, Date,Age,email)values('Dhileepan2','C',19920325,33,'dhileep255@gmail.com');

/* add table columns */
alter table user add Gender varchar(10) not null after last_name;
alter table user add city varchar(50) not null, add Mob int not null;

/* modify our column */
alter table user modify city varchar(25) not null;
alter table user modify Mob varchar(12)  not null;

insert into employee.user(gender) values('male');
select * from user;

/* update our datas*/
update user set gender='male', city='chennai', Mob='8248328486' where id=2;
Delete from user where id=1;

insert into employee.user(first_name, last_name,Gender, Date,Age,email,city,Mob)values('Dhileepan','C','male',19950620,27,'dhileep2503@gmial.com','madurai',8682817160);
insert into employee.user(first_name, last_name,Gender, Date,Age,email,city,Mob)values('sdgergher','C','male',19950620,35,'dhileep2503@gmial.com','chennai',8624524844);
insert into employee.user(first_name, last_name,Gender, Date,Age,email,city,Mob)values('regerter','C','female',19950620,22,'dhileep2503@gmial.com','madurai',8475234584);
insert into employee.user(first_name, last_name,Gender, Date,Age,email,city,Mob)values('Dhileepan','C','male',19950620,27,'dhileep2503@gmial.com','madurai',8682817160);
insert into employee.user(first_name, last_name,Gender, Date,Age,email,city,Mob)values('sdgergher','C','male',19950620,35,'dhileep2503@gmial.com','chennai',8624524844);
insert into employee.user(first_name, last_name,Gender, Date,Age,email,city,Mob)values('regerter','C','female',19950620,22,'dhileep2503@gmial.com','madurai',8475234584);
insert into employee.user(first_name, last_name,Gender, Date,Age,email,city,Mob)values('Dhileepan','C','male',19950620,27,'dhileep2503@gmial.com','madurai',8682817160);
insert into employee.user(first_name, last_name,Gender, Date,Age,email,city,Mob)values('sdgergher','C','male',19950620,35,'dhileep2503@gmial.com','chennai',8624524844);
insert into employee.user(first_name, last_name,Gender, Date,Age,email,city,Mob)values('regerter','C','female',19950620,22,'dhileep2503@gmial.com','coimbatore',8475234584);

select first_name , Age,City from user;
select first_name , Age,City from user where gender='female';
select first_name , Age,City from user where gender='male' && age>25;
select first_name , Age,City from user where gender='male' or age>25 order by city;

/* distinct our data*/
select distinct city from user order by city;
select count(distinct city)  as total from user; /* as alias*/

/* to get datas 1-5 like google result page */
select *from user limit 0,5;
select * from user limit 6,10;
select * from user limit 10,15;
select max(age) from user;

/*count id*/
select gender,count(id) as total from user group by gender;
select city,count(id) as total from user group by city;

/* get data by last name */
select first_name from user where first_name like '%an';
select first_name, Age from user where age between 25 and 30;

create table attendance(AID int auto_increment primary key, ID int not null, Adate date not null, Astatus varchar(5) not null);
show tables;

insert into attendance(ID, adate, astatus) values(1,20221112,'P'),(1,20221113,'P'),(1,20221114,'P'),(1,20221115,'P'),
(2,20221112,'A'),(2,20221113,'A'),(2,20221114,'A'),(2,20221115,'A'),
(3,20221112,'A'),(3,20221113,'P'),(3,20221114,'P'),(3,20221115,'A'),
(4,20221112,'P'),(4,20221113,'P'),(4,20221114,'P'),(4,20221115,'A'),
(5,20221112,'P'),(5,20221113,'P'),(5,20221114,'P'),(5,20221115,'A'),
(6,20221112,'P'),(6,20221113,'P'),(6,20221114,'P'),(6,20221115,'P'),
(7,20221112,'P'),(7,20221113,'P'),(7,20221114,'P'),(7,20221115,'P'),
(8,20221112,'P'),(8,20221113,'P'),(8,20221114,'P'),(8,20221115,'P'),
(9,20221112,'P'),(9,20221113,'P'),(9,20221114,'P'),(9,20221115,'A'),
(10,20221112,'P'),(10,20221113,'P'),(10,20221114,'P'),(10,20221115,'P'),
(11,20221112,'P'),(11,20221113,'P'),(11,20221114,'P'),(11,20221115,'P'),
(12,20221112,'P'),(12,20221113,'P'),(12,20221114,'P'),(12,20221115,'A'),
(13,20221112,'P'),(13,20221113,'P'),(13,20221114,'P'),(13,20221115,'P'),
(14,20221112,'P'),(14,20221113,'P'),(14,20221114,'P'),(14,20221115,'P'),
(15,20221112,'P'),(15,20221113,'P'),(15,20221114,'P'),(15,20221115,'P');
select * from user;

select * from attendance;
select * from attendance where id=2;

select id, count(adate) as working, 
count(if(astatus='A',1,null)) as present from attendance group by id;
select * from attendance;