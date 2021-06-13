-- Making a sql database


show databases;
create database hammad_ezad;
show databases;
drop database sakila;
use hammad_ezad;
select database();
drop hammad_ezad;
drop database hammad_ezad;
show databases;
select database();
create database hammad_ezad;
use hammad_ezad;
create table cat
(name  varchar(20),
breed varchar(20),
age int); 

create table tweets
(username varchar(15), 
content varchar(100), 
favs int);

show tables;
show columns from tweets; 

create table pastries
( name varchar(50), 
quantity int);

create table cats
(name varchar(20), 
age int);

insert into cats(name, age) Values('Drago', 11);
select * from cats;
insert into cats(age, name) Values(1, 'Munchin');
select * from cats;
insert into cats(name, age)
Values('Lazy', 2), ('Hazy', 7), ('Peanuts', 8);

select * from cats;

create table people
( first_name varchar(20), last_name varchar(20), age int);

insert into people(first_name, last_name, age)
Values('Tina', 'Belcher', 13);

insert into people(first_name, last_name, age)
Values('Bob', 'Belcher', 42), ('Philip', 'Frond', 38), ('Calvin', 'Fishoeder', 70);

select * from people;
desc people;


create table cats2
(name varchar(20) not null, 
age int not null);

insert into cats(name, age)
values('Harry');


desc cats2;

select * from cats2;

create table cats3
(name varchar(20) default  'wow',
age int default  20);

insert into cats3(name, age)
Values ();


create table dogs(id int not null, 
name varchar(10) not null, 
age int not null, 
primary key (id));


insert into dogs(id, name, age)
values(1, 'Helena', 32);


insert into dogs(id, name, age)
values(1, 'Helena', 32);

select * from dogs;

select distinct(id) from dogs;


create table peoples2(
id int not null auto_increment, 
name varchar(20) not null, 
age int not null, 
primary key (id)); 


create table peoples3(
id int not null primary key auto_increment, 
name varchar(20) not null, 
age int not null); 

insert into peoples3(id, name, age)
values(50, 'helena', 32);


insert into peoples3(name, age)
values('Hey', 9);

select * from peoples3;

desc peoples3;

create table Employees(
id int not null primary key auto_increment, 
first_name varchar(20) not null, 
last_name varchar(20) not null, 
middle_name varchar(20) not null, 
age int not null, 
current_status varchar(20) not null);

drop table Employees;

create table Employees(
id int not null primary key auto_increment, 
first_name varchar(20) not null, 
last_name varchar(20) not null, 
middle_name varchar(20) , 
age int not null, 
current_status varchar(20) not null default 'employed');

use hammad_ezad;


create table cats
(id int not null auto_increment primary key, 
name varchar(50) not null, 
breed varchar(50) not null, 
age int not null);

desc cats;

insert into cats(name, breed, age)
values
('Ringo', 'Tabby', 4),
('Cindy', 'Meine coon', 10),
('Dumbledore', 'Meine coon', 11),
('Egg', 'Persian', 4),
('Misty', 'Tabby', 13),
('George Michael', 'Ragdoll', 9),
('Jackson', 'Sphynx', 7);

select * from cats;

select * from cats 
where age = 4;

select * from cats
where name = 'Egg';

select id from cats;

select name, breed from cats;

select name, age from cats
where breed = 'Tabby';

select id, age 
from cats
where id= age;

select name as cat_name , breed as cat_breed from cats;

update cats set breed = 'Shorthair'
where breed = 'Tabby';