-- 1.
select name, Composer from tracks;

-- 2.
select * FROM tracks;

-- 3.
select DISTINCT Composer from tracks;

-- 4.
SELECT DISTINCT AlbumId, MediaTypeId from tracks;

-- 5.
SELECT name, TrackId from tracks where composer ="Jorge Ben";

-- 6.
select * from invoices where total >25;

-- 7.
select * from invoices where total <15 limit 5;
 
-- 8.
select * from invoices where total>10 order by total DESC limit 2;  

-- 9.
select * from invoices where BillingCountry <> "Canada"
order by total ASC limit 10;

-- 10.
select  InvoiceId,CostomerId,total from invoices
order by costomerId ASC,total DESC;

-- 11.
select name from tracks where name like "B%S";

-- 12.
select InvoiceDate from invoices where InvoiceDate between "2008-01-01" and "2011-12-31" order by InvoiceDate desc limit 1;
 
-- 13.
select FirstName,LastName from customers where country in ("Belgium","Norway");

-- 14.
select composer,name from tracks where composer like "%Zappa%";

-- 15.
select count(*) as abc 
from tracks ;

-- 16.
select count(DISTINCT composer) as abc 
from tracks ;

-- 17.
select AlbumId, count(*)as Abc FROM tracks group by AlbumId order by Abc desc;

-- 18.
SELECT name, min(Milliseconds) FROM tracks ;
select name,max(Milliseconds) from tracks;

-- 19.
select * from tracks where Milliseconds< (SELECT avg (Milliseconds)
FROM tracks);

-- 20.
select composer, count(*)
from tracks 
group by Composer;

-- 21.



