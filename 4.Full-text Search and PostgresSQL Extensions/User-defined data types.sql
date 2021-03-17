# Create a new enumerated data type called compass_position.
# Use the four positions of a compass as the values.
-- Create an enumerated data type, compass_position
CREATE TYPE compass_position AS ENUM (
  	-- Use the four cardinal directions
  	'North', 
  	'Sounth',
  	'East', 
  	'West'
);

# Verify that the new data type has been created by looking in the pg_type system table.
-- Confirm the new data type is in the pg_type system table
SELECT typname, typcategory
FROM pg_type
WHERE typname='compass_position';
