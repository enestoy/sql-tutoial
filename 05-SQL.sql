-- 1. Film ismi 'n' harfiyle biten en uzun 5 filmi getirir
SELECT title, length
FROM film
WHERE title LIKE '%n'         -- Film ismi 'n' harfi ile bitenler
ORDER BY length DESC          -- Uzunluktan büyükten küçüğe sırala
LIMIT 5;                      -- İlk 5 filmi getir

-- 2. Film ismi 'n' harfiyle biten en kısa filmlerden 6-10 arasındaki 5 filmi getirir
SELECT title, length
FROM film
WHERE title LIKE '%n'         -- Film ismi 'n' harfi ile bitenler
ORDER BY length ASC           -- Uzunluktan küçükten büyüğe sırala (en kısa filmler)
OFFSET 5                      -- İlk 5 kaydı atla (6. kayıttan başla)
LIMIT 5;                      -- Sonraki 5 kaydı getir (6-10. kayıtlar)

-- 3. store_id = 1 olan müşterilerden last_name'e göre azalan sıralama ile ilk 4 kişiyi getirir
SELECT customer_id, first_name, last_name, store_id
FROM customer
WHERE store_id = 1            -- Sadece mağaza 1'e ait müşteriler
ORDER BY last_name DESC       -- Soyadına göre Z'den A'ya sırala
LIMIT 4;                      -- İlk 4 müşteriyi getir
