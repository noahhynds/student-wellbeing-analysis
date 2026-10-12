-- Inspect
SELECT *
FROM students
LIMIT 10;


-- Avg outcomes based by year

SELECT survey_year,
    ROUND(AVG(flourish), 2) AS average_flourish,
    ROUND(AVG(deprawsc), 2) AS average_deprawsc,
    ROUND(AVG(anx_score), 2) AS average_anxscore
FROM students
GROUP BY(survey_year);





-- Mental health outcomes by survey year
SELECT
    survey_year,
    COUNT(*) AS total_students,
    COUNT(flourish) AS n_flourish,
    COUNT(deprawsc) AS n_depression,
    COUNT(anx_score) AS n_anxiety,
    ROUND(AVG(flourish), 2) AS avg_flourish,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety
FROM students
GROUP BY survey_year
ORDER BY survey_year;



-- Financial stress current and mental health
SELECT
    fincur,
    COUNT(*) AS n_students,
    ROUND(AVG(flourish), 2) AS avg_flourish,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety
FROM students
WHERE fincur BETWEEN 1 AND 5
GROUP BY fincur
ORDER BY fincur;

-- Financial stress past and mental health
SELECT
    finpast,
    COUNT(*) AS n_students,
    ROUND(AVG(flourish), 2) AS avg_flourish,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety
FROM students
WHERE finpast BETWEEN 1 AND 5
GROUP BY finpast
ORDER BY finpast;
