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
GROUP BY finpast
ORDER BY finpast;


-- belonging and mental health
SELECT
    belong1,
    COUNT(*) AS n_students,
    ROUND(AVG(flourish), 2) AS avg_flourish,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety
FROM students
GROUP BY belong1
ORDER BY belong1;


-- racial discrimination and mental health
SELECT
    discrim_race,
    COUNT(*) AS n_students,
    ROUND(AVG(flourish), 2) AS avg_flourish,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety
FROM students
GROUP BY discrim_race
ORDER BY discrim_race;

-- cultural discrimination and mental health
SELECT
    discrim_culture,
    COUNT(*) AS n_students,
    ROUND(AVG(flourish), 2) AS avg_flourish,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety
FROM students
GROUP BY discrim_culture
ORDER BY discrim_culture;

-- gender discrimination and mental health
SELECT
    discrim_gender,
    COUNT(*) AS n_students,
    ROUND(AVG(flourish), 2) AS avg_flourish,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety
FROM students
GROUP BY discrim_gender
ORDER BY discrim_gender;


-- sexual discrimination and mental health
SELECT
    discrim_sexual,
    COUNT(*) AS n_students,
    ROUND(AVG(flourish), 2) AS avg_flourish,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety
FROM students
GROUP BY discrim_sexual
ORDER BY discrim_sexual;


-- alcohol consumption and mental health
SELECT
    alc_any,
    COUNT(*) AS n_students,
    ROUND(AVG(flourish), 2) AS avg_flourish,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety
FROM students
GROUP BY alc_any
ORDER BY alc_any;

-- E[outcomes | fincur, belong1]
-- Compare belonging levels within 
-- each current financial stress level
SELECT
    fincur,
    belong1,
    COUNT(*) AS n_students,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety,
    ROUND(AVG(flourish), 2) AS avg_flourish
FROM students
WHERE fincur BETWEEN 1 AND 5
  AND belong1 BETWEEN 1 AND 6
GROUP BY fincur, belong1
ORDER BY fincur, belong1;


-- E[outcomes | fincur, belong1]
-- Compare current financial stress levels 
-- within each belonging levels
SELECT
    belong1,
    fincur,
    COUNT(*) AS n_students,
    ROUND(AVG(deprawsc), 2) AS avg_depression,
    ROUND(AVG(anx_score), 2) AS avg_anxiety,
    ROUND(AVG(flourish), 2) AS avg_flourish
FROM students
WHERE fincur BETWEEN 1 AND 5
  AND belong1 BETWEEN 1 AND 6
GROUP BY belong1, fincur
ORDER BY belong1, fincur;