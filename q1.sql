create database organisation;
use organisation;

create table employe(emp_no int primary key,emp_name varchar(20) not null,DOB date);
create table depart(dept_no int primary key,dept_name varchar(20),emp_no int,foreign key(emp_no)references employe(emp_no));

insert into employe values(101,"ann",'1999-10-12');
insert into employe values(102,"megha",'1996-02-01');
insert into employe values(103,"gauthami",'1997-03-31');
insert into employe values(104,"sneha",'1992-06-15');
insert into employe values(105,"manna",'1999-02-14');

insert into depart values(23,"PHYSICS",101);
insert into depart values(24,"BIOLOGY",102);
insert into depart values(25,"CHEMISTRY",103);
insert into depart values(27,"PHYSICS",105);

select * from employe;
select * from depart;

alter table employe add column salary float;
alter table depart add column location char;
alter table employe drop column DOB;
drop table employe,depart;
drop database organisation;
