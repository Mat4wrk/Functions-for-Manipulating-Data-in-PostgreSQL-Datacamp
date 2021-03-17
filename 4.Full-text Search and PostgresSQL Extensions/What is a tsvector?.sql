# Select the film description and convert it to a tsvector data type.
-- Select the film description as a tsvector
SELECT to_tsvector(description)
FROM film;
