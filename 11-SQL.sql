-- 1. Ortalama film uzunluğundan uzun olan film sayısı
SELECT COUNT(*) AS uzun_filmler_sayisi
FROM film
WHERE length > (
    SELECT AVG(length) FROM film
);

-- 2. En yüksek rental_rate değerine sahip film sayısı
SELECT COUNT(*) AS en_yuksek_kiralama_ucretli_film_sayisi
FROM film
WHERE rental_rate = (
    SELECT MAX(rental_rate) FROM film
);

-- 3. En düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri listele
SELECT *
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
  AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

-- 4. En fazla sayıda alışveriş yapan müşterileri sırala
SELECT 
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    COUNT(payment.payment_id) AS toplam_odeme_sayisi
FROM 
    payment
INNER JOIN 
    customer ON payment.customer_id = customer.customer_id
GROUP BY 
    customer.customer_id, customer.first_name, customer.last_name
ORDER BY 
    toplam_odeme_sayisi DESC;
