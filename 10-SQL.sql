-- 1. Tüm first_name verilerini sıralayalım (Birleşim – UNION ALL ile)
-- Tekrarsız:
SELECT first_name FROM actor
UNION
SELECT first_name FROM customer;

-- Tekrarlı (aynı isim birden fazla varsa onları da göster):
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer;


-- 2. Kesişen first_name verilerini sıralayalım (Kesişim – INTERSECT)
-- Tekrarsız:
SELECT first_name FROM actor
INTERSECT
SELECT first_name FROM customer;

-- Tekrarlı (aynı isimden birden fazla varsa, tüm eşleşmeleri getirmek için INNER JOIN kullanılmalı):
SELECT a.first_name
FROM actor a
INNER JOIN customer c ON a.first_name = c.first_name;

-- 3. Sadece actor tablosunda bulunan, customer tablosunda olmayan first_name verilerini sıralayalım (Fark – EXCEPT)
-- Tekrarsız:
SELECT first_name FROM actor
EXCEPT
SELECT first_name FROM customer;

-- Tekrarlı (aynı isimden kaç tane varsa, hepsi gelsin. NOT EXISTS kullanılır):
SELECT a.first_name
FROM actor a
WHERE NOT EXISTS (
    SELECT 1 FROM customer c WHERE c.first_name = a.first_name
);
