# Truncate the rental_date field by year.
-- Truncate rental_date by year
SELECT DATE_TRUNC('year', rental_date) AS rental_year
FROM rental;


# Now modify the previous query to truncate the rental_date by month.
-- Truncate rental_date by month
SELECT DATE_TRUNC('month', rental_date) AS rental_month
FROM rental;


# Let's see what happens when we truncate by day of the month.
-- Truncate rental_date by day of the month 
SELECT DATE_TRUNC('day', rental_date) AS rental_day 
FROM rental;


# Finally, count the total number of rentals by rental_day and alias it as rentals.
SELECT 
  DATE_TRUNC('day', rental_date) AS rental_day,
  -- Count total number of rentals 
  COUNT(rental_id) AS rentals
FROM rental
GROUP BY 1;
