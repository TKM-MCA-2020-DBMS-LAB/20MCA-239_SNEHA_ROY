create database organization;
use organization;

create table depart(dept_no int primary key ,dept_name varchar(20) ,house varchar(20));

create table employe( emp_no int ,emp_name varchar(20) not null,dept_course varchar(20) ,dept_no int,salary int, designation varchar(30) ,mobile_no int,foreign key(dept_no)references depart(dept_no));


insert into depart values(01,"PHYSICS","gokhale");
insert into depart values(02,"BIOLOGY","nehru");
insert into depart values(03,"CHEMISTRY","nethaji");
insert into depart values(04,"PHYSICS","patel");
insert into depart values(05,"PHYSICS","nehru");

insert into employe values(101,"ann","b.sc",01,3000,"sd",908790);
insert into employe values(102,"megha","bca",02,7500,"hr",87959);
insert into employe values(103,"gauthami","b.sc",03,3500,"ssd",467858);
insert into employe values(104,"sneha","ba",04,4500,"typist",7585758);
insert into employe values(105,"manna","b.sc",05,5000,"cio",867689);

select * from employe;
select * from depart;

-- add 5 more rows;

insert into depart values(06,"CHEMISTRY","patel");
insert into depart values(07,"BIOLOGY","nethaji");
insert into depart values(08,"CHEMISTRY","gokhale");
insert into depart values(09,"PHYSICS","nehru");
insert into depart values(10,"BIOLOGY","patel");

insert into employe values (106,"sarath","ba",06,7800,"sd",89896);
insert into employe values (107,"lakshmi","b.sc",07,35000,"ssd",7689);
insert into employe values (108,"albin","bca",08,65000,"sd",98763);
insert into employe values (109,"vishnu","ba",09,2500,"intern",90221);
insert into employe values (110,"akshai","b.sc",10,45000,"sd",89078);

-- (ii)	Display all the records from the above tables

select * from employe;
select * from depart;

-- (iii)	Display the empno and name of all the employees from department no2

select emp_name ,emp_no from employe where dept_no= 02;

-- (iv)	Display empno,name,designation,dept no and salary in the descending order of salary
select emp_no,emp_name,designation,dept_no,salary from employe order by salary desc;

-- (v)	Display the empno and name of all employees whose salary is between 2000 and 5000

select emp_no , emp_name,salary from employe where salary between 2000 and 5000;

-- (vi)	Display all designations without duplicate values
select distinct designation from employe ;

-- (vii)	Display the dept name and total salary of employees of each department.
select dept_no ,sum(salary) ,dept_course from employe group by dept_course;

-- (viii)	Change the salary of employees to 25000 whose designation is ‘Typist’


update employe set salary= 25000 where dept_no >0 and designation="typist";

-- (ix)	Change the mobile no of employee named ‘john’

update employe set mobile_no="88909 " where emp_name ="akshai" and dept_no >0 ;

-- (x)	Delete all employees whose salaries are equal to Rs.4500
delete from employe where salary="4500";
 
 -- (xi)	Select the department that has total salary paid for its employees more than 25000
 
 select dept_course from employe group by(dept_no) having sum(salary)>25000;

drop table employe,depart;
drop database organization;