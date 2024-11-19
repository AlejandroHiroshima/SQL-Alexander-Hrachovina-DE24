-- DDL Data definition language
--SKAPAR NY KOLUMN MED BOOL SOM HAR 'FALSE' SOM DEFAULT
ALTER TABLE database.duckdb ADD COLUMN learnt BOOLEAN DEFAULT false;
-- DROP TAR BORT KOLUMN
ALTER TABLE table_name DROP COLUMN column_name;
-- RENAME BYTER NAMN PÅ KOLUMN
ALTER TABLE table_name RENAME COLUMN old_column_name TO new_column_name;