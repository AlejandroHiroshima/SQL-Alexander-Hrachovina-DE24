-- python 50000 < x < 100000
-- andra språk (x > 50000) && (x> 100000)

-- i SQL BETWEEN ... AND operator
SELECT
	*
FROM
	main.data_jobs dj
WHERE
	salary_in_usd BETWEEN 200000 AND 500000;

SELECT
	job_title,
	experience_level,
	employment_type,
	salary_in_usd*11.01/12 AS salary_sek_month
FROM
	main.data_jobs dj
WHERE
	salary_in_usd BETWEEN 10000 AND 500000
	AND job_title = 'Data Engineer'
	AND experience_level = 'Entry-level'
	AND employment_type = 'PT'
ORDER BY salary_sek_month
