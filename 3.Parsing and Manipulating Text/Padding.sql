# Add a single space to the end or right of the first_name column using a padding function.
# Use the || operator to concatenate the padded first_name to the last_name column.
-- Concatenate the padded first_name and last_name 
SELECT 
	RPAD(first_name, LENGTH(first_name)+1) || last_name AS full_name
FROM customer;


# Now add a single space to the left or beginning of the last_name column using a different padding function than the first step.
# Use the || operator to concatenate the first_name column to the padded last_name.
-- Concatenate the first_name and last_name 
SELECT 
	first_name || LPAD(last_name, LENGTH(last_name)+1) AS full_name
FROM customer; 


# Add a single space to the right or end of the first_name column.
# Add the characters < to the right or end of last_name column.
# Finally, add the characters > to the right or end of the email column.
-- Concatenate the first_name and last_name 
SELECT 
	RPAD(first_name, LENGTH(first_name)+1) 
    || RPAD(last_name, LENGTH(last_name)+2, ' <') 
    || RPAD(email, LENGTH(email)+1, '>') AS full_email
FROM customer; 
