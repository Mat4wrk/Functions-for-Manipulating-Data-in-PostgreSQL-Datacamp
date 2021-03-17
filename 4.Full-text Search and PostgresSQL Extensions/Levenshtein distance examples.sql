# Select the film title and film description.
# Calculate the levenshtein distance for the film title with the string JET NEIGHBOR.
-- Select the title and description columns
SELECT  
  title, 
  description, 
  -- Calculate the levenshtein distance
  LEVENSHTEIN(title, 'JET NEIGHBOR') AS distance
FROM 
  film
ORDER BY 3
