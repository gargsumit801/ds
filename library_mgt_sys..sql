create database library_management_system;

use library_management_system;

create table Books (book_id int primary key ,title varchar(235) not null,
author varchar(235) not null,genre varchar(235),publication_date date,isbn varchar(50) not null,quantity_available int);

create table Authors (author_id int primary key,author_name varchar(255) not null);

create table Members (member_id  int primary key,member_name varchar(255),member_email varchar(255) not null,member_phone varchar(255));

create table Borrowings	(borrowing_id int primary key,
book_id int,
foreign key(book_id) references Books(book_id),
member_id int,
foreign key(member_id) references Members(member_id),
borrowing_date date,
return_date date,
is_returned boolean);

create table Publishers (publisher_id  int primary key,publisher_name varchar(255) not null,publisher_country varchar(255));

create table Book_Copies(copy_id  int primary key,book_id int,foreign key(book_id) references books(book_id),
copy_number int, conditions varchar(255), shelf_location varchar(255));

create table Authors_Books(author_book_id int primary key, author_id int,foreign key(author_id) references Authors(author_id),book_id int,foreign key(book_id) references Books(book_id));

create table Reviews (review_id  int primary key,book_id int, foreign key(book_id) references Books(book_id),member_id int, foreign key(member_id ) references Members(member_id ),rating float,review_text varchar(255),review_date date);

create table Transactions (transaction_id int primary key,member_id int,foreign key(member_id ) references members(member_id ),transaction_date date,transaction_type varchar(255),amount_paid float);

select * from books;
insert into books values (1,'The Name of the Wind', 'DAW Books','Fantasy','1997-06-26','9788700631625',5),
		(2,'It', 'Viking','classic','1995-02-25','9788700631626',3),
		(3,'The Green Mile', 'Signet Books','classic','1996-02-25','9788700631674',5),
		(4,'Dune', 'Chilton Books','Fantasy','1925-05-25','9788700631685',4),
		(5,'The Hobbit', 'George Allen & Unwin','Fiction','1932-02-27','9788700631586',2),
		(6,'Eragon', 'Alfred A. Knopf','Fiction','1940-01-15','9788700631123',1),
		(7,'A Wise Mans Fear', 'DAW Books','classic','1945-08-05','9788700631854',8),
		(8,'Harry Potter and the Philosophers Stone', 'Bloomsbury','Fiction','1955-06-07','9788705361674',7),
		(9,'Hard Boiled Wonderland and The End of the World', 'Shinchosa','Classic','1938-09-20','9785630631674',4),
		(10,'The Giving Tree', 'Harper and Row','Fantasy','1976-09-09','9788700656974',10),
		(11,'The Hitchhikers Guide to the Galaxy', 'Pan Books','Classic','1992-01-13','9584700631674',14),
		(12,'Brave New World', 'Chalto & Windus','Fiction','1998-02-14','9788700663574',4),
		(13,'The Princess Bride', 'Harcourt Brace Jovanovich','Classic','1964-10-25','9788869631674',1),
		(14,'Fight Club', 'W.W. Norton','Fantasy','1991-11-22','9788723631674',6),
		(15,'Holes', 'Scholastic','Classic','1918-02-23','9788708561674',3),
		(16,'Harry Potter and the Chamber of Secrets', 'Bloomsbury','Fantasy','1923-05-05','9788700451674',5),
		(17,'Harry Potter and the Prisoner of Azkaban', 'Bloomsbury','Fiction','1941-07-08','9788707561674',7),
		(18,'The Fellowship of the Ring', 'George Allen & Unwin','Fantasy','1949-02-19','9788700031674',9),
		(19,'A Game of Thrones', 'Bantam','Fantasy','1990-02-25','9788700632674',8),
		(20,'The Lost Tribe', 'Picador USA','Classic','1939-04-21','9788000631674',1);

insert into authors values (1, 'DAW Books'),
		(2, 'Viking'),
		(3, 'Signet Books'),
		(4, 'Chilton Books'),
		(5, 'George Allen & Unwin'),
		(6, 'Alfred A. Knopf'),
		(7, 'DAW Books'),
		(8, 'Bloomsbury'),
		(9, 'Shinchosa'),
		(10, 'Harper and Row'),
		(11, 'Pan Books'),
		(12, 'Chalto & Windus'),
		(13, 'Harcourt Brace Jovanovich'),
		(14, 'W.W. Norton'),
		(15, 'Scholastic'),
		(16, 'Bloomsbury'),
		(17, 'Bloomsbury'),
		(18, 'George Allen & Unwin'),
		(19, 'Bantam'),
		(20, 'Picador USA');
select * from authors;	

insert into Members values (1,'Joe Smith','joe@gmail.com','212-312-1234'),
		(2,'Jane Smith','jane@gmail.com','212-931-4124'),
		(3,'Tom Li','tom@gmail.com','734-902-7455'),
		(4,'Angela Thompson','angela@gmail.com','313-591-2122'),
		(5,'Harry Emnace','harry@gmail.com','412-512-5522'),
		(6,'Tom Haverford','haverford@gmail.com','212-631-3418'),
		(7,'Haley Jackson','haley@gmail.com','212-419-9935'),
		(8,'Michael Horford','michael@gmail.com','734-998-1513');
        
 select * from Borrowings;
 
 insert into Borrowings (borrowing_id,book_id,member_id,borrowing_date,return_date,is_returned) values
 (1,1,1,'2024-02-10','2024-02-20',true),
 (2,2,2,'2024-02-15','2024-02-25',false),
 (3,3,3,'2024-01-15','2024-01-25',true),
 (4,4,4,'2024-03-18','2024-03-28',true),
 (5,5,5,'2024-03-20','2024-03-30',true),
 (6,6,6,'2024-03-09','2024-03-19',false),
 (7,7,7,'2024-04-04','2024-04-14',true);
 
 insert into Publishers values ('1','Patrick Rothfuss','United States'),
		('2','Stephen King','United States'),
		('3','Stephen King','United kingdom'),
		('4','Frank Herbert','United States'),
		('5','J.R.R. Tolkien','Australia'),
		('6','Christopher Paolini','United kingdom'),
		('7','Patrick Rothfuss','United States'),
		('8','J.K. Rowling','United kingdom'),
		('9','Haruki Murakami','United States'),
		('10','Shel Silverstein','United States'),
		('11','Douglas Adams','Japan'),
		('12','Aldous Huxley','Australia'),
		('13','William Goldman','United States'),
		('14','Chuck Palahniuk','Australia'),
		('15','Louis Sachar','United States'),
		('16','J.K. Rowling','United States'),
		('17','J.K. Rowling','United States'),
		('18','J.R.R. Tolkien','United states'),
		('19','George R.R. Martin','United States'),
		('20','Mark Lee','Australia');
        
	select * from publishers;
    
    insert into Book_Copies
    values
    (1,1,001,'good','A1'),
    (2,2,002,'fair','B3'),
    (3,2,001,'good','A2'),
    (4,3,010,'fair','B3'),
    (5,8,005,'good','A3'),
    (6,5,003,'average','B1'),
    (7,4,007,'good','A2'),
    (8,1,008,'good','A2'),
    (9,4,005,'fair','A1');
    select * from book_copies;
    
    insert into Authors_Books values
    (1,1,1),
    (2,2,2),
    (3,3,3),
    (4,4,4),(5,5,5),(6,6,6),(7,7,7),
    (8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),
    (14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20);
    
 select * from Authors_Books;
 select * from members;
 
 insert into Reviews 
 values
 (1,1,1,4.5,"A classic masterpiece.",'2024-02-12'),
 (2,2,2,5.0,"Absolutely loved it!",'2024-02-25'),
 (3,3,3,4.1,'Superb','2024-01-20'),
 (4,4,4,3.0,'suspense is not occure','2024-03-25'),
 (5,5,5,3.9,'average reading','2024-03-26'),
 (6,6,6,2.5,'love to read','2024-03-16'),
 (7,7,7,5.0,'Absolutely loved it!','2024-04-13');
 select * from borrowings;
 
 insert into Transactions
 values
 (1,1,'2024-02-10','purchase',5000.30),
 (2,2,'2024-02-15','borrow',0.0),
 (3,3,'2024-01-15','purchase',8000.00),
 (4,4,'2024-03-18','return',2000.0),
 (5,5,'2024-03-20','purchase',4000.0),
 (6,6,'2024-03-09','borrow',0.0),
 (7,7,'2024-04-04','return',1000.0);
 select * from Transactions;
 
 --------- Q1 List all books borrowed by a specific member:
 
select books.title,members.member_name from borrowings 
inner join books on borrowings.book_id = books.book_id 
inner join members on members.member_id = borrowings.member_id;

--------- Q2 Find the most popular genres:

select * from books where genre = 'Classic';

--------- Q3 Identify books with the highest average rating:

select books.title,reviews.rating from reviews
inner join books 
on reviews.book_id = books.book_id 
where reviews.rating>(select avg(rating) from reviews) order by reviews.rating desc;

--------- Q4 List all members who have borrowed more than 5 books:

select members.member_name,book_copies.copy_number as borrowed_books from book_copies 
join members 
on book_copies.copy_id = members.member_id 
where copy_number>5;

--------- Q5 List all members who have borrowed less than 5 books:

select members.member_name,book_copies.copy_number as borrowed_books from book_copies 
join members 
on book_copies.copy_id = members.member_id 
where copy_number<5;

--------- Q6 Retrieve the top-rated books with at least 5 reviews:

select books.book_id,books.title,reviews.review_text from reviews inner join books
on reviews.book_id = books.book_id 
where reviews.rating >=5;

--------- Q7 Calculate the total revenue generated from book purchases:

select transaction_type,sum(amount_paid)as total_revenue from Transactions 
where transaction_type = 'purchase' 
group by transaction_type;

--------- Q8 List all books with their respective authors and publishers:

select books.title,books.author,Publishers.Publisher_name from Publishers 
inner join books 
on publishers.publisher_id = books.book_id;

--------- Q9 Find books that are currently available for borrowing:

select title,quantity_available from books where quantity_available is not null;

--------- Q10 Identify members who have overdue books:

select members.member_name,borrowings.is_returned from borrowings join members
on borrowings.member_id = members.member_id 
where borrowings.is_returned =0;

--------- Q11 List the top 10 most borrowed books:

select title,author from borrowings inner join books on borrowings.book_id = books.book_id limit 10;

--------- Q12 Calculate the average number of days a book is borrowed for:

select sum(datediff(return_date,borrowing_date) ) / count(member_id) as average_days ,member_id from borrowings group by member_id ;  -- avg days is 10

--------- Q13 Find the total number of books published in each year:

select  extract(year from publication_date) as publish_year,count(publication_date) from books group by publication_date;

--------- Q14 Identify members who have borrowed books more than once:

select member_name,count(book_id) from borrowings inner join members 
on borrowings.member_id = members.member_id 
group by member_name having count(book_id) >1 ;   
----- ans ----No one has been borrowed more than 1 books

--------- Q15 List all books with their respective authors and average ratings:

select books.title,books.author,reviews.rating from Reviews inner join books on reviews.book_id = books.book_id ;

--------- Q16 Calculate the total number of copies available for each book:

select book_id, sum(copy_number) as total_copies_available from book_copies 
group by book_id 
order by book_id;


--------- Q17 Create a view of transaction table and provide privilege to another user. 
--------- The user can view only member id and transaction date and privilege 
--------- should be to select id who made transaction on any specific date.

create view transaction as 
select member_id,transaction_date,transaction_id from transactions;
select * from transaction;
create user 'myuser2'@'localhost' IDENTIFIED by 'sumit1234';
grant select on library_management_system.transaction to 'myuser2'@'localhost';
revoke select on library_management_system.transaction from 'myuser2'@'localhost';

