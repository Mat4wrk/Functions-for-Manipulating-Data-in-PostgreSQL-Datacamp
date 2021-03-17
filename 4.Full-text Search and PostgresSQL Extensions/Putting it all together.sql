# Select the title and description for all DVDs from the film table.
# Perform a full-text search by converting the description to a tsvector and match it to the phrase 'Astounding & Drama' using a tsquery in the WHERE clause.
-- Select the title and description columns
SELECT  
  title, 
  description 
FROM 
  film
WHERE 
  -- Match "Astounding Drama" in the description
  to_tsvector(description) @@
  to_tsquery('Astounding & Drama');
  

# Add a new column that calculates the similarity of the description with the phrase 'Astounding Drama'.
# Sort the results by the new similarity column in descending order.
SELECT 
  title, 
  description, 
  -- Calculate the similarity
  similarity(description, 'Astounding Drama')
FROM 
  film 
WHERE 
  to_tsvector(description) @@ 
  to_tsquery('Astounding & Drama') 
ORDER BY 
	similarity(description, description) DESC;


