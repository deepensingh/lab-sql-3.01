-- ## Instructions

-- ### Activity 1

-- 




-- Use similar method to get `inventory_id`, `film_id`, and `staff_id`.


-- ### Activity 2
-- 1. Use [dbdiagram.io](https://dbdiagram.io/home) or [draw.io](https://draw.io) to propose a new structure for the `Sakila` database.
-- 2. Define primary keys and foreign keys for the new database.

-- ![Sakila database](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/3.4-lab-sakila-normalization.png)

Use sakila;
-- 1. Drop column `picture` from `staff`.
Select * FROM staff; 

ALTER TABLE staff
DROP picture;

Select * FROM staff; 

-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly. 

SELECT * FROM CUSTOMER
WHERE first_name = 'TAMMY' AND last_name = 'SANDERS';

INSERT INTO staff (first_name, last_name, address_id, email, store_id, active, username, last_update)
VALUES
('Tammy', 'Sanders', '79','TAMMY.SANDERS@sakilacustomer.org', '2', '1', 'Tammy','2006-02-15 04:57:20');

Select * FROM staff;

-- 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the `rental_date` column in the `rental` table.
--    **Hint**: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information. For eg., you would notice that you need 
--                                                              `customer_id` information as well. To get that you can use the following query:
 -- ```sql
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
-- ```



