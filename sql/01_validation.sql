-- Verify data has been properly cleaned and combined
-- make sure it is reliable

-- inspect
SELECT *
FROM students
LIMIT 5;

-- Total number of observations
SELECT COUNT(*) AS total_rows
FROM students;


-- Number of observations by year
SELECT survey_year,
    COUNT(*) AS total_rows
FROM students
GROUP BY survey_year;


-- Mising value count for each column
SELECT
    SUM(flourish IS NULL) 
    AS null_count_flourish,
    SUM(deprawsc IS NULL) 
    AS null_count_deprawsc,
    SUM(anx_score IS NULL) 
    AS null_count_anx_score,
    SUM(fincur IS NULL) 
    AS null_count_fincur,
    SUM(finpast IS NULL) 
    AS null_count_finpast,
    SUM(belong1 IS NULL) 
    AS null_count_belong1,
    SUM(discrim_race IS NULL) 
    AS null_count_discrim_race,
    SUM(discrim_culture IS NULL) 
    AS null_count_discrim_culture,
    SUM(discrim_gender IS NULL) 
    AS null_count_discrim_gender,
    SUM(discrim_sexual IS NULL) 
    AS null_count_discrim_sexual,
    SUM(alc_any IS NULL) 
    AS null_count_alc_any,
    SUM(age IS NULL) 
    AS null_count_age,
    SUM(international IS NULL) 
    AS null_count_international,
    SUM(educ_par1 IS NULL) 
    AS null_count_educ_par1,
    SUM(educ_par2 IS NULL) 
    AS null_count_educ_par2,
    SUM(enroll IS NULL) 
    AS null_count_enroll,
    SUM(nrweight IS NULL) 
    AS null_count_nrweight,
    SUM(survey_year IS NULL) 
    AS null_count_survey_year
FROM students;

-- Missing percentages by year

-- Min, max, avg for age
SELECT MIN(age) AS min_age,
    MAX(age) AS max_age,
    AVG(age) AS avg_age
FROM students;