# Select the title and special features from the film table and compare the results between the two columns.
-- Select the title and special features column 
SELECT 
  title, 
  special_features
FROM film;

# Select all films that have a special feature Trailers by filtering on the first index of the special_features ARRAY.
-- Select the title and special features column 
SELECT 
  title, 
  special_features 
FROM film
-- Use the array index of the special_features column
WHERE special_features[1] = 'Trailers';
