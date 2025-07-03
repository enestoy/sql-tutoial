-- 1. rental_rate sütunundaki değerlerin ortalaması nedir?
SELECT AVG(rental_rate) AS ortalama_rental_rate
FROM film;
-- Bu sorgu, film tablosundaki tüm filmlerin kira ücretinin (rental_rate) ortalamasını verir.

-- 2. film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
SELECT COUNT(*) AS c_ile_baslayan_film_sayisi
FROM film
WHERE title LIKE 'C%';
-- 'C%' ifadesi, film adının C harfiyle başlamasını ifade eder. 
-- COUNT(*) ifadesi ise bu koşula uyan film sayısını verir.

-- 3. rental_rate değeri 0.99 olan en uzun (length) film kaç dakikadır?
SELECT MAX(length) AS en_uzun_film_suresi
FROM film
WHERE rental_rate = 0.99;
-- rental_rate'i 0.99 olan filmler içinden en uzun (length) olanın süresini getirir.

-- 4. uzunluğu 150 dakikadan büyük olan filmlerin kaç farklı replacement_cost değeri vardır?
SELECT COUNT(DISTINCT replacement_cost) AS farkli_replacement_cost_sayisi
FROM film
WHERE length > 150;
-- 150 dakikadan uzun filmler içinden farklı replacement_cost değerlerinin sayısını verir.
-- DISTINCT ifadesi aynı değeri tekrar saymamak için kullanılır.
