create database test2;
use test2;
drop table product;
create table product( pid int primary key , pname varchar(20), amount int);

desc product;
create table orders(oid int, city varchar(20), product_id int,
constraint test_order_pk_oid primary key(oid),
constraint test_fk foreign key (product_id) references product(pid) );

desc orders;

create database akshay;
use akshay;
create table companies(id int);
insert into companies values(10);
insert into companies values();
select * from companies;


-- add table columns

alter table companies
add column phone varchar(20);

desc companies;
select * from companies;



alter table companies
add column address varchar(20) after id;

select * from companies;

alter table companies 
add column address2 varchar(20) ;

alter table companies 
add column address3 varchar(20) ;

-- 

alter table companies 
drop column address2,drop column address3;

select * from companies;

-- rename tables

rename table companies to newcompany;

select * from newcompany;

-- rename with the help of alter 

alter table newcompany rename to companies;

select * from companies;

-- column rename 

alter table companies
rename column phone to company_name;

select * from companies;



-- update

update companies set company_name="rakesh";

update companies set company_name="rakesh mahle"
where id=10;

update companies set id=20
where id is null;

alter table companies 
add constraint compay_uk unique(address);

desc companies;

alter table companies 
drop constraint compay_uk;

desc companies;

-- modify datatype

alter table companies 
modify address int;

desc companies;

alter table companies 
modify company_name int;

update companies set company_name = null;

desc companies;

-- change datatype and column name then use change

alter table companies
change address newcity char(10);

desc companies;



