CREATE TABLE IF NOT EXISTS data_jobs AS (SELECT * FROM read_csv_auto('data/salaries.csv'));

-- Räcker om man kör denna fil en gång, sen kan man tillomed stänga denna flik, eftersom datan finns då i databasen