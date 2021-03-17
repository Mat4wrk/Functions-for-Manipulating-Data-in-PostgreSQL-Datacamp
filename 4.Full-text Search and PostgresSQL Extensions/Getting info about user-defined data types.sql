# Select the column_name, data_type, udt_name.
# Filter for the rating column in the film table.
-- Select the column name, data type and udt name columns
SELECT column_name, data_type, udt_name
FROM INFORMATION_SCHEMA.COLUMNS 
-- Filter by the rating column in the film table
WHERE table_name ='film' AND column_name = 'rating';


# Select all columns from the pg_type table where the type name is equal to mpaa_rating.
SELECT *
FROM pg_type 
WHERE typname='mpaa_rating'

