--1-SORGU1: SATIS veya MUHASABE bölümlerinde çalışan personelin isimlerini ve bölümlerini, önce bölüm sonra isim sıralı olarak listeleyiniz

select b.bolum_id ,b.bolum_isim,p.personel_isim
from bolumler b
left JOIN personel p
on b.bolum_id = p.bolum_id
where b.bolum_isim =("MUHASEBE") or b.bolum_isim =("SATIS");


--

select b.bolum_id ,b.bolum_isim,p.personel_isim
from personel p 
JOIN bolumler b
on b.bolum_id = p.bolum_id
where b.bolum_isim in ("MUHASEBE" ,"SATIS")
--

--2-: SATIS, ISLETME ve DEPO bölümlerinde çalışan personelin isimlerini, 
--bölümlerini ve işe başlama tarihlerini isim sıralı olarak listeleyiniz.  
select p.personel_isim,p.ise_baslama,b.bolum_isim
from bolumler b
left JOIN personel p
on b.bolum_id = p.bolum_id
group by p.personel_isim;
--3-Tüm bölümlerde çalışan personelin isimlerini, bölüm isimlerini ve maaşlarını
-- bölüm ve maaş sıralı listeleyiniz.

SELECT  p.personel_isim,b.bolum_isim, p.maas
from bolumler b
left JOIN personel p
on b.bolum_id = p.bolum_id
group by b.bolum_isim, p.maas;

--4-SATIS  ve  MUDURLUK  bölümlerinde  çalışan  personelin  maaşları  2000'den  büyük 
--olanlarının isim, bölüm ve maaş bilgilerini bolüme ve isme göre sıralayarak listeleyiniz.

SELECT  p.personel_isim,b.bolum_isim, p.maas
from bolumler b
left JOIN personel p
on b.bolum_id = p.bolum_id
where p.maas in (select p.maas from personel where p.maas > 2000)
group by b.bolum_isim, p.personel_isim ;

--5-MUDUR'u Mesut veya Emine olan personelin bölümlerini, isimlerini, maaşlarını ve 
--mudur isimlerini maaş sıralı olarak (Çoktan aza) listeleyiniz
 select personel_isim *
 from personel
 where meslek = "MUDUR" and personel_isim in("Muzaffer","Emine");
 
 
SELECT  p.personel_isim,b.bolum_isim, p.maas
from bolumler b
left JOIN personel p
on b.bolum_id = p.bolum_id
where b.bolum_isim in ( select personel_isim like "m%" and   personel_isim like "Emi%" from personel where bolum_isim= "MUDUR" )
order by  p.maas DESC ;
