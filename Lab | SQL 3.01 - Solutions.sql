-- Instructions sakila2
-- Activity 1
USE sakila2;
-- Drop column picture from staff.
ALTER TABLE staff
DROP COLUMN picture;

-- A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
SELECT * FROM sakila2.staff;
SELECT * FROM sakila2.customer;
INSERT INTO staff(staff_id,first_name,last_name,address_id,email,store_id,active,username,password,last_update)
VALUES
('3','TAMMY','SANDERS','79','TAMMY.SANDERS@sakilacustomer.org','2','1','Tammy',NULL,'2021-04-05 17:03:42');

-- Select customer_id from sakila.customer, Where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
SELECT customer_id FROM sakila2.customer
WHERE first_name = 'CHARLOTTE' AND last_name = 'HUNTER';

-- Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information. For eg., you would notice that you need customer_id information as well. To get that you can use the following query:
SELECT * from sakila2.rental;
SELECT * from sakila2.film;

SELECT customer_id FROM sakila2.customer
WHERE first_name = 'CHARLOTTE' AND last_name = 'HUNTER';

INSERT INTO inventory(inventory_id,film_id,store_id,last_update)
VALUES
(4582,1,1,'2021-04-05 16:59:00');

INSERT INTO rental(rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
VALUES
('2021-04-05 17:00:00', 4582, 130, NULL, 1, '2021-04-05 17:00:00');

-- Use similar method to get inventory_id, film_id, and staff_id.
SELECT film_id
FROM film
WHERE title = 'Academy Dinosaur';

SELECT inventory_id
FROM inventory
WHERE film_id = 1 AND last_update = '2021-04-05 16:59:00';

SELECT staff_id
FROM rental
WHERE inventory_id = 4582;

