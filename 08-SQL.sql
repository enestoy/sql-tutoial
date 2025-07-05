-- 1. city ve country tablolarını INNER JOIN ile birleştirerek şehir ve ülke isimlerini getir
SELECT 
    city.city AS sehir_adi,
    country.country AS ulke_adi
FROM 
    city
INNER JOIN 
    country ON city.country_id = country.country_id;

-- 2. customer ve payment tablolarını INNER JOIN ile birleştirerek ödeme ID'si ile birlikte müşteri isimlerini getir
SELECT 
    payment.payment_id,
    customer.first_name,
    customer.last_name
FROM 
    payment
INNER JOIN 
    customer ON payment.customer_id = customer.customer_id;

-- 3. customer ve rental tablolarını INNER JOIN ile birleştirerek kiralama ID'si ile birlikte müşteri isimlerini getir
SELECT 
    rental.rental_id,
    customer.first_name,
    customer.last_name
FROM 
    rental
INNER JOIN 
    customer ON rental.customer_id = customer.customer_id;
