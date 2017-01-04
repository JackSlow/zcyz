create database images;
go
use images;
go
create table pson
(id int identity(1,1) primary Key,
personname varchar(100),
collected int,
)
go
create table collect
(id int identity(1,1) primary Key,
colurl varchar(100),
psonid int,
constraint mfk foreign key(psonid) references pson(id),
)
go
create table admins
(id int identity(1,1) primary key,
adminname varchar(100) not null,
password varchar(100) not null,
power int,
pid int,
constraint mt foreign key(pid) references pson(id),
)
go
create table types
(id int identity(1,1) primary Key,
typename varchar(50) not null,
)
go
create table imglist
(id int identity(1,1) primary Key,
url varchar(100),
isrecommend bit null,
uploadtime datetime,
describe text,
typeid int,
constraint mtfk foreign key(typeid) references types(id),
psonid int,
constraint mtf foreign key(psonid) references pson(id),
)
go


insert into pson(personname,collected) values('zcyz',0)
go
insert into admins(adminname,password,power) values('zcyz','111',1)
go
insert into types(typename) values('人文')
insert into types(typename) values('动物')
insert into types(typename) values('环境')
insert into types(typename) values('旅游')
insert into types(typename) values('探险')

go

insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/探险/img_2.jpg',0,'2015-12-29 00:00','探险',5)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/探险/img_2.jpg',1,'2016-2-29 00:00','探险',5)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/探险/img_3.jpg',0,'2016-1-29 00:00','探险',5)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/探险/img_4.jpg',0,'2015-12-19 00:00','探险',5)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/探险/img_5.jpg',0,'2015-3-29 00:00','探险',5)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/环境/1.jpg',1,'2015-2-28 00:00','环境',3)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/环境/2.jpg',0,'2016-6-28 00:00','环境',3)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/环境/3.jpg',1,'2015-7-28 00:00','环境',3)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/环境/4.jpg',1,'2015-11-28 00:00','环境',3)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/环境/5.jpg',0,'2016-11-28 00:00','环境',3)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/环境/6.jpg',1,'2015-11-28 00:00','环境',3)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/动物/1.jpg',1,'2015-2-26 00:00','动物',2)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/动物/2.jpg',0,'2016-2-26 00:00','动物',2)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/动物/3.jpg',1,'2016-7-26 00:00','动物',2)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/动物/4.jpg',1,'2016-2-27 00:00','动物',2)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/动物/5.jpg',1,'2015-2-27 00:00','动物',2)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/动物/6.jpg',1,'2015-2-7 00:00','动物',2)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/人文/2.jpg',0,'2015-4-29 00:00','人文',1)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/人文/3.jpg',1,'2016-3-29 00:00','人文',1)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/人文/4.jpg',1,'2015-8-29 00:00','人文',1)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/人文/1.jpg',0,'2016-3-29 00:00','人文',1)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/人文/5.jpg',1,'2016-6-29 00:00','人文',1)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/人文/6.jpg',0,'2016-3-29 00:00','人文',1)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/影视/1.jpg',1,'2016-4-9 00:00','影视',4)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/旅游/2.jpg',1,'2016-5-9 00:00','旅游',4)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/旅游/3.jpg',0,'2016-6-9 00:00','旅游',4)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/旅游/4.jpg',1,'2016-4-19 00:00','旅游',4)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/旅游/5.jpg',0,'2016-4-25 00:00','旅游',4)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/旅游/6.jpg',1,'2016-4-19 00:00','旅游',4)
go

