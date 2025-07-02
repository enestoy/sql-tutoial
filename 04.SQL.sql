-- 1. film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız
SELECT DISTINCT replacement_cost
FROM film
ORDER BY replacement_cost;

-- 2. film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
SELECT COUNT(DISTINCT replacement_cost) AS farkli_replacement_cost_sayisi
FROM film;

-- 3. film tablosunda bulunan film isimlerinden (title) 
-- kaç tanesi T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
SELECT COUNT(*) AS t_ile_baslayan_ve_g_ratingli_film_sayisi
FROM film
WHERE title LIKE 'T%' AND rating = 'G';

-- 4. country tablosunda bulunan ülke isimlerinden (country) 
-- kaç tanesi 5 karakterden oluşmaktadır?
SELECT COUNT(*) AS bes_karakterli_ulke_sayisi
FROM country
WHERE LENGTH(country) = 5;


-- 5. city tablosundaki şehir isimlerinin kaç tanesi 'R' veya 'r' karakteri ile biter?
SELECT COUNT(*) AS r_ile_biten_sehir_sayisi
FROM city
WHERE city ILIKE '%r';
