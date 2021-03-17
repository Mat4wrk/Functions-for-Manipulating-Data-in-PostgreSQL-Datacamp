# Select the title and description columns from the film table.
# Perform a full-text search on the title column for the word elf.
-- Select the title and description
SELECT title, description
FROM film
-- Convert the title to a tsvector and match it against the tsquery 
WHERE to_tsvector(title) @@ to_tsquery('elf');
