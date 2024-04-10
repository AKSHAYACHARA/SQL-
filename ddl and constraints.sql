# constrainst

#ddl

# join , subquery , # group by , # function # string , date , number
# scaler function , aggregate functions

# ddl data defination language
#  create , alter,drop, truncate

create  database if not exists april10;
use april10;

create table employee(id int, fname varchar(20) );

describe employee;
select * from employee;

# DML - insert , update, delete

insert into employee(id,fname) values (1, "abc");
insert into employee values (2, "def");

insert into employee values (3,); # error 
insert into employee values (3,null);
insert into employee(fname) values ("akshay");

select * from employee;

show tables;
drop table employee;

-- constraint => set od rule restrict data to be insert in table 
# not null
create table if not exists xyz(id int not null, name varchar(20) ) ;
insert into xyz(id,name) values(1,null);
insert into xyz(id,name) values(null,"akshay"); # error
insert into xyz(id,name) values(1,"abc");

# default 
create table if not exists xyz2(id int not null , name varchar(20) default "akshay");
insert into xyz2(id ) values (1);
insert into xyz2(id) values (1);
select * from xyz2;
show tables;
drop table xyz,xyz2;

create table if not exists 
yesh(id int , email varchar(20) default "abc@gmail.com" unique);

desc yesh;
insert into yesh(id, email) values(3,"rakesh");
select * from yesh;

# check condision ke accouding value


-- creat table id not null unq sec name , email unq , gender 
create table if not exists
 student(id int not null unique , name varchar(20), email varchar(20) unique ,
 gender varchar(10) check (gender = 'male' or gender = 'female' or gender = 'other') );
 
 insert into student (id , name , email , gender) values 
 (1, "rakesh" ,"rakesh@gmail.com" ,"other");
 select * from student;
 
 -- primary key => it is use to unique 





