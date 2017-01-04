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
insert into types(typename) values('����')
insert into types(typename) values('����')
insert into types(typename) values('����')
insert into types(typename) values('����')
insert into types(typename) values('̽��')

go

insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/̽��/img_2.jpg',0,'2015-12-29 00:00','̽��',5)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/̽��/img_2.jpg',1,'2016-2-29 00:00','̽��',5)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/̽��/img_3.jpg',0,'2016-1-29 00:00','̽��',5)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/̽��/img_4.jpg',0,'2015-12-19 00:00','̽��',5)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/̽��/img_5.jpg',0,'2015-3-29 00:00','̽��',5)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/1.jpg',1,'2015-2-28 00:00','����',3)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/2.jpg',0,'2016-6-28 00:00','����',3)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/3.jpg',1,'2015-7-28 00:00','����',3)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/4.jpg',1,'2015-11-28 00:00','����',3)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/5.jpg',0,'2016-11-28 00:00','����',3)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/6.jpg',1,'2015-11-28 00:00','����',3)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/1.jpg',1,'2015-2-26 00:00','����',2)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/2.jpg',0,'2016-2-26 00:00','����',2)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/3.jpg',1,'2016-7-26 00:00','����',2)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/4.jpg',1,'2016-2-27 00:00','����',2)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/5.jpg',1,'2015-2-27 00:00','����',2)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/6.jpg',1,'2015-2-7 00:00','����',2)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/2.jpg',0,'2015-4-29 00:00','����',1)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/3.jpg',1,'2016-3-29 00:00','����',1)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/4.jpg',1,'2015-8-29 00:00','����',1)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/1.jpg',0,'2016-3-29 00:00','����',1)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/5.jpg',1,'2016-6-29 00:00','����',1)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/6.jpg',0,'2016-3-29 00:00','����',1)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/Ӱ��/1.jpg',1,'2016-4-9 00:00','Ӱ��',4)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/2.jpg',1,'2016-5-9 00:00','����',4)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/3.jpg',0,'2016-6-9 00:00','����',4)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/4.jpg',1,'2016-4-19 00:00','����',4)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/5.jpg',0,'2016-4-25 00:00','����',4)
go
insert into imglist(url,isrecommend,uploadtime,describe,typeid)
values('images/����/6.jpg',1,'2016-4-19 00:00','����',4)
go

