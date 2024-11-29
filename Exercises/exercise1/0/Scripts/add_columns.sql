-- c and d adding columns

ALTER TABLE main.cleaned_salaries
ADD COLUMN salary_sek_yearly INTEGER;

ALTER TABLE main.cleaned_salaries
ADD COLUMN salary_sek_monthly INTEGER;

DESC TABLE cleaned_salaries;

-- E

ALTER TABLE main.cleaned_salaries
ADD COLUMN salary_level ENUM('Low', 'Medium', 'High', 'Insanely high');

