# Select the title and inventory_id columns from the film and inventory tables in the database.
-- Select the film title and inventory ids
SELECT 
	f.title, 
  i.inventory_id
FROM film AS f 
	-- Join the film table to the inventory table
	INNER JOIN inventory AS i ON f.film_id=i.film_id
  
  
# inventory_id is currently held by a customer and alias the column as held_by_cust
-- Select the film title, rental and inventory ids
SELECT 
	f.title, 
  i.inventory_id,
    -- Determine whether the inventory is held by a customer
    inventory_held_by_customer(i.inventory_id) AS held_by_cust
FROM film as f 
	-- Join the film table to the inventory table
	INNER JOIN inventory AS i ON f.film_id=i.film_id 
  

# Now filter your query to only return records where the inventory_held_by_customer() function returns a non-null value.
-- Select the film title and inventory ids
SELECT 
	f.title, 
    i.inventory_id,
    -- Determine whether the inventory is held by a customer
    inventory_held_by_customer(i.inventory_id) as held_by_cust
FROM film as f 
	INNER JOIN inventory AS i ON f.film_id=i.film_id 
WHERE
	-- Only include results where the held_by_cust is not null
    inventory_held_by_customer(i.inventory_id)IS NOT NULL
