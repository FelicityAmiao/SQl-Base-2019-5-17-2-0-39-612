create database student_examination_sys;
use student_examination_sys;
create table student (
	id char(3) primary key,
    `name` varchar(5),
    age int,
    sex char(1)
);
insert into student values('001', '张三', 18, '男');
insert into student values('002', '李四', 20, '女');
create table `subject` (
	id char(4) primary key,
    `subject` varchar(5),
    teacher varchar(5),
    `description` varchar(20)
);
insert into `subject` values('1001', '语文', '王老师', '本次考试比较简单');
insert into `subject` values('1002', '数学', '刘老师', '本次考试比较难');
create table score (
	id int primary key auto_increment,
    student_id char(3),
    subject_id char(4),
    score float(4, 1),
    foreign key(student_id) references student(id),
    foreign key(subject_id) references `subject`(id)
);
insert into score values(null, '001', '1001', 80);
insert into score values(null, '002', '1002', 60);
insert into score values(null, '001', '1001', 70);
insert into score values(null, '002', '1002', 60.5);
select * from student;
select * from `subject`;
select id, student_id, subject_id, replace(score, '.0', '') as score from score;