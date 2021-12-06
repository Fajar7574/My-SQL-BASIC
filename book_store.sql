-- Show Database --
SHOW DATABASES;

-- Create Database --
CREATE DATABASE bookstore;

-- Use Database --
USE bookstore;

-- Show Table --
SHOW tables;

-- Create Table --
create table books ( id int auto_increment primary key, 
    author1 varchar(100) not null, 
    author2 varchar(100), 
    author3 varchar(100), 
    title varchar(100), 
    description varchar(100), 
    place_sell varchar(3), 
    stock int default 0, 
    creation_date datetime  default  current_timestamp  on update current_timestamp );

-- Update Table --
Alter table books 
add price int default 0,
status enum('available','out of stock','limited');

-- Delete Table --
alter table books drop place_sell;

-- Insert Table --
insert into books(
    author1, 
    author2, 
    title, 
    description, 
    stock, 
    creation_date, 
    price, 
    status)
 values(
     'Kuru',
     'Kere',
     'Kakara',
     'Buku yang berisi First Impression',
     30,
     '2010/07/10 10:00:00',
     10000,
     'available'),
    ('Asak',
    'Asik',
    'Asa Asa',
    'Buku yang berisi Keraguan',
    112,
    '2011/11/11 02:22:22',
    22100,
    'available'),

-- Select Table --
select * from books;

-- Alias --
SELECT id as ID, author1 as A1, author2 as A2
FROM books;

-- Select Where --
select * from books where ID = 1;

-- Operator AND --
select * from books where ID = 1 and author1 = 'Kuru' ;

-- Operator OR --
select * from books where ID = 1 or author2 = 'Kara' ;

-- Operator NOT --
select * from books where not ID = 1; 

--- Order By ---
select * from books order by id asc;

--- Limit ---
select * from books
    -> limit 2;

--- Update ---
update books
set author1 = 'Koro', price =23400
where id = 1;

--- Delete Row ---
delete from books where id = 2;