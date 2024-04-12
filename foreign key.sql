-- constraint

create database test1;
use test1;
create table test1(pid int primary key , pname varchar(20),amount int);

desc test1;
create table orders(oid int , city varchar(20), product_id int,
constraint test_order_pk_oid primary key(oid),
constraint test_fk foreign key(product_id) references test1(pid));

desc orders;

insert into orders values(1,'jaipur' , 10);
select * from orders;


-- firstly 
insert into test1 values(10,'abc' , 600);
select * from test1;

-- on delete and on update home work
-- truncate vs delete vs drop






