-- 1. film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
SELECT rating, COUNT(*) AS film_sayisi
FROM film
GROUP BY rating;
-- Bu sorgu, film tablosundaki filmleri rating (derecelendirme) sütununa göre gruplar
-- ve her grupta kaç film olduğunu gösterir.

-- 2. film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda 
-- film sayısı 50'den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
SELECT replacement_cost, COUNT(*) AS film_sayisi
FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50
ORDER BY film_sayisi DESC;
-- GROUP BY ile replacement_cost'a göre gruplama yapılır.
-- HAVING COUNT(*) > 50 ile yalnızca 50'den fazla filme sahip gruplar filtrelenir.
-- ORDER BY film_sayisi DESC ile en yüksekten en düşüğe doğru sıralanır.

-- 3. customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir?
SELECT store_id, COUNT(*) AS musteri_sayisi
FROM customer
GROUP BY store_id;
-- customer tablosundaki müşteriler store_id'ye göre gruplanır.
-- Her mağazada (store_id) kaç müşteri olduğu sayılır.

-- 4. city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra 
-- en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.
SELECT country_id, COUNT(*) AS sehir_sayisi
FROM city
GROUP BY country_id
ORDER BY sehir_sayisi DESC
LIMIT 1;
-- country_id'ye göre şehirler gruplanır.
-- ORDER BY ile en fazla şehir sayısına sahip ülke en üste getirilir.
-- LIMIT 1 ile sadece en fazla şehir sayısına sahip olan ülke gösterilir.
