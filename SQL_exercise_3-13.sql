--QUESTION 1
--How many actors are there with the last name ‘Wahlberg’?
SELECT*
FROM actor
WHERE last_name LIKE 'Wahlberg';
-- ANSWER - Nick and Daryl

--QUESTION 2
--How many payments were made between $3.99 and $5.99?
SELECT*
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
--ANSWER - see table

--QUESTION 3
--What films have exactly 7 copies? (search in inventory)
SELECT film_id
FROM inventory
GROUP BY film_id
HAVING COUNT(film_id) = 7;
--ANSWER - see table

--QUESTION 4
--How many customers have the first name ‘Willie’?
SELECT*
FROM actor
WHERE first_name LIKE 'Willie';
--ANSWER - There are none

--QUESTION 5
--What store employee (get the id) sold the most rentals (use the rental table)?
SELECT staff_id, SUM(inventory_id)
FROM rental
GROUP BY staff_id;
--Answer:
--1	18422294
--2	18348028

--QUESTION 6
--How many unique district names are there?
SELECT COUNT(district)
FROM address
GROUP BY district
HAVING COUNT(*) = 1
--ANSWER - 273

--QUESTION 7
--What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(*)
FROM film_actor
GROUP BY film_id
ORDER BY count DESC;
--ANSWER - 508

--QUESTION 8
--From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT last_name, store_id
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1;
--ANSWER - 13

--QUESTION 9
--How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
SELECT COUNT(amount)
FROM payment
WHERE customer_id  BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(customer_id)  > 250
ORDER BY COUNT(customer_id)DESC;
-- ANSWER - 3

--QUESTION 10
--Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT rating, COUNT(*)
FROM film
GROUP BY rating 
ORDER BY count DESC;
--ANSWER 5 categories and PG-13 has the most movies
