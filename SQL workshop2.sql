/*12) 'Can Yayınları' tarafından basılan en ucuz kitabın yazarının adını getiren bir sorgu yazınız?*/--
 select a.author_name, b.book_name,min(b.price) as min_price,bt.book_type,p.publisher_name
from books b
join book_types bt
on b.book_type = bt.type_id
JOIN publishers p
on p.publisher_id = b.publisher_id
JOIN authors a
on a.author_id = b.author_id
where p.publisher_name = "Can Yayınları"; 