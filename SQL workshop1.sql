/*11) 'Hikaye' türünde yazılmış olan en ucuz kitabın
 yayınevini getiren bir sorgu yazınız?*/
 
select b.book_name,min(b.price) as max_price,bt.book_type,p.publisher_name
from books b
join book_types bt
on b.book_type = bt.type_id
JOIN publishers p
on p.publisher_id = b.publisher_id
where bt.book_type = "Hikaye";
 
 
 
 
 