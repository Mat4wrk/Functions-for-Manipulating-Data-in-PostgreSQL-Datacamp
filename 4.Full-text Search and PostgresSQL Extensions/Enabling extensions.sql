# Enable the pg_trgm extension
-- Enable the pg_trgm extension
CREATE EXTENSION IF NOT EXISTS fuzzystrmatch;

# Now confirm that both fuzzystrmatch and pg_trgm are enabled by selecting all rows from the appropriate system table.
-- Select all rows extensions
SELECT *
FROM pg_extension;
