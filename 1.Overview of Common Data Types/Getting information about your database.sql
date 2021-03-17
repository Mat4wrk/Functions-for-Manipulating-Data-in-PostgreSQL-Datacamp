# Select all columns from the INFORMATION_SCHEMA.TABLES system database. Limit results that have a public table_schema.
 -- Select all columns from the TABLES system database
 SELECT * 
 FROM INFORMATION_SCHEMA.TABLES
 -- Filter by schema
 WHERE table_schema = 'public';
 
 
# Select all columns from the INFORMATION_SCHEMA.COLUMNS system database. Limit by table_name to actor
 -- Select all columns from the COLUMNS system database
 SELECT * 
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE table_name = 'actor';
