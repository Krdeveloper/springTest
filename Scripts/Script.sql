select * from project;

drop table project;
create table project(
   code int(11) not null auto_increment,
   name varchar(50) not null,
   content text,
   beginDate timestamp default now(),
   endDate timestamp default now(),
   state varchar(50) not null,
   primary key (code)
);

insert into project  (name,content,beginDate,endDate,state)
values ('관리자 프로젝트','관리자들의 하는 일을 프로젝트화 하는 것이다.',now(),now(),'진행중');
insert into project  (name,content,beginDate,endDate,state)
values ('관리','관리하는 것이다.',now(),now(),'보류');
update project set name='관리리', content='하는것이다',beginDate=now(),endDate=now(),state='준비'
where code=2;

select * from project;