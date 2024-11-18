-- Får fram antal rader (som len i python typ)
SELECT COUNT (*) FROM main.data_jobs;
-- Får fram minsta lönen och döper om namnet på kolumnen med alias (as)
SELECT
	MIN(salary_in_usd)
FROM
	main.data_jobs as min_salary_usd;
-- samma som ovan fast med flera aggregeringar
SELECT
	MIN(salary_in_usd) AS min_salary_usd,
	ROUND(AVG(salary_in_usd)) AS mean_salary_usd,
	MEDIAN(salary_in_usd) AS median_salary_usd,
	MAX(salary_in_usd) AS max_salary_usd,
FROM
	main.data_jobs;