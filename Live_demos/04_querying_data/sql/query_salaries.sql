SELECT * FROM data_jobs;

-- namespace. Bättre att skriva såhär. Ger i detta fall samma resultat som ovan
SELECT * FROM main.data_jobs;
-- Fully qualified name
SELECT * FROM salaries.main.data_jobs;
-- Hur man får fram bara rader
SELECT * FROM main.data_jobs LIMIT 10;
-- Hur man får fram bara vissa specifierade kolumner
SELECT work_year, salary_in_usd, job_title FROM main.data_jobs 

SELECT * EXCLUDE(salary, employee_residence, work_year) FROM main.data_jobs dj; 

