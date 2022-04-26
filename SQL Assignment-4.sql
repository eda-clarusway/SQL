/* albums tablosundaki Title sutunu Faceless veya Let There Be Rock olan kayıtların 
albumid'lerini elde ederek tracks tablosunda bu id'lere eşit olan kayıtların bilgilerini 
SUBQUERY kullanarak listeyiniz. Listelemede trackid, name ve albumid bilgileri bulunmalıdır. */
--suquery kısmını bakıyoruz sonra * düzeltilecek
SELECT *
FROM albums
--WHERE Title = 'Faceless' or Title = 'Let There Be Rock'
--WHERE Title like 'Faceless' or Title like 'Let There Be Rock'
WHERE Title in ('Faceless', 'Let There Be Rock')

--cevabı subquery ile buluyoruz
SELECT TrackId, name, AlbumId
FROM tracks
WHERE AlbumId in ( SELECT AlbumId	FROM albums
					WHERE Title in ('Faceless', 'Let There Be Rock'));

/* albums tablosundaki Title sutunu Faceless veya Let There Be Rock olan kayıtların 
albumid'lerini elde ederek tracks tablosunda bu id'lere eşit olan kayıtların bilgilerini 
JOIN kullanarak listeyiniz.Listelemede trackid, name ve albumid bilgileri bulunmalıdır. */
-- küme ile 
SELECT 		t.TrackId, t.name, t.AlbumId
FROM		tracks t
JOIN		albums a
			ON t.AlbumId = a.AlbumId
WHERE		a.Title in ('Faceless', 'Let There Be Rock')

-- küme ile where -> AND
SELECT 		t.TrackId, t.name, t.AlbumId
FROM		tracks t
JOIN		albums a
			ON t.AlbumId = a.AlbumId AND a.Title in ('Faceless', 'Let There Be Rock')