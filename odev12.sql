SELECT COUNT(length) FROM film
WHERE length > (SELECT AVG(length) FROM film); --489

SELECT COUNT(rental_rate) from film
WHERE rental_rate = (SELECT MAX(rental_rate) from film); --336

SELECT rental_rate, replacement_cost from film
WHERE rental_rate = (SELECT MIN(rental_rate) from film) AND replacement_cost = (SELECT MIN(replacement_cost) from film);

SELECT customer_id, COUNT(customer_id), SUM(amount) AS sum from payment
GROUP BY customer_id
ORDER BY sum DESC;