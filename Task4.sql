use library_db;
select * from Authors;
select * from Members;
select * from Books;
select * from Loans;
ALTER TABLE Books  
ADD Price DECIMAL(8,2);

UPDATE Books SET Price = 499.99 WHERE BookID = 105;
UPDATE Books SET Price = 999.50 WHERE BookID = 189;
UPDATE Books SET Price = 500.75 WHERE BookID = 194;
UPDATE Books SET Price = 399.00 WHERE BookID = 266;
UPDATE Books SET Price = 750.00 WHERE BookID = 420;

select count(*) from Books;

select max(Price) as Max_Price , min(Price) as Min_Price from Books;

select sum(Price) as Total_Price from Books;

select Avg(Price) as Average_Price from Books;

SELECT Genre, COUNT(*) AS books_in_genre
FROM Books
GROUP BY Genre;

insert into Books values(288,'The Silent Patient','Psychological Thriller',1,1999.98);

SELECT Genre, COUNT(*) AS book_count
FROM Books
GROUP BY Genre
HAVING COUNT(*) > 1;
