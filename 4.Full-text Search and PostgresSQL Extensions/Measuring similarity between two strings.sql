# Select the film title and description.
# Calculate the similarity between the title and description.
-- Select the title and description columns
SELECT 
  title, 
  description, 
  -- Calculate the similarity
  similarity(title, description)
FROM 
  film
