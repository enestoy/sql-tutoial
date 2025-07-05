-- 1. city ve country tablolarını LEFT JOIN ile birleştirerek şehir ve varsa karşılık gelen ülke isimlerini getir
SELECT 
    city.city AS sehir_adi,
    country.country AS ulke_adi
FROM 
    city
LEFT JOIN 
    country ON city.country_id = country.country_id;

-- Açıklama: city tablosundaki tüm şehirler listelenir. Eğer ülke eşleşmesi yoksa 'ulke_adi' NULL olur.

-- 2. customer ve payment tablolarını RIGHT JOIN ile birleştirerek ödeme ID'si ile birlikte müşteri isimlerini getir
SELECT 
    payment.payment_id,
    customer.first_name,
    customer.last_name
FROM 
    payment
RIGHT JOIN 
    customer ON payment.customer_id = customer.customer_id;

-- Açıklama: customer tablosundaki tüm müşteriler gösterilir. Eğer ödeme yapılmamışsa 'payment_id' NULL olur.

-- 3. customer ve rental tablolarını FULL JOIN ile birleştirerek kiralama ID'si ile müşteri isimlerini getir
SELECT 
    rental.rental_id,
    customer.first_name,
    customer.last_name
FROM 
    rental
FULL JOIN 
    customer ON rental.customer_id = customer.customer_id;

-- Açıklama: Hem customer hem de rental tablosundaki tüm veriler gelir. Eşleşmeyen satırlarda NULL değer olur.
