# Use NOW() to select the current timestamp with timezone.
-- Select the current timestamp
SELECT NOW();

# Select the current date without any time value.
-- Select the current date
SELECT ;

# Now, let's use the CAST() function to eliminate the timezone from the current timestamp.
--Select the current timestamp without a timezone
SELECT CAST( NOW() AS timestamp )

# Finally, let's select the current date
# Use CAST() to retrieve the same result from the NOW() function.
SELECT 
	-- Select the current date
	current_date,
    -- CAST the result of the NOW() function to a date
    CAST( NOW() AS date )
