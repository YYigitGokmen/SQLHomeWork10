
--city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) 
--isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.

SELECT city.city_name, country.country_name
FROM city
LEFT JOIN country ON city.country_id = country.country_id;

--customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve 
--last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.

SELECT customer.first_name, customer.last_name, payment.payment_id
FROM payment
RIGHT JOIN customer ON payment.customer_id = customer.customer_id;

--customer tablosu ile rental tablosunda bulunan rental_id ile customer 
--tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.

SELECT customer.first_name, customer.last_name, rental.rental_id
FROM customer
LEFT JOIN rental ON customer.customer_id = rental.customer_id

UNION

SELECT customer.first_name, customer.last_name, rental.rental_id
FROM rental
RIGHT JOIN customer ON customer.customer_id = rental.customer_id;