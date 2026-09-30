show databases;
use aids;
create table student(sid int,sname varchar(20),sdept varchar(20));
alter table student add sage int;
rename table std to student;
insert into student values(101,"ram","aids",20);
insert into student values(101,"raju","aiml",21);
insert into student values(103,"ravi","cse",20);
insert into student values(104,"meera","ece",21);
insert into student values(105,"reena","eee",19);
desc student;
update student set sid=102 where sname="raju";
select *from student;
 select distinct sdept from student;
select *from student where sage>19;
   select sname,sage from student where sid=101;
drop table std;
select now();
drop table clg;
show tables;
 select sname,sage from student order by sid DESC;
 select *from student order by sid DESC;
 select *from student order by sid ASC;
  select *from student LIMIT 3;
 


