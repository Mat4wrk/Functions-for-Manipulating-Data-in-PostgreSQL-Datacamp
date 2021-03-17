# Concatenate the first_name and last_name columns separated by a single space followed by email surrounded by < and >.
-- Concatenate the first_name and last_name and email 
SELECT first_name || ' ' || last_name || ' <' || email || '>' AS full_email FROM customer

# Now use the CONCAT() function to do the same operation as the previous step.
-- Concatenate the first_name and last_name and email
SELECT CONCAT(first_name || ' ' || last_name || ' <' || email || '>') AS full_email FROM customer
