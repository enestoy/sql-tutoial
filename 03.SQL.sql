-- 1. country tablosunda bulunan country sütunundaki ülke isimlerinden
-- 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız
SELECT country
FROM country
WHERE country LIKE 'A%a';

-- Açıklama: 
-- 'A%a' deseniyle A harfiyle başlayan ve a harfiyle biten ülke adlarını getiriyoruz.

-- 2. country tablosunda bulunan country sütunundaki ülke isimlerinden
-- en az 6 karakterden oluşan ve sonu 'n' karakteri ile bitenleri sıralayınız
SELECT country
FROM country
WHERE LENGTH(country) >= 6
  AND country LIKE '%n';

-- Açıklama: 
-- LENGTH(country) >= 6 ile 6 veya daha fazla karakterli ülkeleri,
-- LIKE '%n' ile 'n' harfiyle bitenleri filtreliyoruz.

-- 3. film tablosunda bulunan title sütunundaki film isimlerinden
-- en az 4 adet büyük ya da küçük harf fark etmeksizin 'T' karakteri içerenleri sıralayınız
SELECT title
FROM film
WHERE LENGTH(REGEXP_REPLACE(LOWER(title), '[^t]', '', 'g')) >= 4;

-- Açıklama:
-- title'daki tüm harfleri küçük harfe çeviriyoruz (LOWER),
-- sadece 't' harflerini bırakıyoruz (REGEXP_REPLACE ile diğerlerini temizliyoruz),
-- sonra geri kalan karakterlerin uzunluğu 4 veya daha fazlaysa sonucu getiriyoruz.
-- Bu sayede hem 'T' hem 't' harfini saymış oluyoruz.

-- 4. film tablosunda bulunan tüm sütunlardaki verilerden
-- title 'C' karakteri ile başlayan VE length > 90 VE rental_rate = 2.99 olan verileri sıralayınız
SELECT *
FROM film
WHERE title LIKE 'C%'
  AND length > 90
  AND rental_rate = 2.99;

-- Açıklama:
-- title LIKE 'C%' ifadesiyle 'C' harfiyle başlayan filmleri alıyoruz.
-- length > 90 ve rental_rate = 2.99 olanlarla birlikte filtreliyoruz.
