CREATE DATABASE librarydb;

use librarydb;

create table members(
memberid int primary key,
membername varchar(100) not null,
gender varchar(10),
city varchar(50),
joindate date

);