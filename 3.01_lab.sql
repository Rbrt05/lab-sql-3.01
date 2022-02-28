
USE sakila;

# 1. Drop column picture from staff.

SELECT * FROM sakila.staff;

ALTER TABLE sakila.staff
DROP COLUMN picture;

SELECT * FROM sakila.staff;

# 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

#Check needed values
SELECT * FROM sakila.staff;

#Check available values
SELECT * FROM sakila.customer
WHERE first_name= 'TAMMY';

#Add values to the respective columns
INSERT INTO sakila.staff
(first_name, last_name, address_id, store_id, active, username, last_update) 
VALUES 
('Tammy','Sanders', 79, 2, 1, 'Tammy', '2006-02-15 04:57:20');

#Check whether it looks good or not
SELECT * FROM sakila.staff;

/* 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. 
You can use current date for the rental_date column in the rental table. 
Hint: Check the columns in the table rental and see what information you would need to add there. 
You can query those pieces of information. For eg., you would notice that you need customer_id information as 
well. To get that you can use the following query:
*/

# Check what info is needed -> rental_date, inventory_id, staff_id, last_update
SELECT * FROM sakila.rental;

# WUery relevant information
SELECT * FROM film as f
JOIN Inventory as i
ON f.film_id = i.film_id
WHERE TITLE = 'Academy Dinosaur';

SELECT * FROM sakila.customer
WHERE first_name= 'Charlotte' and last_name='Hunter';


# Update data
INSERT INTO sakila.rental
(rental_date, inventory_id, customer_id, staff_id, last_update) 
VALUES 
('2022-02-28 12:10:20', 1, 130, 1, '2006-02-15 21:30:53');

SELECT * FROM sakila.rental
WHERE customer_id = 130;


# Activity 2 
SELECT * FROM film as f;

#LINK: https://dbdiagram.io/d/621d3b7a54f9ad109a353a14
