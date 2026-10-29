CREATE DATABASE librarydb;

use librarydb;

create table members(
memberid int primary key,
membername varchar(100) not null,
gender varchar(10),
city varchar(50),
joindate date

);

create table authors (
authorid int primary key,
authorname varchar(100),
country varchar(50)
);
create table books(
bookid int primary key,
bookname varchar(50),
authorid int,
category varchar(50),
price decimal(10,2),
avilablecopies int,
constraint fk_author
foreign key(authorid) references authors(authorid)

);