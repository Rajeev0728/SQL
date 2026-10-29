-- Create Database
CREATE DATABASE  onlinebookstore;

-- Switch to the database
  use onlinebookstore;

-- create tables 
DROP TABLE IF EXISTS books;
CREATE TABLE books (
	Book_id serial PRIMARY KEY,
	Title varchar(100),
	Author varchar(100),
	Genre varchar(50),
	Published_year int,
	Price numeric(10,2),
	Stock INT
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers(
customer_id serial PRIMARY KEY,
name varchar(100),
email varchar(100),
phone varchar(15),
city varchar(50),
country varchar(100)
);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders(
order_id serial PRIMARY KEY,
customer_id int REFERENCES customers(customer_id),
book_id INT REFERENCES books(book_Id),
order_date DATE,
Quantity int,
total_amount numeric(10,2)
);